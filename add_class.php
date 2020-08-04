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

			<h3> Add Class Details</h3><br>
			<?php
			if (isset($_POST["submit"])) {
				$sq = "insert into class(CNAME,CSEC) values('{$_POST["cname"]}','{$_POST["sec"]}')";
				if ($db->query($sq)) {
					echo "<div class='success'>Insert Success..</div>";
				} else {
					echo "<div class='error'>Insert failed..</div>";
				}
			}

			?>

			<form method="post" action="<?php echo $_SERVER["PHP_SELF"]; ?>">
				<label>Class Name</label><br>
				<select name="cname" required class="input2">
					<option value="">Select</option>
					<option value="A">Class A</option>
					<option value="B">Class B</option>
					<option value="C">Class C</option>
					<option value="D">Class D</option>
					<option value="E">Class E</option>
					<option value="F">Class F</option>
				</select><br><br>
				<label>Section </label><br>
				<select name="sec" required class="input2">
					<option value="">Select</option>
					<option value="Morning">Morning</option>
					<option value="Afternoon">Afternoon</option>
					<option value="Evening">Evening</option>
					<option value="Night">Night</option>
					<option value="Weekend">Weekend</option>

				</select>
				<br>
				<button type="submit" class="btn" name="submit">Add Class Details</button>
			</form>
		</div>

		<div class="tbox">
			<h3 style="margin-top:30px;"> Class Details</h3><br>
			<?php
			if (isset($_GET["mes"])) {
				echo "<div class='error'>{$_GET["mes"]}</div>";
			}

			?>
			<table border="1px">
				<tr>
					<th>S.No</th>
					<th>Class Name</th>
					<th>Section</th>
					<th>Delete</th>
				</tr>
				<?php
				$s = "select * from class";
				$res = $db->query($s);
				if ($res->num_rows > 0) {
					$i = 0;
					while ($r = $res->fetch_assoc()) {
						$i++;
						echo "
										<tr>
											<td>{$i}</td>
											<td>{$r["CNAME"]}</td>
											<td>{$r["CSEC"]}</td>
											<td><a href='class_delete.php?id={$r["CID"]}' class='btnr'>Delete</a></td>
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