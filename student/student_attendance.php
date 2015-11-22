<?php
	session_start();
?>
<!DOCTYPE html>
<html>
<head>
	<title>Attendance</title>
	<?php include_once ('../includes/components/student_header_helper.php');?>
</head>
<body>
	<?php include_once('../includes/components/student_info_helper.php');?>
	<div class="container">
		<div class="panel panel-primary">
			<div class="panel-heading"><center>Attendance</center></div>
			<div class="alert alert-warning alert-dismissible">
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
						<span area-hidden="true">×</span>
					</button>
					<?php 
						echo isset($_SESSION['alert']) ? $_SESSION['alert']:null;
						unset($_SESSION['alert']);
						echo isset($_SESSION['late']) ? $_SESSION['late']:null;
						unset($_SESSION['late']);
					?>
			</div>
			<div class="panel-body">
				<div class="panel panel-success">
					<div class="panel-heading">Attendance Summary</div>
					<div class="panel-body">
						<?php include_once('../includes/components/student_attendance_helper.php');?>
					</div>
				</div>
			</div>
		</div>
	</div>
	<center><nav>
		<a href="student_home.php">Home</a>
	</nav></center>
</body>
</html>