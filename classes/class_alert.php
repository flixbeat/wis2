<?php
	class Alert{
		public static function accountLocked(){
			$alert = '
				<div class = "alert alert-danger alert-dismissible" role = "alert">
					<button type = "button" class = "close" data-dismiss = "alert" aria-label = "Close">
						<span area-hidden = "true">&times;</span>
					</button>
					<strong>Account is Locked!</strong> Please contact your system adiministrator.
				</div>
			';
			return $alert;
		}
		
		public static function loginFailed(){
			$alert = '
				<div class = "alert alert-warning alert-dismissible" role = "alert">
					<button type = "button" class = "close" data-dismiss = "alert" aria-label = "Close">
						<span area-hidden = "true">&times;</span>
					</button>
					<strong>Login Failed.</strong> Please check your username and/or password.
				</div>
			';
			return $alert;
		}
		
		public static function loginFailedShowRetries($retries){
			$alert = '
				<div class = "alert alert-warning alert-dismissible" role = "alert">
					<button type = "button" class = "close" data-dismiss = "alert" aria-label = "Close">
						<span area-hidden = "true">&times;</span>
					</button>
					<strong>Login Failed.</strong> Please check your username and/or password ('.$retries.' retries left).
				</div>
			';
			return $alert;
		}
	}
?>
