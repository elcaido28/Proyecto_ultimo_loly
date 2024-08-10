<?php
include('TD_reportes.php');
include('../config/config.php');
if (isset($_POST['inicio']) || isset($_POST['fin'])) {
  if ($_POST['inicio']!="" && $_POST['fin']!="") {
    $inicio=$_POST['inicio'];
    $fin=$_POST['fin'];
    $query=" WHERE P.fecha_ingreso Between '$inicio' and '$fin' ";
    $fechas="Fecha desde ".$inicio." hasta ".$fin;
  }else {
    $query="";
    $fechas="";
  }
}else {
  $query="";
  $fechas="";
}


$consulta=mysqli_query($con,"SELECT *, TP.tipo_paciente tpaciente FROM paciente P INNER JOIN tipo_paciente TP ON TP.id_tipopaciente=P.tipo_paciente ".$query." ");

//$consulta=mysqli_query($con,"SELECT * from tareas T INNER JOIN empleados E on T.id_empleado=E.id_empleado INNER JOIN actividades A on A.id_actividad=T.id_actividad INNER JOIN parcelas P on P.id_parcela=T.id_parcela where T.fecha BETWEEN '$desde' and '$hasta' ORDER BY T.fecha ASC");

$pdf=new PDF('P','mm','A4');#(orizontal L o vertical P,medida cm mm, A3-A4)
$pdf->AliasNbPages();
$pdf->AddPage();
$pdf->SetFont('arial','B',12);
$pdf->SetXY(20,17);
$pdf->Cell(170,10,'REPORTE DE PACIENTES',0,1,'C');#(ancho,alto,texto,borde,salto linea,alineacion L C R);
$pdf->SetXY(50,32);
$pdf->SetFont('arial','',10);
$pdf->Cell(100,6,$fechas ,0,1,'C');

$y=$pdf->GetY();
$pdf->SetY($y+10);
$pdf->SetFont('arial','B',8);
$pdf->SetFillColor(55, 144, 191);
 $pdf->SetTextColor(255, 255, 255);
 $pdf->Cell(30,10,utf8_decode('Fecha de Registro'),1,0,'C',true);
$pdf->Cell(60,10,utf8_decode('Nombre Paciente'),1,0,'C',true);
$pdf->Cell(25,10,utf8_decode('Cédula'),1,0,'C',true);
$pdf->Cell(25,10,utf8_decode('Edad'),1,0,'C',true);
$pdf->Cell(25,10,utf8_decode('Teléfono'),1,0,'C',true);
$pdf->Cell(25,10,utf8_decode('Tipo Paciente'),1,1,'C',true);

$pdf->SetFont('arial','B',8);
 $pdf->SetTextColor(0, 0, 0);
while($row5=mysqli_fetch_array($consulta)){

$pdf->Cell(30,10,utf8_decode($row5['fecha_ingreso']),1,0,'C');
$pdf->Cell(60,10,utf8_decode($row5['nombres']." ".$row5['apellidos']),1,0,'C');
$pdf->Cell(25,10,utf8_decode($row5['identificacion']),1,0,'C');
$pdf->Cell(25,10,utf8_decode($row5['edad']),1,0,'C');
$pdf->Cell(25,10,utf8_decode($row5['telefono']),1,0,'C');
$pdf->Cell(25,10,utf8_decode($row5['tpaciente']),1,1,'C');
}
/*
$pdf->SetFont('arial','B',15);
$pdf->SetXY(10,70);
$pdf->MultiCell(60,5,'hola mundo como estan todo aqui',1,'C',0);
$pdf->MultiCell(100,5,'hola mundo como estan todo aqui',1,'C',0);
*/
$pdf->Output();
 ?>