<?php
	echo '<table class = "table table-hover">
		<thead>
			<th>Subject Code</th>
			<th>Subject Name</th>
			<th>Select</th>
		</thead>
		<tbody>
	';
	
	while($row = $res->fetch_assoc()){
		$id = $row['id'];
		$subCode = $row['sub_code'];
		$subName = $row['sub_name'];
		echo "<tr>
			<td>$subCode</td>
			<td>$subName</td>
			<td><input type = \"radio\" class = \"rbFacLoad\" name = \"rbFacLoad\" value = \"$id\"></td>
		</tr>";
	}
	
	echo '
		</tbody>
		</table>
	';
?>
