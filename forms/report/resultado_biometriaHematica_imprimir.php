<?php
include('cabecera_resultados.php');
include('../config/config.php');


$idcabecera=$_REQUEST['idc'];
$idpaciente=$_REQUEST['idp'];

$consulta=mysqli_query($con,"SELECT * FROM cabecera_resultado CR INNER JOIN detalle_resultado DR ON CR.cabecera_resultado_id=DR.cabecera_resultado_id INNER JOIN cabecera_examen CE ON CR.cabecera_exa_id=CE.cabecera_exa_id INNER JOIN paciente P ON CE.id_paciente=P.id_paciente WHERE CR.cabecera_exa_id='$idcabecera' AND CR.cabecera_tipo_formato='6' ");

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

$pdf->SetFont('arial','BU',12);
$pdf->SetX(30);
$pdf->Cell(55,10,utf8_decode('PARAMETROS'),0,0,'L');
$pdf->SetFont('arial','B',12);
$pdf->Cell(100,10,'Resultado        Unidades     Rango Ref.',0,1,'L');
  $pdf->SetFont('arial','',10);
$consulta2=mysqli_query($con,"SELECT * FROM cabecera_resultado CR INNER JOIN detalle_resultado DR ON CR.cabecera_resultado_id=DR.cabecera_resultado_id INNER JOIN cabecera_examen CE ON CR.cabecera_exa_id=CE.cabecera_exa_id INNER JOIN paciente P ON CE.id_paciente=P.id_paciente WHERE CR.cabecera_exa_id='$idcabecera' AND CR.cabecera_tipo_formato='6' and detalle_resultado_seccion='Biometria' ");
$consulta22=mysqli_query($con,"SELECT * FROM cabecera_resultado CR INNER JOIN detalle_resultado DR ON CR.cabecera_resultado_id=DR.cabecera_resultado_id INNER JOIN cabecera_examen CE ON CR.cabecera_exa_id=CE.cabecera_exa_id INNER JOIN paciente P ON CE.id_paciente=P.id_paciente WHERE CR.cabecera_exa_id='$idcabecera' AND CR.cabecera_tipo_formato='6' and detalle_resultado_seccion='Biometria' ");

$nrow5=0;
while($row2=mysqli_fetch_array($consulta2)){
$y=$pdf->GetY();
$pdf->SetXY(20,$y);

    if($row2['detalle_resultado_tipoexa']=="Null"){
        //$pdf->Cell(70,5,utf8_decode(strtoupper($row5['detalle_resultado_id'].":")),0,0,'L');
    }else{
        $pdf->Cell(70,5,utf8_decode(strtoupper($row2['detalle_resultado_tipoexa'].":")),0,0,'L');
    }
    
    if($row2['detalle_resultado_resul']!=''){
        $datos = explode('*',$row2['detalle_resultado_resul']);
        $cuenta = count($datos);
        if ($cuenta>1) {
            $pdf->Cell(30,5,utf8_decode($datos[0]),0,0,'L');
            $pdf->Cell(25,5,utf8_decode($datos[1]),0,0,'L');
            $pdf->Cell(30,5,utf8_decode($datos[2]),0,1,'L');
        }else{
        // $pdf->Cell(50,5,utf8_decode(strtoupper($row2['detalle_resultado_resul'])),0,1,'L');
        }
        $nrow5++;
    }else{}
}
$y=$pdf->GetY();
$pdf->SetFont('arial','BU',12);
$pdf->SetTextColor(17, 75, 147);
$pdf->SetX(30);
//$pdf->Cell(120,10,utf8_decode('CELULAS ATIPICAS'),0,1,'L');

$consulta3=mysqli_query($con,"SELECT * FROM cabecera_resultado CR INNER JOIN detalle_resultado DR ON CR.cabecera_resultado_id=DR.cabecera_resultado_id INNER JOIN cabecera_examen CE ON CR.cabecera_exa_id=CE.cabecera_exa_id INNER JOIN paciente P ON CE.id_paciente=P.id_paciente WHERE CR.cabecera_exa_id='$idcabecera' AND CR.cabecera_tipo_formato='6' and detalle_resultado_seccion='Celulas Atipicas' ");
$consulta33=mysqli_query($con,"SELECT * FROM cabecera_resultado CR INNER JOIN detalle_resultado DR ON CR.cabecera_resultado_id=DR.cabecera_resultado_id INNER JOIN cabecera_examen CE ON CR.cabecera_exa_id=CE.cabecera_exa_id INNER JOIN paciente P ON CE.id_paciente=P.id_paciente WHERE CR.cabecera_exa_id='$idcabecera' AND CR.cabecera_tipo_formato='6' and detalle_resultado_seccion='Celulas Atipicas' ");

