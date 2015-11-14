<?php
	session_start();
	require_once('../classes/class_users.php');
	require_once('../classes/class_alert.php');
	# require_once('../includes/my_funcs.php');
	if(isset($_POST['username']) & isset($_POST['password'])){
		$user = new Users();
		//retrieve and clean user inputs
		$username = $user->sanitize($_POST['username']);
		$password = $user->sanitize($_POST['password']);
		//chech if user exist
		if ($user->searchUser($username)) {
			//check if account is locked
			if (($user->retries)>0) {
				//check if password is correct
				if ($user->comparePassword($password)) {
					//reset retries if authentication is successful
					$user->resetRetries();
					//set Authentication value through session. In this case, the value of session id
					#$_SESSION['id'] = encrypt_decrypt("encrypt", $user->id);
					$_SESSION['userID'] = $user->id; 
					//unset all set error messages
					unset($_SESSION['alert']);
					//getMemtype to facilitate navigation
					$memtype = $user->getMemtype();
					if ($memtype == 1){
						//proceed to initial student page
						#goHomePage();
						echo $user->pwd;
					}else if ($memtype == 2) {
						
					}else if ($memtype == 3){
						
					}
					
				}else{
					$user->updateRetries();
					$_SESSION['alert'] = Alert::loginFailedShowRetries($user->retries-1);
					header('Location: ../index.php');
				}
			}else{
				$_SESSION['alert'] = Alert::accountLocked();
				header('Location: ../index.php');
			}
		}else{
			$_SESSION['alert'] = Alert::loginFailed();
			header('Location: ../index.php');
		}
	}else{
		
	}
	
?>
