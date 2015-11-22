<?php
	include_once('class_MYSQLI_connection.php');
	class Student extends MYSQLI_connection{
		//set attributes as needed
		//attributes of student info
		public $studId;
		public $fullName;
		public $contact;
		public $gender;
		public $course;
		public $major;
		public $yearLevel;
		public $memtypeId;
		public $subStart;
		public $subEnd;

		//function to retrieved all relevant info about the student
		//search function by UserId
		public function getStudentInfo($prId){
			$success = false;
			$qry = "SELECT u.id_number, concat(u.lname, ', ', u.fname,' ', u.mname) as fullname, sInfo.gender, IFNULL(sInfo.contact,' - ') as contact, (SELECT course_name FROM tbl_course_prog WHERE id = sInfo.course) as course, (SELECT major_name FROM tbl_major WHERE id =sInfo.major)as major, sInfo.year_level FROM tbl_students_info sInfo LEFT JOIN tbl_users u ON u.id = sInfo.student WHERE sInfo.student = '$prId';";
			$result = $this->con->query($qry);
			if ($result){
				//check if the resulting table is not empty
				if ($result->num_rows>0) {
					$success = true;
					$row = $result->fetch_assoc();
					$this->studId = $row['id_number'];
					$this->fullName = $row['fullname'];
					$this->gender = $row['gender'];
					$this->contact = $row['contact'];
					$this->course = $row['course'];
					$this->major = $row['major'];
					$this->yearLevel = $row['year_level'];
				}
			}else{
				$this->showError(3, 0);
			}
			return $success;
		}

		//load the subjects enrolled by the student
		public function loadClasslist($prUser){
			$qry = "SELECT s.* FROM (SELECT co.subject FROM (SELECT offering FROM tbl_classlist WHERE student = $prUser) as q1, tbl_course_offerings as co WHERE q1.offering = co.id) as q2, tbl_subjects as s WHERE q2.subject = s.id;";
			$result = $this->con->query($qry);
			if ($result) {
				if ($result->num_rows>0) {
					while ($row1 = $result->fetch_assoc()) {
						echo "<option value='$row1[id]'>".$row1['sub_code']." ".$row1['sub_name']."</option>";
					}
				}else{
					echo "<option>No Subjects Recorded</option>";
				}
				
			}else{
				$this->showError(3, 0);
			}
		}

		//get subject code and name for display
		public function getSubjectInfo($prSubject){
			$qry = "SELECT DISTINCT sub_code, sub_name FROM tbl_subjects WHERE id = $prSubject";
			$result = $this->con->query($qry);
			if ($qry) {
				if($result->num_rows>0){
				$row = $result->fetch_assoc();
				return "<b>".$row['sub_code']." ".$row['sub_name']."</b>";
				}else{
					return "No subject choosen";
				}
			}else{
				$this->showError(3, 0);
			}
		}

		//

		//get the time schedule of the selected subject if subject is available today
		public function getTime($prSubject, $prUser){
			$success = false;
			$qry="SELECT CONCAT(LPAD(FLOOR(HOUR_FROM_24), '2', '0'), ':', LPAD (FLOOR(MOD(HOUR_FROM_24, 1)*60), '2', '1'), ':00')as strtime, CONCAT(LPAD(FLOOR(HOUR_TO_24), '2', '0'), ':', LPAD (FLOOR(MOD(HOUR_TO_24, 1)*60), '2', '1'), ':00') as endtime from tbl_course_sched WHERE offering = (SELECT co.id FROM tbl_course_offerings co, tbl_classlist cl WHERE cl.offering = co.id AND cl.student = $prUser AND co.subject = $prSubject) AND WEEK_DAY = date('N');"; //actual
			//$qry="SELECT CONCAT(LPAD(FLOOR(HOUR_FROM_24), '2', '0'), ':', LPAD (FLOOR(MOD(HOUR_FROM_24, 1)*60), '2', '1'), ':00')as strtime, CONCAT(LPAD(FLOOR(HOUR_TO_24), '2', '0'), ':', LPAD (FLOOR(MOD(HOUR_TO_24, 1)*60), '2', '1'), ':00') as endtime from tbl_course_sched WHERE offering = (SELECT co.id FROM tbl_course_offerings co, tbl_classlist cl WHERE cl.offering = co.id AND cl.student = $prUser AND co.subject = $prSubject) AND WEEK_DAY = 2;"; //tester
			$result = $this->con->query($qry);
			if ($result){
				if ($result->num_rows>0) {
					$success = true;
					$row = $result->fetch_assoc();
					$this->subStart = $row['strtime'];
					$this->subEnd = $row['endtime'];
				}
			}else{
				$this->showError(3, 0);
			}
			return $success;
		}

		//check if attendance is already open
		public function isAttendanceOpen($start, $end){
			$success = false;
			$qry = "SELECT CURRENT_TIME() BETWEEN '$start' AND '$end';"; //actual
			//$qry = "SELECT '12:15:00' BETWEEN '$start' AND '$end';"; //tester
			$result = $this->con->query($qry);
			if ($result) {
				$row = $result->fetch_array();
				if ($row['0']==1) {
					$success = true;
				}
			}else{

			}
			return $success;
		}

		//check if attendance is already taken
		public function isAttendanceDone($prUser, $prSubject){
			$success = false;
			$qry = "SELECT id FROM tbl_attendance WHERE a_date = (SELECT CURRENT_DATE()) AND student = $prUser AND offering = (SELECT co.id FROM tbl_course_offerings co, tbl_classlist cl WHERE cl.offering = co.id AND cl.student = $prUser AND co.subject = $prSubject);";
			$result = $this->con->query($qry);
			if ($result) {
				if ($result->num_rows>0) {
					$success = true;
				}
			}else{
				$this->showError(3, 0);
			}
			return $success;
		}

		//get attendance score
		public function attendanceScore($start){
			$qry  ="SELECT TIME_TO_SEC(TIMEDIFF('(SELECT CURRENT_TIME())', '$start'))/60 attend;";//actual
			//$qry  ="SELECT TIME_TO_SEC(TIMEDIFF('12:50:00', '$start'))/60 attend;";//tester
			$result = $this->con->query($qry);
			if ($result) {
				$row = $result->fetch_array();
				if ($row[0]<=15) {
					return 5;
				}else{
					return 3;
				}
			}else{
				$this->showError(3, 0);
			}
		}

		//record attendance
		public function recordAttendance($prUser, $prSubject, $prScore){
			$success = false;
			$qry = "INSERT INTO tbl_attendance (student, offering, g_term, a_date, a_time, point, terminal_ip, terminal_host) VALUES($prUser, (SELECT co.id FROM tbl_course_offerings co, tbl_classlist cl WHERE cl.offering = co.id AND cl.student = $prUser AND co.subject = $prSubject), 3, CURRENT_DATE(), CURRENT_TIME(), $prScore, 'test_ip','test_host');";
			$result = $this->con->query($qry);
			if ($result) {
				$success = true;
			}else{
				$this->showError(5, 0);
			}
			return $success;
		}

		//display attendance record for the subject
		public function listAttendance($prUser, $prSubject){
			$qry = "SELECT * FROM tbl_attendance WHERE student = $prUser AND offering = (SELECT co.id FROM tbl_course_offerings co, tbl_classlist cl WHERE cl.offering = co.id AND cl.student = $prUser AND co.subject = $prSubject)";
			$result = $this->con->query($qry);
			if ($result) {
				return $result;
			}else{
				$this->showError(3, 0);
			}
		}


		public function recordQuizScore(){

		}

		public function viewScores(){

		}

		#load class information to be displayed
		public function viewClassInfo($prSubject, $prUser){
			$qry = "SELECT  DISTINCT  q4.*, q5.time FROM (SELECT q3.*,GROUP_CONCAT(sc.WEEK_DAY) as days FROM (SELECT s.*, q2.offering, q2.section FROM (SELECT co.subject, co.section, q1.offering FROM (SELECT offering FROM tbl_classlist WHERE student = $prUser) as q1, tbl_course_offerings as co WHERE q1.offering = co.id) as q2, tbl_subjects as s WHERE q2.subject = s.id AND q2.subject = $prSubject) as q3 LEFT JOIN tbl_course_sched as sc ON q3.offering = sc.offering)as q4, (SELECT CONCAT(CONCAT(LPAD(FLOOR(CASE WHEN HOUR_FROM_24>12 THEN HOUR_FROM_24-12 ELSE HOUR_FROM_24 END), '2', '0'), ':', LPAD (FLOOR(MOD(HOUR_FROM_24, 1)*60), '2', '1'), ':00'),' to ', CONCAT(LPAD(FLOOR(CASE WHEN HOUR_TO_24>12 THEN HOUR_TO_24-12 ELSE HOUR_TO_24 END), '2', '0'), ':', LPAD (FLOOR(MOD(HOUR_TO_24, 1)*60), '2', '1'), ':00')) as time from tbl_course_sched WHERE offering = (SELECT co.id FROM tbl_course_offerings co, tbl_classlist cl WHERE cl.offering = co.id AND cl.student = $prUser AND co.subject = $prSubject)) as q5;";
			$result = $this->con->query($qry);
			if ($result) {
				return $result;
			}else{
				$this->showError(3, 0);
			}
			return $success;
		}
	}
?>