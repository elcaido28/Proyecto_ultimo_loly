<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title> Laboratorio Loly </title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">

	<link rel="stylesheet" type="text/css" href="css/sweetalert2.min.css">
<!--===============================================================================================-->
</head>
<body>
     <script src="https://kit.fontawesome.com/2c36e9b7b1.js"></script>
	
	
	 <?php
      if (isset($_POST['cedula'])) {
         include('recuperar_clave_envio.php');
      }
     ?>
	<div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
				<form class="login100-form validate-form" method="post" action="" name="formix" id="formix">   <!--abrir formulario cuando inicia sesion-->
					<span class="login100-form-title p-b-49">
						Recuperar Contraseña
					</span>

					<div class="wrap-input100 validate-input m-b-23" data-validate = "Usuario es requerido">
						<span class="label-input100">Identificación</span>
						<input class="input100" type="text" name="cedula"  maxlength="13" id="cedula" placeholder="Identificación" required autocomplete="off">
					</div>

					<div class="wrap-input100 validate-input" data-validate="Contraseña requerida">
						<span class="label-input100">Correo</span>
						<input class="input100" type="text" name="correo" id="correo" placeholder="Correo" required autocomplete="off"> <!--agregar id="username"-->
						
					</div>
					<div class="text-right p-t-8 p-b-31">
						<a href="login.php">
						<i class="fas fa-door-open"></i>	REGRESAR
						</a>
						
					</div>
					
				
					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<input class="login100-form-btn-aceptar" type="submit" value="Enviar" >
						</div>
					</div>
						
				</form>
			</div>
		</div>
	</div>
	
	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

	<script src="js/sweetalert2.min.js"></script>

</body>
</html>
<?php if (isset($envioexitoso)) { 
  if ($envioexitoso==1){ ?>
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
  title: 'Envio exitoso'
})
}
ejecutarEjemplo2();
</script>
<?php $envioexitoso=0; }else{ ?>
    
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
  icon: 'warning',
  title: 'Fallo envio'
})
}
ejecutarEjemplo2();
</script>
 <?php } } ?>

<?php
// $_SESSION['no_existe']=1;
if (isset($envioexitoso)) { 
	if ($envioexitoso==2){ ?>
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
  icon: 'warning',
  title: 'Usted no esta Registrado'
})
}
ejecutarEjemplo2();
</script>
<?php $envioexitoso=0; } } ?>