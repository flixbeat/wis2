<?php
	$total = 0;
	$listAttd = $student->listAttendance($_SESSION['userID'], $_SESSION['subject']);
	if ($listAttd->num_rows>0) {
		echo "<center><table>";
		echo "<tr><th>Date</th><th>Score</th><tr>";
		while($row = $listAttd->fetch_assoc()){
			echo "<tr><td>$row[a_date]</td><td>$row[point]</td></tr>";
			$total = $total+$row['point'];
		}
		echo "<tr><td colspan='2'>_______________________________</td></tr>";
		echo "<tr><td>Total</td><td>$total</td></tr>";
		echo "</table></center>";
	}else{
		echo "<center>No Attendance Record to view</center>";
	}
?>
