<?php
include('cabecera_resultados.php');
include('../config/config.php');


$idcabecera=$_REQUEST['idc'];
$idpaciente=$_REQUEST['idp'];

$consulta=mysqli_query($con,"SELECT * FROM cabecera_resultado CR INNER JOIN detalle_resultado DR ON CR.cabecera_resultado_id=DR.cabecera_resultado_id INNER JOIN cabecera_examen CE ON CR.cabecera_exa_id=CE.cabecera_exa_id INNER JOIN paciente P ON CE.id_paciente=P.id_paciente WHERE CR.cabecera_exa_id='$idcabecera' AND CR.cabecera_tipo_formato='3' ");

$row=mysqli_fetch_array($consulta);

$pdf=new PDF('P','mm','A4');#(orizontal L o vertical P,medida cm mm, A3-A4)
$pdf->AliasNbPages();
$pdf->AddPage();
$y=$pdf->GetY();
$pdf->SetTextColor(17, 75, 147);
$pdf->SetFont('arial','B',12);
$pdf->SetXY(30,$y);
$pdf->Cell(25,10,'FECHA: ',0,0,'L');#(ancho,alto,texto,borde,salto linea,alineacion L C R)

$pdf->SetTextColor(0, 0, 0);
$pdf->SetFont('arial','',12);
$pdf->Cell(100,10,date("d/m/Y", strtotime($row['cabecera_resultado_fechai'])),0,1,'L');
$pdf->SetTextColor(17, 75, 147);

$pdf->SetFont('arial','B',12);
$pdf->SetX(30);
$pdf->Cell(25,4,'NOMBRE:  ',0,0,'C');
$pdf->SetFont('arial','',12);
$pdf->SetTextColor(0, 0, 0);
$pdf->Cell(100,4,utf8_decode(strtoupper($row['nombres']." ".$row['apellidos'])),0,1,'L');
$y=$pdf->GetY();
$pdf->SetTextColor(17, 75, 147);
$pdf->Line(28,8,180,8);//arriba
$pdf->Line(180,8,180,$y+1);//derecha
$pdf->Line(28,$y+1,180,$y+1);//abajo
$pdf->Line(28,8,28,$y+1);//izquierda
$pdf->Line(28,$y-13,180,$y-13);//en medio


$pdf->SetFont('arial','B',12);
$y=$pdf->GetY();
$pdf->SetXY(50,$y+6);
$pdf->Cell(100,10,utf8_decode('EXAMEN DE SANGRE'),0,1,'C');
$pdf->Cell(160,6,'Resultado     Unidades     V. Referenciales',0,1,'R');
$pdf->SetFont('arial','BU',12);
$pdf->SetX(30);
// $pdf->Cell(100,10,utf8_decode('PERFIL BIOQUIMICO'),0,1,'L');
 
$consulta2=mysqli_query($con,"SELECT * FROM cabecera_resultado CR INNER JOIN detalle_resultado DR ON CR.cabecera_resultado_id=DR.cabecera_resultado_id INNER JOIN cabecera_examen CE ON CR.cabecera_exa_id=CE.cabecera_exa_id INNER JOIN paciente P ON CE.id_paciente=P.id_paciente WHERE CR.cabecera_exa_id='$idcabecera' AND CR.cabecera_tipo_formato='3' and detalle_resultado_seccion='Perfil Bioquimicos' ");
$consulta22=mysqli_query($con,"SELECT * FROM cabecera_resultado CR INNER JOIN detalle_resultado DR ON CR.cabecera_resultado_id=DR.cabecera_resultado_id INNER JOIN cabecera_examen CE ON CR.cabecera_exa_id=CE.cabecera_exa_id INNER JOIN paciente P ON CE.id_paciente=P.id_paciente WHERE CR.cabecera_exa_id='$idcabecera' AND CR.cabecera_tipo_formato='3' and detalle_resultado_seccion='Perfil Bioquimicos' ");

$row50=mysqli_fetch_array($consulta22);
$datos50 = explode('*',$row50['detalle_resultado_resul']);
$cuenta50 = count($datos50);
if ($cuenta50>0) {
    
    $pdf->Cell(100,10,utf8_decode('PERFIL BIOQUIMICO'),0,1,'L');
     $pdf->SetFont('arial','',10);
}else{
    // $pdf->SetFont('arial','BU',12);
    // $pdf->Cell(100,10,utf8_decode('TEXTO PRUEBA'),0,1,'L');
}


