<?php
include('TD_reportes.php');
  include('../config/config.php');
  if (isset($_POST['inicio']) || isset($_POST['fin']) || isset($_POST['tipo_examen'])) {
    if ($_POST['inicio']!="" && $_POST['fin']!="" && $_POST['tipo_examen']!="") {
      $inicio=$_POST['inicio'];
      $fin=$_POST['fin'];
      $texam=$_POST['tipo_examen'];
      $query=" AND R.cabecera_tipo_formato='$texam' and C.fecha_ingreso_exa Between '$inicio' and '$fin' ";
      $fechas="Fecha desde ".$inicio." hasta ".$fin;

      $tpe=$_POST['tipo_examen'];
      $consultate=mysqli_query($con,"SELECT * FROM tipo_formato where formato_id='$tpe'");
      $row30=mysqli_fetch_array($consultate);
      $tipoextraido=$row30['formato_nombre'];
      $mnjtitulo="Reporte de ".utf8_decode($tipoextraido);
      
      $mnjtitulo=str_replace("xa", "xa", $mnjtitulo);

    }else if ($_POST['inicio']!="" && $_POST['fin']!="" && $_POST['tipo_examen']=="") {
      $inicio=$_POST['inicio'];
      $fin=$_POST['fin'];
      $query=" AND C.fecha_ingreso_exa Between '$inicio' and '$fin' ";
      $fechas="Fecha desde ".$inicio." hasta ".$fin;
      $mnjtitulo="Reporte de Exámenes";

    }else if ($_POST['inicio']=="" && $_POST['fin']=="" &&$_POST['tipo_examen']!="") {
      $texam=$_POST['tipo_examen'];
      $query=" AND R.cabecera_tipo_formato='$texam' ";
      $fechas="";

      $tpe=$_POST['tipo_examen'];
      $consultate=mysqli_query($con,"SELECT * FROM tipo_formato where formato_id='$tpe'");
      $row30=mysqli_fetch_array($consultate);
      $tipoextraido=$row30['formato_nombre'];
      $mnjtitulo="Reporte de ".utf8_decode($tipoextraido);
      
      $mnjtitulo=str_replace("xa", "xa", $mnjtitulo);

    }else {
      $query="";
      $fechas="";
      $mnjtitulo="Reporte de Exámenes";
    }
  }else {
    $query="";
    $fechas="";
    $mnjtitulo="Reporte de Exámenes";
  }

$consulta=mysqli_query($con,"SELECT * FROM cabecera_examen C INNER JOIN paciente P ON C.id_paciente=P.id_paciente inner join cabecera_resultado R on R.cabecera_exa_id=C.cabecera_exa_id inner join tipo_formato TF on TF.formato_id=R.cabecera_tipo_formato where C.estado_exa_id='1' ".$query." ");

//$consulta=mysqli_query($con,"SELECT * from tareas T INNER JOIN empleados E on T.id_empleado=E.id_empleado INNER JOIN actividades A on A.id_actividad=T.id_actividad INNER JOIN parcelas P on P.id_parcela=T.id_parcela where T.fecha BETWEEN '$desde' and '$hasta' ORDER BY T.fecha ASC");

$pdf=new PDF('P','mm','A4');#(orizontal L o vertical P,medida cm mm, A3-A4)
$pdf->AliasNbPages();
$pdf->AddPage();
$pdf->SetFont('arial','B',12);
$pdf->SetXY(20,23);
$pdf->Cell(170,10,utf8_decode($mnjtitulo),0,1,'C');#(ancho,alto,texto,borde,salto linea,alineacion L C R)

$y=$pdf->GetY();
$pdf->SetY($y+15);
$pdf->SetFont('arial','B',8);
$pdf->SetFillColor(55, 144, 191);
 $pdf->SetTextColor(255, 255, 255);
 $pdf->Cell(45,10,utf8_decode('Fecha'),1,0,'C',true);
$pdf->Cell(75,10,utf8_decode('Nombre Paciente'),1,0,'C',true);
$pdf->Cell(35,10,utf8_decode('Identificación'),1,0,'C',true);
$pdf->Cell(35,10,utf8_decode('Precio de Examen'),1,1,'C',true);
echo
$pdf->SetFont('arial','B',8);
 $pdf->SetTextColor(0, 0, 0);
$j=0;
while($row5=mysqli_fetch_array($consulta)){
$tipo=$row5['tipo_examen'];
$pdf->Cell(45,10,utf8_decode($row5['fecha_ingreso_exa']),1,0,'C');
$pdf->Cell(75,10,utf8_decode($row5['nombres']." ".$row5['apellidos']),1,0,'C');
$pdf->Cell(35,10,utf8_decode($row5['identificacion']),1,0,'C');
$pdf->Cell(35,10,utf8_decode("$".$row5['precio_examen']),1,1,'C');
$j++;
}
$pdf->Cell(120,10,utf8_decode('TOTAL DE EXÁMENES'),1,0,'C');
$pdf->Cell(70,10,utf8_decode($j),1,1,'C');
/*
$pdf->SetFont('arial','B',15);
$pdf->SetXY(10,70);
$pdf->MultiCell(60,5,'hola mundo como estan todo aqui',1,'C',0);
$pdf->MultiCell(100,5,'hola mundo como estan todo aqui',1,'C',0);
*/
$pdf->Output();
 ?>