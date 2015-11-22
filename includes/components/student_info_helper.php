<div class="panel panel-success">
	<div class="panel-heading"><center><h1>STUDENT PAGE</h1></center></div>
	<div class="panel-body">
		<table width= 100%>
			<tr><th>Student ID: </th><td>&nbsp;<?=$student->studId?></td><td align="right"><?=$student->course?></td></tr>
			<tr><th>Name: </th><td>&nbsp;<?=$student->fullName?></td><td align="right"><?=$student->major?></td></tr>
			<tr><th>Gender: </th><td>&nbsp;<?=$student->gender?></td><td></td></tr>
			<tr><th>Year Level: </th><td>&nbsp;<?=$student->yearLevel?></td></tr>
		</table>
	</div>
	<div class="panel-footer"><?=$student->getSubjectInfo($_SESSION['subject'])?></div>
</div>