$nrow5=0;
while($row5=mysqli_fetch_array($consulta2)){
$y=$pdf->GetY();
$pdf->SetXY(20,$y);

//$pdf->Cell(70,5,utf8_decode(strtoupper($row5['detalle_resultado_tipoexa'])),0,0,'L');
    if($row5['detalle_resultado_tipoexa']=="Null"){
        //$pdf->Cell(70,5,utf8_decode(strtoupper($row5['detalle_resultado_id'].":")),0,0,'L');
    }else{
        $pdf->Cell(70,5,utf8_decode(strtoupper($row5['detalle_resultado_tipoexa'].":")),0,0,'L');
    }
    
    if($row5['detalle_resultado_resul']!=''){
        $datos = explode('*',$row5['detalle_resultado_resul']);
  
        $cuenta = count($datos);
        if ($cuenta>1) {
            $pdf->Cell(30,5,utf8_decode($datos[0]),0,0,'L');
            $pdf->Cell(25,5,utf8_decode($datos[1]),0,0,'L');
            $pdf->Cell(30,5,utf8_decode($datos[2]),0,1,'L');
        }else{
            //$pdf->Cell(50,5,utf8_decode(strtoupper($row5['detalle_resultado_resul'])),0,1,'L');
        }
        $nrow5++;
  }else{}
}
$y=$pdf->GetY();
$pdf->SetFont('arial','BU',12);
$pdf->SetTextColor(17, 75, 147);
$pdf->SetX(30);
//$pdf->Cell(120,10,utf8_decode('EXAMEN FISICO-QUIMICO DE ORINA'),0,1,'L');

$consulta3=mysqli_query($con,"SELECT * FROM cabecera_resultado CR INNER JOIN detalle_resultado DR ON CR.cabecera_resultado_id=DR.cabecera_resultado_id INNER JOIN cabecera_examen CE ON CR.cabecera_exa_id=CE.cabecera_exa_id INNER JOIN paciente P ON CE.id_paciente=P.id_paciente WHERE CR.cabecera_exa_id='$idcabecera' AND CR.cabecera_tipo_formato='3' and detalle_resultado_seccion='Examen Fisico-Quimico de Orina' ");
$consulta33=mysqli_query($con,"SELECT * FROM cabecera_resultado CR INNER JOIN detalle_resultado DR ON CR.cabecera_resultado_id=DR.cabecera_resultado_id INNER JOIN cabecera_examen CE ON CR.cabecera_exa_id=CE.cabecera_exa_id INNER JOIN paciente P ON CE.id_paciente=P.id_paciente WHERE CR.cabecera_exa_id='$idcabecera' AND CR.cabecera_tipo_formato='3' and detalle_resultado_seccion='Examen Fisico-Quimico de Orina' ");

$row51=mysqli_fetch_array($consulta33);
// $datos51 = explode('*',$row51['detalle_resultado_resul']);
// $cuenta51 = count($datos51);
if ($row51['detalle_resultado_resul']!=''){
    
    $pdf->Cell(120,10,utf8_decode('EXAMEN FISICO-QUIMICO DE ORINA'),0,1,'L');
     $pdf->SetFont('arial','',10);
}else{
    // $pdf->SetFont('arial','BU',12);
    // $pdf->Cell(100,10,utf8_decode('TEXTO PRUEBA'),0,1,'L');
}


while($row6=mysqli_fetch_array($consulta3)){
$y=$pdf->GetY();
 $pdf->SetXY(20,$y);

  //$pdf->Cell(70,5,utf8_decode(strtoupper($row5['detalle_resultado_tipoexa'].":")),0,0,'L');
  if($row6['detalle_resultado_tipoexa']=="Null"){
        //$pdf->Cell(70,5,utf8_decode(strtoupper($row5['detalle_resultado_id'].":")),0,0,'L');
    }else{
        $pdf->Cell(70,5,utf8_decode(strtoupper($row6['detalle_resultado_tipoexa'].":asd1")),0,0,'L');
    }

  $datos = explode('*',$row6['detalle_resultado_resul']);
  if($row6['detalle_resultado_resul']!=''){
    $cuenta = count($datos);
    if ($cuenta>1) {
        $pdf->Cell(30,5,utf8_decode($datos[0]),0,0,'L');
        $pdf->Cell(25,5,utf8_decode($datos[1]),0,0,'L');
        $pdf->Cell(30,5,utf8_decode($datos[2]),0,1,'L');
    }else{
        $pdf->Cell(50,5,utf8_decode($row6['detalle_resultado_resul']),0,1,'L');
    }
  }else{
      
  }
}

$y=$pdf->GetY();
$pdf->SetTextColor(17, 75, 147);
 $pdf->SetFont('arial','BU',10);
 $pdf->SetX(30);
