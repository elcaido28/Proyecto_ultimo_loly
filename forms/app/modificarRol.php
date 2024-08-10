<?php
	session_start();
	include ("../config/config.php");
	$fecha=date('Y-m-d');
	$idrol = $_REQUEST["idr"];

	$rol = $_POST["rol"];

	$consultar=mysqli_query($con,"SELECT * FROM rol WHERE nombre_rol='$rol'") or die ("error".mysqli_error());
	$num=mysqli_num_rows($consultar);
	if ($num>0) {
		$_SESSION['confirmar']=3;
		header("Location:../editar_cargo.php?idr=".$idrol);
	}else{

		$_SESSION['confirmar']=2;

		$consulta=mysqli_query($con,"UPDATE rol SET nombre_rol='$rol' WHERE id_rol='$idrol'") or die ("error".mysqli_error());

		header("Location:../ingresar_cargo.php");

	}

	mysqli_close($con);
	// header("Location:../editar_rol.php?idr=$idrol");
?>