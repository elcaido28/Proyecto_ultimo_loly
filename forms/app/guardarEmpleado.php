<?php
	session_start();
	include ("../config/config.php");
	$fecha=date('Y-m-d');

	$_SESSION['confirmar']=5;

	$nombres = $_POST["nombres"];
	$apellidos = $_POST["apellidos"];
	$cedula = $_POST["cedula"];
	$correo = $_POST["correo"];
	$celular = $_POST["celular"];
	$telefono = $_POST["telefono"];
	$direccion = $_POST["direccion"];
	$rol = $_POST["rol"];
	$estado = "1";
	
	if (isset($_POST["perfil"])) {
		if ($_POST["perfil"]=="Administrador") {
			$perfil=1;
		}else{
			$perfil=$_POST["perfil"];
		}
	}
	
	$consul=mysqli_query($con,"SELECT * from empleado WHERE nombres='$nombres' AND apellidos='$apellidos'");
	$nrow=mysqli_num_rows($consul);
	if($nrow <1){
	    $_SESSION['confirmar']=1;
	   	$consulta=mysqli_query($con,"INSERT INTO empleado (fecha_ingreso, fecha_modificacion, nombres, apellidos, cedula, telefono, celular, correo, direccion, id_rol, id_perfil, id_estado) VALUES ('$fecha', '$fecha', '$nombres', '$apellidos', '$cedula', '$telefono', '$celular', '$correo', '$direccion', '$rol', '$perfil', '$estado')") or die ("error".mysqli_error());
	}
    


	mysqli_close($con);
	header("Location:../ingresar_empleado.php");

?>