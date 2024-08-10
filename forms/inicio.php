<?php include("cabecera.php"); ?>
<!--================Header Menu Area =================-->
<?php include("menu2.php"); ?>
<!--================Header Menu Area =================-->

<!--================ Banner Area =================-->
<!--================End Banner Area =================-->

<!--================ Script Area =================-->
<section class="home_banner_area2">
	<div class="banner_inner d-flex align-items-center">
		<div class="container">
			<div class="banner_content row">
				<div class="col-lg-12">
				    <div style="background: rgba(0,0,0,.4); border-radius:5px; padding: 5px 15px; width: 550px;">
				        <h1 >LABORATORIO CLÍNICO LOLY</h1>
				    </div>
					<p> Al cuidado de la salud</p>
						<!-- <a class="main_btn mr-10" href="#">Bienvenido</a> -->
				</div>
			</div>
		</div>
	</div>
</section>
<!--================ End Script Area =================-->

<!--================ Start Appointment Area =================-->
<!--================ End Appointment Area =================-->

<!--================ start footer Area =================-->
<?php include('scripts.php'); ?>
<!--================ End footer Area =================-->
</body>

</html>
<!-- ELIMINADO -->
<?php if (isset($_SESSION['INGRESO'])) { 
  if ($_SESSION['INGRESO']==1){ ?>
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
  title: 'Inicio Exitoso'
})
}
ejecutarEjemplo2();
</script>
<?php $_SESSION['INGRESO']=0; } }?>