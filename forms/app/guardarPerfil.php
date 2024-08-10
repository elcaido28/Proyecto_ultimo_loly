<?php
	session_start();
	include ("../config/config.php");
	$fecha=date('Y-m-d');

	$perfil = $_POST["perfil"];

	$consultar=mysqli_query($con,"SELECT * FROM perfil WHERE nombre_perfil='$perfil'") or die ("error".mysqli_error());
	$num=mysqli_num_rows($consultar);
	if ($num>0) {
		$_SESSION['confirmar']=3;
	}else{

		$_SESSION['confirmar']=1;

		$consulta=mysqli_query($con,"INSERT INTO perfil (nombre_perfil) VALUES ('$perfil')") or die ("error".mysqli_error());

	}

	mysqli_close($con);
	header("Location:../ingresar_permiso.php");

?>