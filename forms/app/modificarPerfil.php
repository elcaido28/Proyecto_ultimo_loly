<?php
	session_start();
	include ("../config/config.php");
	$fecha=date('Y-m-d');
	$idper = $_REQUEST["idp"];

	$perfil = $_POST["perfil"];

	$consultar=mysqli_query($con,"SELECT * FROM perfil WHERE nombre_perfil='$perfil'") or die ("error".mysqli_error());
	$num=mysqli_num_rows($consultar);
	if ($num>0) {
		$_SESSION['confirmar']=3;
		header("Location:../editar_permiso.php?idp=".$idper);
	}else{

		$_SESSION['confirmar']=2;

		$consulta=mysqli_query($con,"UPDATE perfil SET nombre_perfil='$perfil' WHERE id_perfil='$idper'") or die ("error".mysqli_error());

		header("Location:../ingresar_permiso.php");
	}

	mysqli_close($con);
	// header("Location:../editar_perfil.php?idp=$idper");
?>