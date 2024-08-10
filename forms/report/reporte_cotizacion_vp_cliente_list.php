<?php
include('TD_reportes.php');
include('../config/config.php');
$id=$_REQUEST['id'];

$consulta=mysqli_query($con,"SELECT *,TP.tipo_paciente tpaciente,SX.sexo sexos,CC.fecha fechacc FROM cabecera_cotizacion CC INNER JOIN paciente P ON CC.id_paciente=P.id_paciente  inner join sexo SX on SX.id_sexo=P.sexo INNER JOIN tipo_paciente TP ON TP.id_tipopaciente=P.tipo_paciente where id_cabecera_cotizacion='$id' ");
$row=mysqli_fetch_array($consulta);
$idcc=$row['id_cabecera_cotizacion'];

//$consulta=mysqli_query($con,"SELECT * from tareas T INNER JOIN empleados E on T.id_empleado=E.id_empleado INNER JOIN actividades A on A.id_actividad=T.id_actividad INNER JOIN parcelas P on P.id_parcela=T.id_parcela where T.fecha BETWEEN '$desde' and '$hasta' ORDER BY T.fecha ASC");

$pdf=new PDF('P','mm','A4');#(orizontal L o vertical P,medida cm mm, A3-A4)
$pdf->AliasNbPages();
$pdf->AddPage();
$pdf->SetFont('arial','B',12);
$pdf->SetXY(20,17);
$pdf->Cell(170,10,'PAGOS DE PACIENTE',0,1,'C');#(ancho,alto,texto,borde,salto linea,alineacion L C R)
$pdf->SetFont('arial','',10);
$pdf->Cell(100,10,$fechas ,0,1,'C');


$k=0;

$y=$pdf->GetY();
$pdf->SetY($y+10);

$pdf->SetFont('arial','B',8);
$pdf->SetTextColor(0, 0, 0);

$pdf->Cell(20,6,utf8_decode('Fecha: '),'T',0,'C'); $pdf->Cell(50,6,utf8_decode($row['fechacc']),'T',0,'L');
$pdf->Cell(20,6,utf8_decode('Solicitud Nº: '),'T',0,'C'); $pdf->Cell(35,6,utf8_decode($row['solicitud']),'T',0,'L');
$pdf->Cell(20,6,utf8_decode('Turno Nº: '),'T',0,'C'); $pdf->Cell(45,6,utf8_decode($row['turno']),'T',1,'L');

$pdf->Cell(20,6,utf8_decode('Paciente: '),'B',0,'C'); $pdf->Cell(60,6,utf8_decode($row['nombres']." ".$row['apellidos']),'B',0,'L');
$pdf->Cell(20,6,utf8_decode('Género: '),'B',0,'C'); $pdf->Cell(40,6,utf8_decode($row['sexos']),'B',0,'L');
$pdf->Cell(20,6,utf8_decode('Edad: '),'B',0,'C'); $pdf->Cell(30,6,utf8_decode($row['edad']),'B',1,'L');

$pdf->Cell(110,6,utf8_decode('Descripción de Exámen'),0,0,'C');$pdf->Cell(80,6,utf8_decode('Valor'),0,1,'C');

$pdf->SetFont('arial','B',8);
 $pdf->SetTextColor(0, 0, 0);


$vt=0;


  $consulta2=mysqli_query($con,"SELECT * FROM detalle_cotizacion DC inner join reactivo R on R.id_reactivo=DC.id_reactivo where DC.id_cabecera_cotizacion='$idcc' ");
  while($row2=mysqli_fetch_array($consulta2)){
   
      $pdf->Cell(20,6,utf8_decode(' '),0,0,'R');  $pdf->Cell(80,6,utf8_decode($row2['nombre_reactivo']),0,0,'L');   $pdf->Cell(30,6,utf8_decode('$ '),0,0,'R');
      $pdf->Cell(40,6,utf8_decode($row2['precio_reactivo']),0,1,'C');
      $vt+=$row2['precio_reactivo'];
    }

if($row['descuento']=='0'){
    $descu=0.00;
}
if($row['descuento']=='1'){
    $descu=($row['costo'])*0.1;
}
if($row['descuento']=='2'){
    $descu=($row['costo'])*0.2;
}
if($row['descuento']=='3'){
    $descu=($row['costo'])*0.3;
}

if($row['abono']>0){
   $adeud= $row['costo']-$row['abono'];
}else{
    $adeud=0.00;
}
// if($adeud==0 && $row['abono']==0){
//     $adeud=$row['costo'];
// }
$pdf->Cell(110,6,utf8_decode('SUB TOTAL'),'T',0,'C');
$pdf->Cell(80,6,utf8_decode("$ ".number_format(($vt), 2, '.', '')),'T',1,'C');

$pdf->Cell(110,6,utf8_decode('DESCUENTO'),0,0,'C');
$pdf->Cell(80,6,utf8_decode("$ ".number_format(($descu), 2, '.', '')),0,1,'C');

$pdf->Cell(110,6,utf8_decode('VALOR TOTAL DE EXAMEN'),0,0,'C');
$pdf->Cell(80,6,utf8_decode("$ ".number_format(($row['costo']), 2, '.', '')),0,1,'C'); 

$pdf->Cell(110,6,utf8_decode('VALOR ABONO'),0,0,'C');
$pdf->Cell(80,6,utf8_decode("$ ".$row['abono']),0,1,'C');

$pdf->Cell(110,6,utf8_decode('VALOR ADEUDA'),0,0,'C');
$pdf->Cell(80,6,utf8_decode("$ ".number_format($adeud, 2, '.', '')),0,1,'C');





/*
$pdf->SetFont('arial','B',15);
$pdf->SetXY(10,70);
$pdf->MultiCell(60,5,'hola mundo como estan todo aqui',1,'C',0);
$pdf->MultiCell(100,5,'hola mundo como estan todo aqui',1,'C',0);
*/
$pdf->Output();
 ?>
