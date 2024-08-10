<?php
	session_start();
	include ("../config/config.php");
	$fecha=date('Y-m-d');

	$rol = $_POST["rol"];

	$consultar=mysqli_query($con,"SELECT * FROM rol WHERE nombre_rol='$rol'") or die ("error".mysqli_error());
	$num=mysqli_num_rows($consultar);
	if ($num>0) {
		$_SESSION['confirmar']=3;
	}else{

		$_SESSION['confirmar']=1;
		$consulta=mysqli_query($con,"INSERT INTO rol (nombre_rol) VALUES ('$rol')") or die ("error".mysqli_error());

	}

	mysqli_close($con);
	header("Location:../ingresar_cargo.php");

?>