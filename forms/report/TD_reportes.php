<?php


require '../FPDF/fpdf.php';

class PDF extends FPDF
{

  function Header()
  {
   //  include('conexion.php');
   //  $result= mysqli_query($con,"SELECT * from informacion");
   //  $row= mysqli_fetch_assoc($result);
   if($this->PageNo()==1){
   $this->image("img/labo.jpg",15,10,25); }
   $this->SetFont('arial','B',10);
   $this->SetXY(140,6);
   $this->Cell(50,10,'Fecha: Guayaquil, '.date('d-m-Y').'',0,1,'C');
   $this->SetFont('arial','B',14);
   $this->SetXY(80,10);
   $this->Cell(50,10,'LABORATORIO LOLY',0,1,'C');
  }
  function Footer(){
    $this->SetY(-15);
    $this->SetFont('arial','I',8);
    $this->Cell(0,10,utf8_decode('Página').$this->PageNo().'/{nb}',0,0,'C');
  }

}

 ?>
