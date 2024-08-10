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
        <h2 style="color: #000000">Búsqueda Pacientes</h2>
        <div class="page_link">
          <a style="color: #000000" href="inicio.php">Inicio</a>
          <a style="color: #000000" href="busqueda_paciente.php">Buscar Pacientes</a>
        </div>
      </div>
    </div>
  </div>
</section>
<!--================End Banner Area =================-->

<!--================ Script Area =================-->

<script>
  function soloLetras(e){
     key = e.keyCode || e.which;
     tecla = String.fromCharCode(key).toLowerCase();
     letras = " áéíóúabcdefghijklmnñopqrstuvwxyz";
     especiales = "8-37-39-46";

     tecla_especial = false
     for(var i in especiales){
          if(key == especiales[i]){
              tecla_especial = true;
              break;
          }
      }
      if(letras.indexOf(tecla)==-1 && !tecla_especial){
          return false;
      }
  }
</script>

<script>
  function valida(e){
    tecla = (document.all) ? e.keyCode : e.which;

    //Tecla de retroceso para borrar, siempre la permite
    if (tecla==8){
        return true;
      }
    // Patron de entrada, en este caso solo acepta numeros
    patron =/[0-9]/;
    tecla_final = String.fromCharCode(tecla);
    return patron.test(tecla_final);
  }
</script>
<!--================ End Script Area =================-->

<!--================ Start Appointment Area =================-->
<div class="container-login100" style="background: #B8E1F7;">
<br><br>
            <div class="table-responsive">
                <div class="cont_tabla">
                    <table class="tabla" >
                        <thead>
                            <tr>
                                <th>NOMBRE</th>
                                <th>EDAD</th>
                                <th>IDENTIFICACION</th>
                                <th>SEXO</th>
                                <th>CONTRASEÑA_APP</th>
                                <th>EDITAR / DESACTIVAR</th>
                            </tr>
                        </thead>
                        <tr>
                        <?php
                            $consulta3=mysqli_query($con,"SELECT * from paciente P inner join estado E on P.estado=E.id_estado inner join sexo S on P.sexo=S.id_sexo WHERE estado='1'");
                            while($row3=mysqli_fetch_array($consulta3)){
                        ?>
                            <td><?php echo $row3['nombres']." ".$row3['apellidos']; ?> </td>
                            <td><?php echo $row3['edad']; ?> </td>
                            <td><?php echo $row3['identificacion']; ?> </td>
                            <td><?php echo $row3['sexo']; ?> </td>
                            <td><?php echo $row3['paciente_clave']; ?> </td>
                            <td>
                                <div class="cont_tbn_tb">
                                    <a href="editar_paciente.php?id=<?php echo $row3['id_paciente']; ?>">
                                    <button type="button" title="Editar" class="modificar" name="button"><i class="far fa-edit"> </i></button>
                                    </a>
                                    <button type="button" class="eliminar m-l-5" title="Desactivar" id="<?php echo $row3['id_paciente'] ?>" name="button" id="elim"><i class="fas fa-user-slash" id="<?php echo $row3['id_paciente'] ?>"></i>
                            </button>
                                </div>

                            </td>
                        </tr>
<script type="text/javascript">
$('.eliminar').click(function(e){

  var id_emp= e.target.id;
            
  const swalWithBootstrapButtons = Swal.mixin({
    customClass: {
      confirmButton: 'btn btn-success',
      cancelButton: 'btn btn-danger'
    },
    buttonsStyling: false
  })

  swalWithBootstrapButtons.fire({
    title: 'Esta Seguro?',
    text: "Desactivar el paciente!",
    icon: 'warning',
    showCancelButton: true,
    confirmButtonText: 'Si, eliminar!',
    cancelButtonText: 'No, cancelar!',
    reverseButtons: true
  }).then((result) => {
    if (result.value) {
      document.location.href="app/eliminarPaciente.php?id="+id_emp;
    } else if (
      /* Read more about handling dismissals below */
      result.dismiss === Swal.DismissReason.cancel
    ) {

    }
  })
})
</script>
                        <?php } ?>
                    </table>
                </div>
            </div>
  </div>
<!--================ End Appointment Area =================-->

<!--================ start footer Area =================-->
<?php include('scripts.php'); ?>

<script src="js/jquery.dataTables.min.js" charset="utf-8"></script>
<script>
$(document).ready( function () {
    $('.tabla').DataTable();
} );
</script>
<!--================ End footer Area =================-->
</body>

</html>

<?php } ?>
<!-- ELIMINADO -->
<?php if (isset($_SESSION['eliminar'])) { 
  if ($_SESSION['eliminar']==1){ ?>
<script>
function ejecutarEjemplo2(){
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
  title: 'Paciente Eliminado'
})
}
ejecutarEjemplo2();
</script>
<?php $_SESSION['eliminar']=0; } }?>

<!-- EDITADO -->
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
  title: 'Datos Editados Correctamente'
})
}
ejecutarEjemplo();
</script>
<?php $_SESSION['confirmar']=0; } }?>