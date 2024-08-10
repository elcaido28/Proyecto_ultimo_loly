<?php include("cabecera.php"); ?>
<!--================Header Menu Area =================-->
<?php include("menu2.php"); ?>
<!--================Header Menu Area =================-->
<?php  if ($perfil >= 1){ ?>
<!--================ Banner Area =================-->
<section class="banner_area">
  <div class="banner_inner d-flex align-items-center">
    <div class="container" >
      <div class="banner_content text-left">
        <h2 style="color: #000000">Búsqueda Cotización</h2>
        <div class="page_link">
          <a style="color: #000000" href="inicio.php">Inicio</a>
          <a style="color: #000000" href="busqueda_paciente.php">Buscar Cotización</a>
        </div>
      </div>
    </div>
  </div>
</section>
<!--================End Banner Area =================-->

<!--================ Script Area =================-->


<!--================ End Script Area =================-->

<!--================ Start Appointment Area =================-->
<div class="container-login100" style="background: #B8E1F7;">
<br><br>
            <div class="table-responsive">
                <div class="cont_tabla">
                    <table class="tabla" >
                        <thead>
                            <tr>
                                <th>FECHA</th>
                                <th>Nº SOLICITUD</th>
                                <!--<th>Nº TURNO</th>-->
                                <th>PACIENTE</th>
                                <th>DESCUENTO</th>
                                <th>PRECIO $</th>
                                <th>IMPRIMIR</th>
                                <th>INGRESAR EXAMEN</th>
                            </tr>
                        </thead>
                        <tr>
                        <?php
                            $consulta3=mysqli_query($con,"SELECT * from cabecera_cotizacion CC inner join paciente P on P.id_paciente=CC.id_paciente ");
                            while($row3=mysqli_fetch_array($consulta3)){
                                
                                if($row3['descuento']=='0'){
                                    $descu="Ninguno";
                                }
                                if($row3['descuento']=='1'){
                                    $descu="10%";
                                }
                                if($row3['descuento']=='2'){
                                    $descu="20%";
                                }
                                if($row3['descuento']=='3'){
                                    $descu="30%";
                                }
                        ?>
                            
                            <td><?php echo $row3['fecha']; ?> </td>
                            <td><?php echo $row3['solicitud']; ?> </td>
                            <!--<td><?php echo $row3['turno']; ?> </td>-->
                            <td><?php echo $row3['nombres']." ".$row3['apellidos']; ?> </td>
                            <td><?php echo $descu; ?> </td>
                            <td><?php echo "$ ".$row3['costo']; ?> </td>
                            <td>
                                <div class="cont_tbn_tb">
                                    <a href="report/reporte_cotizacion_vp_cliente_list.php?id=<?php echo $row3['id_cabecera_cotizacion']; ?>" target="_blank">
                                    <button type="button" title="Imprimir" class="modificar" name="button"><i class="fas fa-print"> </i></button>
                                    </a></button>
                                </div>
                            </td>
                            <td>
                              <div class="cont_tbn_tb">
                                <?php if ($row3['id_estado']==1) { ?>
                                <a href="ingreso_examen_xcotizacion.php?idcc=<?php echo $row3['id_cabecera_cotizacion']; ?>">
                                  <button type="button" title="Ingresar" class="modificar" name="button"><i class="fas fa-pen-square" style="font-size: 18px;"></i></button>
                                </a>
                                <?php } else { ?>
                                <button type="button" title="Tiene Datos" class="modificar" name="button" onclick="yatiene()" style="background: #89F0C3;"><i class="fas fa-pen-square" style="font-size: 18px;"></i></button>
                                <?php } ?>
                              </div>
                            </td>
                        </tr>

                        <?php } ?>
                    </table>
                </div>
            </div>
  </div>
<!--================ End Appointment Area =================-->

<!--================ start footer Area =================-->
<?php include('scripts.php'); ?>
<script>
  function yatiene(){
    Swal.fire("Ya tiene datos de exámen");
  }
</script>

<script src="js/jquery.dataTables.min.js" charset="utf-8"></script>
<script>
// $(document).ready( function () {
//     $('.tabla').DataTable();
// } );

$(document).ready(function() {
    $('.tabla').DataTable( {
        "order": [[1, "desc" ]]
    } );
} );
</script>
<!--================ End footer Area =================-->
</body>

</html>

<?php } ?>
<!-- GUARDADO -->
<?php if (isset($_SESSION['confirmar'])) { 
  if ($_SESSION['confirmar']==1){ ?>
<script>
function ejecutarEjemplo(){
const Toast = Swal.mixin({
  toast: true,
  position: 'top-end',
  showConfirmButton: false,
  timer: 2000,
  timerProgressBar: true,
  onOpen: (toast) => {
    toast.addEventListener('mouseenter', Swal.stopTimer)
    toast.addEventListener('mouseleave', Swal.resumeTimer)
  }
})

Toast.fire({
  icon: 'success',
  title: 'Datos Guardados'
})
}
ejecutarEjemplo();
</script>
<?php $_SESSION['confirmar']=0; } }?>

