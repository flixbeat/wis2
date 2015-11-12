<?php
	include_once('class_MYSQLI_connection.php');
	class Users extends MYSQLI_connection{
		//attributes for checking membership type in order to check login conditions 
		public $id;
		public $username;
		public $pwd;
		public $retries;
		public $isLoggedIn;
		public $userType;
		public $memType;
		
		//check authentication 
		public function searchUser($prUsername){
			$success = false;
			$qry = "SELECT * FROM tbl_userlogins WHERE username = '$prUsername';";
			$result = $this->con->query($qry);
			if ($result){
				//check if the resulting table is not empty
				if ($result->num_rows>0) {
					$success = true;
					$row = $result->fetch_assoc();
					$this->id = $row ['user'];
					$this->username = $row ['username'];
					$this->pwd = $row['pwd'];
					$this->retries = $row['retries'];
					$this->isLoggedIn = $row['is_loggedin'];
					$this->userType = $row['user_type'];
				}
			}else{
				$this->showError(3, 0);
			}
			return $success;
		}

		//check password
		public function comparePassword($prPwd){
			$success = false;
			if($this->pwd==md5($prPwd)){
				$success = true;
			}
			return $success;
		}

		public function updateRetries(){
			$success = false;
			$sql = "UPDATE tbl_userlogins set retries = (retries-1) where id = $this->id";
			$result = $this->con->query($sql);
			if($result){
				$success = true;
			}else{
				$this->showError(4, 0);
			}
			return $success;
		}

		public function resetRetries(){
			$success = false;
			$sql = "UPDATE tbl_userlogins set retries = 5 where id = $this->id";
			$result = $this->con->query($sql);
			if($result){
				$success = true;
			}else{
				$this->showError(4, 0);
			}
			return $success;
		}

		//get membership type of user
		public function getMemtype(){
			$qry = "SELECT u.mem_type FROM tbl_users u, tbl_userlogins ul WHERE u.id = ul.user AND ul.user = $this->id;";
			$result = $this->con->query($qry);
			if ($result){
				if ($result->num_rows>0) {
					$row = $result->fetch_assoc();
					return $row['mem_type'];
				}else{
					return 0;
				}
			}else{
				$this->showError(3, 0);
			}
		}
	}
?>
