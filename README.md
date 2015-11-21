### Web Information System 2

#### UPDATES
##### Update 1
* renamed filename class_Users to class_users
* fixed naming conventions to minimize typos
* added public $con to MYSQLI super class and changed return $this->conn to $this->con = $this->con
	- on this manner, we'll use $this->con->query() instead of $this->connect()->query
* removed unnecessary functions to make it simple

##### Update 2
* removed views folder and moved the files in root directory (due to include path problem)
* created choose_subject.php for student,faculty,admin
* created loadFacultyLoad function in class_users.php to load subjects

> dave
