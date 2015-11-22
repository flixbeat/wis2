<?php
	session_start();
	require_once('../../classes/class_student.php');
	$student = new Student();
	if($student->getTime($_SESSION['subject'], $_SESSION['userID'])){
		$_SESSION['start'] = $student->subStart;
		$_SESSION['end'] = $student->subEnd;	
		if($student->isAttendanceOpen($_SESSION['start'], $_SESSION['end'])){
			if ($student->isAttendanceDone($_SESSION['userID'], $_SESSION['subject'])) {
				$_SESSION['alert'] = "Attendance already recorded.";
			}else{
				$score = $student->attendanceScore($_SESSION['start']);
				if($student->recordAttendance($_SESSION['userID'], $_SESSION['subject'], $score)){
					$_SESSION['alert'] = "Attendance Recorded";
					if ($score == 3) {
						$_SESSION['late'] = "You are Late";
					}
				}else{
					$_SESSION['alert'] = "sorry";
				}
			}
		}else{
			$_SESSION['alert'] =  "Attendance is not yet open.";
		}
	}else{
		$_SESSION['alert'] = "The Subject is not available today.";
	}
	header('location: ../../student/student_attendance.php');
?>