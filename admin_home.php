<?php
include "database.php";
session_start();
if (!isset($_SESSION["AID"])) {
	echo "<script>window.open('index.php?mes=Access Denied..','_self');</script>";
}
?>

<!DOCTYPE html>
<html>

<head>
	<title>Admin Home</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>

<body>

	<?php include "navbar.php"; ?><br>
	<img src="img/1.jpg" style="margin-left:90px;" class="sha" width="88%">

	<div id="section">

		<?php include "sidebar.php"; ?><br>

		<div class="content">
			<h3 class="text">Welcome To Admin Page</h3><br>
			<hr><br>
			<h3> School Information</h3><br>
			<img src="img/images.jfif" class="imgs">
			<p class="para">
				A student information system, student management system, school administration software or student administration system is a management information system for education establishments used to manage student data.
			</p>

			<p class="para">
				school software has a powerful online community to bring parents, teachers and students on a common interactive platform. It is a paperless office automation solution for today's modern schools. The School Management System provides the facility to carry out all day to day activities of the school.
			</p>
		</div>

	</div>

	<?php include "footer.php"; ?>
</body>

</html>