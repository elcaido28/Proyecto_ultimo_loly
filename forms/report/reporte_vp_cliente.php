<?php
include('TD_reportes.php');
include('../config/config.php');
if (isset($_POST['inicio']) || isset($_POST['fin'])) {
  if ($_POST['inicio']!="" && $_POST['fin']!="") {
    $inicio=$_POST['inicio'];
    $fin=$_POST['fin'];
    $query=" WHERE CE.fecha_ingreso_exa Between '$inicio' and '$fin' ";
    $fechas="Fecha desde ".$inicio." hasta ".$fin;
  }else {
    $query="";
    $fechas="";
  }
}else {
  $query="";
  $fechas="";
}
$id=$_REQUEST['id'];

$consulta=mysqli_query($con,"SELECT *,TP.tipo_paciente tpaciente,SX.sexo sexos FROM paciente P inner join sexo SX on SX.id_sexo=P.sexo INNER JOIN tipo_paciente TP ON TP.id_tipopaciente=P.tipo_paciente INNER JOIN cabecera_examen CE ON CE.id_paciente=P.id_paciente  where P.identificacion='$id' ");
$row=mysqli_fetch_array($consulta);
$idpac=$row['id_paciente'];


$nc=mysqli_num_rows(mysqli_query($con,"SELECT * FROM cabecera_examen where id_paciente='$idpac'"));
//$consulta=mysqli_query($con,"SELECT * from tareas T INNER JOIN empleados E on T.id_empleado=E.id_empleado INNER JOIN actividades A on A.id_actividad=T.id_actividad INNER JOIN parcelas P on P.id_parcela=T.id_parcela where T.fecha BETWEEN '$desde' and '$hasta' ORDER BY T.fecha ASC");

$pdf=new PDF('P','mm','A4');#(orizontal L o vertical P,medida cm mm, A3-A4)
$pdf->AliasNbPages();
$pdf->AddPage();
$pdf->SetFont('arial','B',12);
$pdf->SetXY(20,17);
$pdf->Cell(170,10,'PAGOS DE PACIENTE',0,1,'C');#(ancho,alto,texto,borde,salto linea,alineacion L C R)
$pdf->SetFont('arial','',10);
$y=$pdf->GetY();
$pdf->SetY($y+10);
$pdf->Cell(100,10,$fechas ,0,1,'C');


$k=0;
 $consulta1=mysqli_query($con,"SELECT * FROM cabecera_examen where id_paciente='$idpac'");
 
 
 if($nc==0){
     $y=$pdf->GetY();
$pdf->SetY($y+10);
$pdf->Cell(80,6,utf8_decode('Este paciente no tiene pagos realizados '),'B',0,'C'); 
 }
 while($row1=mysqli_fetch_array($consulta1)){
   $k++;
   $idexa=$row1['cabecera_exa_id'];
   $consulta5=mysqli_query($con,"SELECT * from detalle_examen  where cabecera_exa_id='$idexa'");
   
   
  $tipo_pago_ct=$row1['tipo_pago'];
$precio_examen_ct=$row1['precio_examen'];

$consulta3=mysqli_query($con,"SELECT * FROM cabecera_cotizacion where  costo='$precio_examen_ct' and id_paciente='$idpac' ");
$row3=mysqli_fetch_array($consulta3);

$y=$pdf->GetY();
$pdf->SetY($y+10);

$pdf->SetFont('arial','B',8);
$pdf->SetTextColor(0, 0, 0);

$pdf->Cell(20,6,utf8_decode('Fecha: '),'T',0,'C'); $pdf->Cell(50,6,utf8_decode($row1['fecha_ingreso_exa']),'T',0,'L');
$pdf->Cell(20,6,utf8_decode('Solicitud Nº: '),'T',0,'C'); $pdf->Cell(35,6,utf8_decode($row3['solicitud']),'T',0,'L');
$pdf->Cell(20,6,utf8_decode(''),'T',0,'C'); $pdf->Cell(45,6,utf8_decode(''),'T',1,'L');

$pdf->Cell(20,6,utf8_decode('Paciente: '),'B',0,'C'); $pdf->Cell(60,6,utf8_decode($row['nombres']." ".$row['apellidos']),'B',0,'L');
$pdf->Cell(20,6,utf8_decode('Género: '),'B',0,'C'); $pdf->Cell(40,6,utf8_decode($row['sexos']),'B',0,'L');
$pdf->Cell(20,6,utf8_decode('Edad: '),'B',0,'C'); $pdf->Cell(30,6,utf8_decode($row['edad']),'B',1,'L');

$pdf->Cell(110,6,utf8_decode('Descripción de Exámen'),0,0,'C');$pdf->Cell(80,6,utf8_decode('Valor'),0,1,'C');

$pdf->SetFont('arial','B',8);
 $pdf->SetTextColor(0, 0, 0);


$vt=0;

while($row5=mysqli_fetch_array($consulta5)){

  $consulta2=mysqli_query($con,"SELECT * FROM reactivo");
  while($row2=mysqli_fetch_array($consulta2)){
    if ($row5['detalle_examen_dscrp']==$row2['nombre_reactivo']) {
      $pdf->Cell(20,6,utf8_decode(' '),0,0,'R');  $pdf->Cell(80,6,utf8_decode($row5['detalle_examen_dscrp']),0,0,'L');   $pdf->Cell(30,6,utf8_decode('$ '),0,0,'R');
      $pdf->Cell(40,6,utf8_decode($row2['precio_reactivo']),0,1,'C');
      $vt+=$row2['precio_reactivo'];
    }



  }


}



if($row3['descuento']=='0'){
     $descu="0%";
     
}
 if($row3['descuento']=='1'){
        $descu="10%";
        $valo_descu=$row1['precio_examen']*0.10;
       }
if($row3['descuento']=='2'){
    $descu="20%";
    $valo_descu=$row1['precio_examen']*0.20;
}
if($row3['descuento']=='3'){
    $descu="30%";
    $valo_descu=$row1['precio_examen']*0.30;
}

$pdf->Cell(110,6,utf8_decode('SUB TOTAL'),'T',0,'C');
$pdf->Cell(80,6,utf8_decode("$ ".($vt)),'T',1,'C');


$pdf->Cell(110,6,utf8_decode('DESCUENTO'),0,0,'C');
// $pdf->Cell(80,6,utf8_decode("$ ".($vt-$row1['precio_examen'])),'T',1,'C');
$pdf->Cell(80,6,utf8_decode("-".(number_format($valo_descu,2))),'0',1,'C');

if($row1['precio_examen']-$vt!=0){

$pdf->Cell(110,6,utf8_decode('OTRO DESCUENTO'),0,0,'C');
// $pdf->Cell(80,6,utf8_decode("$ ".($vt-$row1['precio_examen'])),'T',1,'C');
$pdf->Cell(80,6,utf8_decode("".(number_format($valo_descu+($row1['precio_examen']-$vt),2))),0,1,'C');
}

$pdf->Cell(110,6,utf8_decode('VALOR TOTAL DE EXÁMEN'),0,0,'C');
$pdf->Cell(80,6,utf8_decode("$ ".number_format($row1['precio_examen'],2)),0,1,'C');


if ($nc>1 && $k<$nc) {
  $pdf->AddPage();
}

}
/*
$pdf->SetFont('arial','B',15);
$pdf->SetXY(10,70);
$pdf->MultiCell(60,5,'hola mundo como estan todo aqui',1,'C',0);
$pdf->MultiCell(100,5,'hola mundo como estan todo aqui',1,'C',0);
*/
$pdf->Output();
 ?>
