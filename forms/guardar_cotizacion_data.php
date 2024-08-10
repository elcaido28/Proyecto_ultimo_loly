<?php
	session_start();
	include ("../config/config.php");
	$fecha=date('Y-m-d');
    $estado='1';
	$paciente=explode("-",$_POST["paciente"]);
	$id_pasi=$paciente[0];
	// $solicitud = $_POST["solicitud"];
	$turno = $_POST["turno"];
	$costo = $_POST["costo"];
	$tpago = $_POST["tpago"];
	$abono = $_POST["abono"];
	$descuento = $_POST["descuento"];
	
	$_SESSION['confirmar']=1;

	// OBTENER EL ULTIMO ID
	$query= mysqli_query($con,"SELECT MAX(id_cabecera_cotizacion) AS id FROM cabecera_cotizacion");
	if ($row = mysqli_fetch_row($query)) 
	{
	   $id = trim($row[0]);
	   $solicitud = $id+1;
	}
	//

	$consulta=mysqli_query($con,"INSERT INTO cabecera_cotizacion (fecha,solicitud ,turno,costo,tipo_pago,abono,descuento,id_paciente,id_estado) VALUES ('$fecha','$solicitud','$turno','$costo','$tpago','$abono','$descuento','$id_pasi','$estado')") or die ("error".mysqli_error());
	$obtener = mysqli_query($con,"SELECT * FROM cabecera_cotizacion ORDER BY id_cabecera_cotizacion DESC") or die ("erro".mysqli_error());

	if($obtener){
		$row=mysqli_fetch_array($obtener);
		$id_cabecera_cotizacion=$row['id_cabecera_cotizacion'];
		$reactivos=explode("-",$_POST["reactivos"]);
		
	  for($i=0; $i<count($reactivos);$i++){
	     if($reactivos[$i]!=""){
	         $id_reactivos=$reactivos[$i];
	    	$consulta2=mysqli_query($con,"INSERT INTO detalle_cotizacion (id_cabecera_cotizacion,id_reactivo) VALUES ('$id_cabecera_cotizacion','$id_reactivos')") or die ("error".mysqli_error());
	     }
	  }
	}else{
		
	}
	
	echo "1";






	mysqli_close($con);
//	header("Location:../ingresar_cargo.php");

?>