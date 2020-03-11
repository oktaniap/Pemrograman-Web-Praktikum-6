<?php
$conn=mysqli_connect("localhost", "root", "", "myDB");
if (!$conn) {
	die("Connection failed ".mysqli_connect_error());
}
$sql="CREATE TABLE buku_tamu(ID_BT INT(10) PRIMARY KEY, NAMA VARCHAR(200), EMAIL VARCHAR(50), ISI TEXT)";
if (mysqli_query($conn, $sql)) {
	echo "Table created successfully";
} else {
	echo "Error creating table: ".mysqli_error($conn);
}
mysqli_close($conn)
?>