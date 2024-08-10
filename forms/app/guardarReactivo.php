<?php
	session_start();
	include ("../config/config.php");
	$fecha=date('Y-m-d');

	$rol = $_POST["rol"];
	$precio = $_POST["precio"];
	$est = 1;

	$consultar=mysqli_query($con,"SELECT * FROM reactivo WHERE nombre_reactivo='$rol'") or die ("error".mysqli_error());
	$num=mysqli_num_rows($consultar);
	if ($num>0) {
		$_SESSION['confirmar']=3;
	}else{

		$_SESSION['confirmar']=1;

		$consulta=mysqli_query($con,"INSERT INTO reactivo (nombre_reactivo, precio_reactivo, id_estado) VALUES ('$rol', '$precio', '$est')") or die ("error".mysqli_error());

	}

	mysqli_close($con);
	header("Location:../ingresar_reactivo.php");

?>