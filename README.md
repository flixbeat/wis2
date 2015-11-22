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

##### Update 3
*created student folder that contains all student views.
*included bootstrap 3 for student views.
*included dummy homepage for student.
*working attendance without terminal host and ip. To follow na lng
*class info can now be viewed. (For follow-up: lab and lec scheds)
*updated class Students
