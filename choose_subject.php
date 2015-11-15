<?php
	session_start();
	if(!isset($_SESSION['memtype']))
		header('Location: index.php');
	
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
				<div class = "col-sm-2">
				</div>
				<div class = "col-sm-8">
					<div class = "panel panel-default">
						<div class = "panel-heading">
							<strong>Choose a Load</strong>
						</div>
						<div class = "panel-body">
							<form action = "processes/pr_choose_subject.php" method = "post">
								<?php
									$memtype = $_SESSION['memtype'];
									if($memtype==1){ # student
										
									}
									else if($memtype==2){ # faculty
										require_once 'faculty/classes/class_faculty.php';
										$faculty = new Faculty();
										$faculty->loadFacultyLoads($_SESSION['userID']);
									}
									else if($memtype==3){ # admin
										
									}
								?>
								<input type = "hidden" name = "continue" value = "<?php echo $_SESSION['memtype']?>">
								<button class = "btn btn-default">Continue</button>
							</form>
						</div>
					</div>
				</div>
				<div class = "col-sm-2">
				</div>
			</div>
		</div>
	</body>
</html>
