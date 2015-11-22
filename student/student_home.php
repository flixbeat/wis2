<?php
	session_start();
?>
<!DOCTYPE html>
<html>
<head>
	<title>Student Home</title>
	<?php include_once ('../includes/components/student_header_helper.php');?>
</head>
<body>
	<?php include_once('../includes/components/student_info_helper.php');?>
	<center><nav>
		<a href="../processes/student_processes/pr_attendance.php">Take Attendance</a><br>
		<a href="student_classinfo.php">View Class Information</a><br>
		<a href="student_activity.php">View Activity</a><br>
		<a href="student_scores">View Scores</a><br>
		<a href="../choose_subject.php">Choose Subject</a><br>
		<a href="../processes/pr_exit.php">Logout</a>
	</nav></center>
	<div><?=date('N')?></div>
</body>
</html>