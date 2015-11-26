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

##### Update X
* Database: 24 tables
* create_quiz, input_score, create_activity UI added
* grading term and SY is now visible
* some minor modifications and bug fixes
* class_alert.php created for faculty use 

> dave
