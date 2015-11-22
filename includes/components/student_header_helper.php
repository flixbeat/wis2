<?php
	include_once('../classes/class_student.php');
	$student = new Student();
	$student->getStudentInfo($_SESSION['userID']);
	$student->getSubjectInfo($_SESSION['subject']);
?>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link style = "text/css" rel = "stylesheet" href = "../libs/bootstrap-3.3.5-dist/css/bootstrap.min.css"/>
<script src = "../libs/jquery-1.11.3.min.js"></script>
<script src = "../libs/bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
<link style="text/css" rel="stylesheet" href= "../libs/css/student_style.css"/>