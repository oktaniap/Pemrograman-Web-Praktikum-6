<?php
$conn=mysqli_connect("localhost", "root", "", "myDB");
if (!$conn) {
	die("Connection failed ".mysqli_connect_error());
}
$sql="CREATE TABLE liga(id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY, kode VARCHAR(3) NOT NULL, negara VARCHAR(30), champion INT(3))";
if (mysqli_query($conn, $sql)) {
	echo "Table created successfully";
} else {
	echo "Error creating table: ".mysqli_error($conn);
}
mysqli_close($conn)
?>