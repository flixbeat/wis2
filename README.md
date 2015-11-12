### Web Information System 2

#### UPDATES
* renamed filename class_Users to class_users
* fixed naming conventions to minimize typos
* added public $con to MYSQLI super class and changed return $this->conn to $this->con = $this->con
	- on this manner, we'll use $this->con->query() instead of $this->connect()->query
* removed unnecessary functions to make it simple
> ~ dave
