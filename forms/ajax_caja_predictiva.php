<?php
include('config/config.php');
$salida="";

  $result = mysqli_query($con,"SELECT * FROM paciente");
  $array = array();
  if($result){
    while ($row = mysqli_fetch_array($result)) {
      $equipos = utf8_encode($row['id_paciente']."-     ".$row['nombres']." ".$row['apellidos']);
      $equipo = utf8_decode($equipos);
      array_push($array, $equipo); // equipos
      
    }
  }
  $salida=json_encode($array); 

echo $salida;

?>