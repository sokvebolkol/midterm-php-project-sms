<?php
include "database.php";
session_start();
if (!isset($_SESSION["AID"])) {
	echo "<script>window.open('index.php?mes=Access Denied...','_self');</script>";
}
?>

<!DOCTYPE html>
<html>

<head>
	<title>Add class</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>

<body>
	<?php include "navbar.php"; ?><br>
	<img src="img/1.jpg" style="margin-left:90px;" class="sha">
	<div id="section">
		<?php include "sidebar.php"; ?><br>
		<h3 class="text">Welcome To Admin Page</h3><br>
		<hr><br>
		<div class="content1">
			<h3 style="margin-top:30px;"> List all students</h3><br>
			<table border="1px" width="70%">
				<tr>
					<th>S.No</th>
					<th>STUDENT NAME</th>
					<th>FATHER NAME</th>
					<th>Email</th>
					<th>ADDRESS</th>
					<th>STUDENT SECTION</th>
					<th>STUDENT CLASS</th>
					<th>ACTION</th>
				</tr>
				<?php
				$s = "select * from student";
				$res = $db->query($s);
				if ($res->num_rows > 0) {
					$i = 0;
					while ($r = $res->fetch_assoc()) {
						$i++;
						echo "
										<tr>
											<td>{$i}</td>
											<td>{$r["NAME"]}</td>
											<td>{$r["FNAME"]}</td>
											<td>{$r["MAIL"]}</td>
											<td>{$r["ADDR"]}</td>
											<td>{$r["SCLASS"]}</td>
											<td>{$r["SSEC"]}</td>
											<td><a href='stud_delete.php?id={$r["ID"]}' class='btnr'>Delete</a></td>
										</tr>
										";
					}
				}
				?>

			</table>
		</div>
	</div>

	<?php include "footer.php"; ?>
</body>

</html>