$row51=mysqli_fetch_array($consulta33);
$datos51 = explode('*',$row51['detalle_resultado_resul']);
$cuenta51 = count($datos51);
if ($cuenta51>1) {
    $pdf->SetFont('arial','BU',12);
    $pdf->Cell(120,10,utf8_decode('CELULAS ATIPICAS'),0,1,'L');
    $pdf->SetFont('arial','',10);
}else{
    // $pdf->SetFont('arial','BU',12);
    // $pdf->Cell(100,10,utf8_decode('TEXTO PRUEBA'),0,1,'L');
}

while($row3=mysqli_fetch_array($consulta3)){
$y=$pdf->GetY();
 $pdf->SetXY(20,$y);

    if($row3['detalle_resultado_tipoexa']=="Null"){
        //$pdf->Cell(70,5,utf8_decode(strtoupper($row5['detalle_resultado_id'].":")),0,0,'L');
    }else{
        $pdf->Cell(70,5,utf8_decode(strtoupper($row3['detalle_resultado_tipoexa'].":")),0,0,'L');
    }
    
    if($row3['detalle_resultado_resul']!=''){
        $datos = explode('*',$row3['detalle_resultado_resul']);
        $cuenta = count($datos);
        if ($cuenta>1) {
            $pdf->Cell(30,5,utf8_decode($datos[0]),0,0,'L');
            $pdf->Cell(25,5,utf8_decode($datos[1]),0,0,'L');
            $pdf->Cell(30,5,utf8_decode($datos[2]),0,1,'L');
        }else{
            //$pdf->Cell(50,5,utf8_decode($row3['detalle_resultado_resul']),0,1,'L');
        }
    }else{}
}

$y=$pdf->GetY();
$pdf->SetTextColor(17, 75, 147);
 $pdf->SetFont('arial','BU',10);
 $pdf->SetX(30);
//$pdf->Cell(120,10,utf8_decode('EXTENDIDO SANGUINEO'),0,1,'L');
$consulta4=mysqli_query($con,"SELECT * FROM cabecera_resultado CR INNER JOIN detalle_resultado DR ON CR.cabecera_resultado_id=DR.cabecera_resultado_id INNER JOIN cabecera_examen CE ON CR.cabecera_exa_id=CE.cabecera_exa_id INNER JOIN paciente P ON CE.id_paciente=P.id_paciente WHERE CR.cabecera_exa_id='$idcabecera' AND CR.cabecera_tipo_formato='6' and detalle_resultado_seccion='Extendido Sanguineo' ");
$consulta44=mysqli_query($con,"SELECT * FROM cabecera_resultado CR INNER JOIN detalle_resultado DR ON CR.cabecera_resultado_id=DR.cabecera_resultado_id INNER JOIN cabecera_examen CE ON CR.cabecera_exa_id=CE.cabecera_exa_id INNER JOIN paciente P ON CE.id_paciente=P.id_paciente WHERE CR.cabecera_exa_id='$idcabecera' AND CR.cabecera_tipo_formato='6' and detalle_resultado_seccion='Extendido Sanguineo' ");

$row54=mysqli_fetch_array($consulta44);
$datos54 = explode('*',$row54['detalle_resultado_resul']);
$cuenta54 = count($datos54);
if ($cuenta54>1) {
    $pdf->SetFont('arial','BU',12);
    $pdf->Cell(120,10,utf8_decode('EXTENDIDO SANGUINEO'),0,1,'L');
    $pdf->SetFont('arial','',10);
}else{
    // $pdf->SetFont('arial','BU',12);
    // $pdf->Cell(100,10,utf8_decode('TEXTO PRUEBA'),0,1,'L');
}

while($row4=mysqli_fetch_array($consulta4)){
$y=$pdf->GetY();
 $pdf->SetXY(20,$y);

    if($row4['detalle_resultado_tipoexa']=="Null"){
        //$pdf->Cell(70,5,utf8_decode(strtoupper($row5['detalle_resultado_id'].":")),0,0,'L');
    }else{
        $pdf->Cell(70,5,utf8_decode(strtoupper($row4['detalle_resultado_tipoexa'].":")),0,0,'L');
    }

    if($row4['detalle_resultado_resul']!=''){
        $datos = explode('*',$row4['detalle_resultado_resul']);
        $cuenta = count($datos);
        if ($cuenta>1) {
            $pdf->Cell(30,5,utf8_decode($datos[0]),0,0,'L');
            $pdf->Cell(25,5,utf8_decode($datos[1]),0,1,'L');
        }else{
            //$pdf->Cell(50,5,utf8_decode($row4['detalle_resultado_resul']),0,1,'L');
        }
    }else{}
}

$y=$pdf->GetY();
//$pdf->Line(80,$y+30,120,$y+30);


$pdf->Output();
 ?>
