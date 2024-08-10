<?php
session_start();
include('../config/config.php');
$id=$_REQUEST['id'];
$_SESSION['eliminar']=2;

mysqli_query($con,"DELETE from usuario where id_empleado='$id'");
mysqli_query($con,"DELETE from empleado where id_empleado='$id'");
header('Location:../restaurar_empleado.php');
?>
