<?php
	session_start();
	if(!isset($_SESSION['memtype']))
		header('Location: index.php');
	require_once 'classes/class_users.php';
	$users = new Users();
	$users->searchByID($_SESSION['userID']);
?>
<!DOCTYPE html> 
<html>
	<head>
		<?php require_once 'includes/components/head.php' ?>
		<style>
			.wrapper{
				margin-top: 10%;
			}
		</style>
	</head>
	<body>
		<div class = "wrapper container">
			<div class = "row">
				<div class = "col-sm-3">
				</div>
				<div class = "col-sm-6">
					<div class = "panel panel-default">
						<div class = "panel-heading">
							<strong>Choose a Load</strong>
						</div>
						<div class = "panel-body">
							<select id = "" class = "form-control">
								<?php
									$memtype = $_SESSION['memtype'];
									if($memtype==1){ # student
										
									}
									else if($memtype==2){ # faculty
										$users->loadFacultyLoads();
									}
									else if($memtype==3){ # admin
										
									}
								?>
								
							</select>
						</div>
					</div>
				</div>
				<div class = "col-sm-3">
				</div>
			</div>
		</div>
	</body>
</html>
