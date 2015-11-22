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
	<div class="container">
		<div class="panel panel-primary">
			<div class="panel-heading"><center>Class Information</center></div>
			<div class="panel-body">
				<?php include_once('../includes/components/student_classinfo_helper.php');?>
			</div>
		</div>
	</div>
	<center><nav>
		<a href="student_home.php">Home</a>
	</nav></center>
	<div><?=date('N')?></div>
</body>
</html>