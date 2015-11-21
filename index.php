<?php
	session_start();
?>
<!DOCTYPE html> 
<html>
	<head>
		<!-- contains information regarding page title,bootstrap library and meta charset-->
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
				<div class = "col-sm-8">
					<div class = "panel panel-default">
						<div class = "panel-heading">
							<h4>Updates</h4>
						</div>
						<div class = "panel-body">
							000-300917-912
						</div>
					</div>
				</div>
				<div class = "col-sm-4">
					<div class = "panel panel-default">
						<div class = "panel-heading">
							<h4>Login</h4>
						</div>
						<div class = "panel-body">
							<!-- the session will contain bootstrap alert, if login is not success-->
							<?php 
								echo isset($_SESSION['alert']) ? $_SESSION['alert']:null;
								unset($_SESSION['alert'])
							?>
							<form action = "processes/pr_login.php" method = "post">
								<div class = "form-group">
									<label>Username:</label>
									<input type = "text" class = "form-control" placeholder = "Username" name = "username">
								</div>
								<div class = "form-group">
									<label>Password:</label>
									<input type = "password" class = "form-control" placeholder = "Password" name = "password">
								</div>
								<div>
									<button class = "btn btn-primary" name = "btnLogin">Sign-in</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
