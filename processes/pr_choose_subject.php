<?php
	session_start();
	require_once('../classes/class_users.php');
	require_once('../classes/class_alert.php');
	if(isset($_POST['continue'])){
		$memtype = $_POST['continue'];
		if($memtype==1){
			require_once('../classes/class_student.php');
			$student = new Student();
			$_SESSION['subject'] = $_POST['subject'];
			//$location = $student->check
			header('location: ../student/student_home.php');
		}
		else if($memtype==2){
			require_once('../faculty/classes/class_faculty.php');
			$faculty = new Faculty();
			# verify membership type, to avoid bypass
			if($faculty->verifyMemType($_SESSION['userID'],$memtype))
				header('Location: ../faculty/');
			else
				header('Location: ../');
		}
		else if($memtype==3){
			
		}
	}
?>
