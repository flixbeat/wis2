<?php
	class MySQLI_connection{
		private $hostname;
		private $port;
		private $userID;
		private $pwd;
		private $db;
		private $err;
		public $conn;
		public $con;

		//public function connect($prHost="172.16.0.13", $prPort="3309", $prUser = "x", $prPass = "x@1234", $prDB = "wis_two"){
		public function connect($prHost="localhost", $prPort="3306", $prUser = "root", $prPass = "", $prDB = "db_wis2"){
			$success = false;
			$this->hostname = $prHost;
			$this->userID = $prUser;
			$this->pwd = $prPass;
			$this->db = $prDB;
			$this->port = $prPort;

			$this->conn = new mysqli($this->hostname, $this->userID, $this->pwd, $this->db, $this->port);

			if($this->conn){
				$success=true;
			}else{
				$this->err = mysqli_error($this->conn);
				$this->showError(1, 0);
			}
			$this->con = $this->conn;
		}

		public function showError($errNo, $showErr = 0){				
			$errMsg = "";
			if ($showErr == 1) {
				die("Error encountered in connecting to the database server ".$this->err);
			}
			if ($errNo==1){
				die("Unable to connect to the server -".$errMsg);
			}else if ($errNo == 2){
				die("Unable to connect to the server. Database Connection Failed. ".$errMsg);
			}else if ($errNo == 3){
				die("Error in fetching a record ".$errMsg);
			}else if ($errNo == 4){
				die("error in updating record ".$errMsg);
			}else if ($errNo == 5){
				die("Error in Inserting a record ".$errMsg);
			}else if ($errNo == 6){
				die("Error in deleting a record ".$errMsg);
			}else if ($errNo == 7){
				die("Error in Sql query. ".$errMsg);
			}else{
				die("Undefined Error -".$errMsg);
			}
		}
		public function sanitize($input){
			$input = @trim($input);//remove trailing spaces
			if (get_magic_quotes_gpc()) {
				$input(stripslashes($input));//removes slashes
			}
			return $this->con->real_escape_string($input); //removes and escapes single quotes
		}

		public function closeConnection(){
			mysqli_close($this->con);
		}

		public function __construct(){
			//die("andito ako");
			$this->connect();
		}


		Public function __destruct(){
			$this->closeConnection();
		}
	}
?>