//$pdf->Cell(120,10,utf8_decode('SEDIMENTOS'),0,1,'L');
 $consulta4=mysqli_query($con,"SELECT * FROM cabecera_resultado CR INNER JOIN detalle_resultado DR ON CR.cabecera_resultado_id=DR.cabecera_resultado_id INNER JOIN cabecera_examen CE ON CR.cabecera_exa_id=CE.cabecera_exa_id INNER JOIN paciente P ON CE.id_paciente=P.id_paciente WHERE CR.cabecera_exa_id='$idcabecera' AND CR.cabecera_tipo_formato='3' and detalle_resultado_seccion='Sedimento' ");
$consulta44=mysqli_query($con,"SELECT * FROM cabecera_resultado CR INNER JOIN detalle_resultado DR ON CR.cabecera_resultado_id=DR.cabecera_resultado_id INNER JOIN cabecera_examen CE ON CR.cabecera_exa_id=CE.cabecera_exa_id INNER JOIN paciente P ON CE.id_paciente=P.id_paciente WHERE CR.cabecera_exa_id='$idcabecera' AND CR.cabecera_tipo_formato='3' and detalle_resultado_seccion='Sedimento' ");
$row51=mysqli_fetch_array($consulta44);
// $datos51 = explode('*',$row51['detalle_resultado_resul']);
// $cuenta51 = count($datos51);
if ($row51['detalle_resultado_resul']!=''){
    $pdf->Cell(120,10,utf8_decode('SEDIMENTOS'),0,1,'L');
     $pdf->SetFont('arial','',10);
}else{
    // $pdf->SetFont('arial','BU',12);
    // $pdf->Cell(100,10,utf8_decode('TEXTO PRUEBA'),0,1,'L');
}
while($row7=mysqli_fetch_array($consulta4)){
$y=$pdf->GetY();
 $pdf->SetXY(20,$y);


  //$pdf->Cell(70,5,utf8_decode(strtoupper($row5['detalle_resultado_tipoexa'].":")),0,0,'L');
    if($row7['detalle_resultado_tipoexa']=="Null"){
        //$pdf->Cell(70,5,utf8_decode(strtoupper($row5['detalle_resultado_id'].":")),0,0,'L');
    }else{
        $pdf->Cell(70,5,utf8_decode(strtoupper($row7['detalle_resultado_tipoexa'].": asd2")),0,0,'L');
    }

  $datos = explode('*',$row7['detalle_resultado_resul']);
  if($row7['detalle_resultado_resul']!=''){
      $cuenta = count($datos);
      if ($cuenta>1) {
        $pdf->Cell(30,5,utf8_decode($datos[0]),0,0,'L');
        $pdf->Cell(25,5,utf8_decode($datos[1]),0,0,'L');
        $pdf->Cell(30,5,utf8_decode($datos[2]),0,1,'L');
      }else{
        $pdf->Cell(50,5,utf8_decode($row7['detalle_resultado_resul']),0,1,'L');
      }
  }else{}
}

$y=$pdf->GetY();
$pdf->SetTextColor(17, 75, 147);
 $pdf->SetFont('arial','BU',10);
 $pdf->SetX(30);
// $pdf->Cell(120,10,utf8_decode('EXAMEN DE HECES'),0,1,'L');
$consulta4=mysqli_query($con,"SELECT * FROM cabecera_resultado CR INNER JOIN detalle_resultado DR ON CR.cabecera_resultado_id=DR.cabecera_resultado_id INNER JOIN cabecera_examen CE ON CR.cabecera_exa_id=CE.cabecera_exa_id INNER JOIN paciente P ON CE.id_paciente=P.id_paciente WHERE CR.cabecera_exa_id='$idcabecera' AND CR.cabecera_tipo_formato='3' and detalle_resultado_seccion='Examen de Heces' ");
$consulta44=mysqli_query($con,"SELECT * FROM cabecera_resultado CR INNER JOIN detalle_resultado DR ON CR.cabecera_resultado_id=DR.cabecera_resultado_id INNER JOIN cabecera_examen CE ON CR.cabecera_exa_id=CE.cabecera_exa_id INNER JOIN paciente P ON CE.id_paciente=P.id_paciente WHERE CR.cabecera_exa_id='$idcabecera' AND CR.cabecera_tipo_formato='3' and detalle_resultado_seccion='Examen de Heces' ");
$row51=mysqli_fetch_array($consulta44);
// $datos51 = explode('*',$row51['detalle_resultado_resul']);
// $cuenta51 = count($datos51);
if ($row51['detalle_resultado_resul']!=''){
    $pdf->Cell(120,10,utf8_decode('EXAMEN DE HECES'),0,1,'L');
    $pdf->SetFont('arial','',10);
}else{
    // $pdf->SetFont('arial','BU',12);
    // $pdf->Cell(100,10,utf8_decode('TEXTO PRUEBA'),0,1,'L');
}
while($row8=mysqli_fetch_array($consulta4)){
$y=$pdf->GetY();
 $pdf->SetXY(20,$y);


  //$pdf->Cell(70,5,utf8_decode(strtoupper($row5['detalle_resultado_tipoexa'].":")),0,0,'L');
  if($row8['detalle_resultado_tipoexa']=="Null"){
        //$pdf->Cell(70,5,utf8_decode(strtoupper($row5['detalle_resultado_id'].":")),0,0,'L');
    }else{
        $pdf->Cell(70,5,utf8_decode(strtoupper($row8['detalle_resultado_tipoexa'].": asd3")),0,0,'L');
    }

  $datos = explode('*',$row8['detalle_resultado_resul']);
  if($row8['detalle_resultado_resul']!=''){
      $cuenta = count($datos);
      if ($cuenta>1) {
        $pdf->Cell(30,5,utf8_decode($datos[0]),0,0,'L');
        $pdf->Cell(25,5,utf8_decode($datos[1]),0,0,'L');
        $pdf->Cell(30,5,utf8_decode($datos[2]),0,1,'L');
      }else{
        $pdf->Cell(50,5,utf8_decode($row8['detalle_resultado_resul']),0,1,'L');
      }
  }else{}
}

