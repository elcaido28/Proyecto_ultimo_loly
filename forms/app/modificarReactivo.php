<?php
	session_start();
	include ("../config/config.php");
	$fecha=date('Y-m-d');
	$idrol = $_REQUEST["idr"];

	$rol = $_POST["rol"];
	$precio = $_POST["precio"];

	$consultar=mysqli_query($con,"SELECT * FROM reactivo WHERE nombre_reactivo='$rol'") or die ("error".mysqli_error());
	$num=mysqli_num_rows($consultar);
	if ($num>0) {

		$row = mysqli_fetch_array($consultar);
		$base_nombre = $row['nombre_reactivo'];
		$base_precio = $row['precio_reactivo'];
		if ($rol==$base_nombre && $precio!=$base_precio) {
			$_SESSION['confirmar']=2;
			$consulta=mysqli_query($con,"UPDATE reactivo SET nombre_reactivo='$rol', precio_reactivo='$precio' WHERE id_reactivo='$idrol'") or die ("error".mysqli_error());
			header("Location:../ingresar_reactivo.php");
		}else{
			$_SESSION['confirmar']=3;
			header("Location:../editar_reactivo.php?idr=".$idrol);
		}
	}else{

		$_SESSION['confirmar']=2;

		$consulta=mysqli_query($con,"UPDATE reactivo SET nombre_reactivo='$rol', precio_reactivo='$precio' WHERE id_reactivo='$idrol'") or die ("error".mysqli_error());
		header("Location:../ingresar_reactivo.php");

	}

	mysqli_close($con);
	// header("Location:../editar_rol.php?idr=$idrol");
?>