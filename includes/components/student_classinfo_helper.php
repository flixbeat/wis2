<?php
	$classInfo = $student->viewClassInfo($_SESSION['subject'], $_SESSION['userID']);
	if ($classInfo->num_rows>0) {
		echo "<center><table border = 2 width=100%>";
		echo "<tr><th>Section</th><th>Subject Code</th><th>Subject Name</th><th>Lec Units</th><th>Lab Units</th><th>Days</th><th>Time</th><tr>";
		while($row = $classInfo->fetch_assoc()){
			echo "<tr><td>$row[section]</td><td>$row[sub_code]</td><td>$row[sub_name]</td><td>$row[lec_units]</td><td>$row[lab_units]</td><td>$row[days]</td><td>$_SESSION[start] to $_SESSION[end]</td></tr>";
		}	
	echo "</table></center>";
	}else{
		echo "<center>No Record to view</center>";
	}
?>
