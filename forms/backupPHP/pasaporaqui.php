<?php
session_start();
include ("descargar.php");

$_SESSION['descargabd']=1;
sleep(3);
header("../inicio.php");
?>