$y=$pdf->GetY();
$pdf->SetTextColor(17, 75, 147);
 $pdf->SetFont('arial','BU',10);
 $pdf->SetX(30);
// $pdf->Cell(120,10,utf8_decode('OBSERVACIÓN MICROSCÓPICA'),0,1,'L');
$consulta4=mysqli_query($con,"SELECT * FROM cabecera_resultado CR INNER JOIN detalle_resultado DR ON CR.cabecera_resultado_id=DR.cabecera_resultado_id INNER JOIN cabecera_examen CE ON CR.cabecera_exa_id=CE.cabecera_exa_id INNER JOIN paciente P ON CE.id_paciente=P.id_paciente WHERE CR.cabecera_exa_id='$idcabecera' AND CR.cabecera_tipo_formato='3' and detalle_resultado_seccion='Observacion Microscopica' ");
$consulta44=mysqli_query($con,"SELECT * FROM cabecera_resultado CR INNER JOIN detalle_resultado DR ON CR.cabecera_resultado_id=DR.cabecera_resultado_id INNER JOIN cabecera_examen CE ON CR.cabecera_exa_id=CE.cabecera_exa_id INNER JOIN paciente P ON CE.id_paciente=P.id_paciente WHERE CR.cabecera_exa_id='$idcabecera' AND CR.cabecera_tipo_formato='3' and detalle_resultado_seccion='Observacion Microscopica' ");
$row51=mysqli_fetch_array($consulta44);
// $datos51 = explode('*',$row51['detalle_resultado_resul']);
// $cuenta51 = count($datos51);
if ($row51['detalle_resultado_resul']!=''){
    $pdf->Cell(120,10,utf8_decode('OBSERVACIÓN MICROSCÓPICA'),0,1,'L');
    $pdf->SetFont('arial','',10);
}else{
    // $pdf->SetFont('arial','BU',12);
    // $pdf->Cell(100,10,utf8_decode('TEXTO PRUEBA'),0,1,'L');
}
while($row9=mysqli_fetch_array($consulta4)){
$y=$pdf->GetY();
 $pdf->SetXY(20,$y);


  //$pdf->Cell(70,5,utf8_decode(strtoupper($row5['detalle_resultado_tipoexa'].":")),0,0,'L');
  if($row9['detalle_resultado_tipoexa']=="Null"){
        //$pdf->Cell(70,5,utf8_decode(strtoupper($row5['detalle_resultado_id'].":")),0,0,'L');
    }else{
        $pdf->Cell(70,5,utf8_decode(strtoupper($row9['detalle_resultado_tipoexa'].":")),0,0,'L');
    }

  $datos = explode('*',$row9['detalle_resultado_resul']);
  if($row9['detalle_resultado_resul']!=''){
      $cuenta = count($datos);
      if ($cuenta>1) {
        $pdf->Cell(30,5,utf8_decode($datos[0]),0,0,'L');
        $pdf->Cell(25,5,utf8_decode($datos[1]),0,0,'L');
        $pdf->Cell(30,5,utf8_decode($datos[2]),0,1,'L');
      }else{
        $pdf->Cell(50,5,utf8_decode($row9['detalle_resultado_resul']),0,1,'L');
      }
  }else{}
}
$y=$pdf->GetY();
//$pdf->Line(80,$y+30,120,$y+30);


$pdf->Output();
 ?>