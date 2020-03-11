<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<table border=1>
		<tr>
			<th>ID</th>
			<th>NAMA</th>
			<th>EMAIL</th>
			<th>ALAMAT</th>
<?php
include 't2.php';
$sql="INSERT INTO buku_tamu(ID_BT, NAMA, EMAIL, ISI) VALUES ('6', 'Messi', 'messi@gmail.com', 'Tulungagung')";
echo "<h2>BUKU TAMU</h2>";
if (mysqli_query($conn, $sql)) {
	echo "<h2>New record created successfully</h2>";
} else{
	echo "Error: ".$sql."<br>".mysqli_error($conn);
}
$sqls="SELECT * FROM buku_tamu";
		$result=mysqli_query($conn, $sqls);
		if (mysqli_num_rows($result)>0) {
			while ($row=mysqli_fetch_assoc($result)) {
				echo "<tr><td>".$row['ID_BT']."</td><td>".$row['NAMA']."</td><td>".$row['EMAIL']."</td><td>".$row['ISI']."</td>";
			}
		}else{
			echo "0 results";
		}
mysqli_close($conn);
?>
</tr>
	</table>
</body>
</html>