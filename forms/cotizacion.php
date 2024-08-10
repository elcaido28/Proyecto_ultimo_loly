<?php include("cabecera.php"); ?>
<!--================Header Menu Area =================-->
<?php include("menu2.php"); ?>
<!--================Header Menu Area =================-->
<?php  if ($perfil >= 1){ ?>
  <!--================ Banner Area =================-->
  <section class="banner_area">
<link rel="stylesheet" href="css/jquery-ui.css">
<script src="js/jquery.min.js"></script>
<script src="js/jquery-ui.js"></script>
    <div class="banner_inner d-flex align-items-center">
      <div class="container" >
        <div class="banner_content text-left">
          <h2 style="color: #000000">Cotización</h2>
          <div class="page_link">
            <a style="color: #000000" href="inicio.php">Inicio</a>
            <a style="color: #000000" href="cotizacion.php">Cotización</a> | <button class="btn btn-primary" id="abrir" data-toggle="modal" data-target="#modalAgregarUsuario"> Nuevo Paciente </button>
          </div>
        </div>
      </div>
    </div>
    <link rel="stylesheet" href="para_app/estilos_app.css">
  </section>
  <!--================End Banner Area =================-->

  <!--================ Script Area =================-->

<script>
    function solonumeros(e){
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
        function solonumeros2(e){
      tecla = (document.all) ? e.keyCode : e.which;

      //Tecla de retroceso para borrar, siempre la permite
      if (tecla==8){
          return true;
        }    
      // Patron de entrada, en este caso solo acepta numeros
      patron =/[0-9.]/;
      tecla_final = String.fromCharCode(tecla);
      return patron.test(tecla_final);
    }
</script>

  <!--================ End Script Area =================-->

  <!--================ Start Appointment Area =================-->
  <div class="container-login100" style="background: #B8E1F7;">
     
<script src="https://kit.fontawesome.com/805c37e370.js" crossorigin="anonymous"></script>

<?php   include('config/config.php'); ?>
    <div class="content_valor">
      <div class="valor" id="valor_cotiza">

      </div>
      <div class="boton">
        <input type="button" id="save_value" class="btn_calcu" name="" value="Calcular Cotización">
        <a href="" class="actuliz"><i class="fas fa-undo-alt" title="Nueva Cotizaión"></i></a>
        <a href="#" id="abrir2" class="actuliz2" title="Guardar Cotización" ><i class="far fa-save"></i></a>
      </div>
    </div>


            <div class="cont_tabla">
              <table class="tabla" id="tabla">
                  <thead>
                    <tr>
                      <th>NOMBRE DE REACTIVO</th>
                      <th>PRECIO</th>
                      <th>AGREGAR</th>

                    </tr>
                  </thead>
                  <tr>
                  <?php
                    $consulta3=mysqli_query($con,"SELECT * from reactivo WHERE id_estado='1'");
                    while($row3=mysqli_fetch_array($consulta3)){
                  ?>
                    <td><?php echo $row3['nombre_reactivo']; ?> </td>
                    <td><?php echo $row3['precio_reactivo']; ?> </td>
                    <td><label class="checkBoxF checkbox"><input type="checkbox" class="checkBoxF datach" id="<?php echo $row3['id_reactivo']; ?>" value="F-<?php echo $row3['precio_reactivo']; ?>"> <span class="checkBoxF check"></span>
                    </label> </td>
                  </tr>
                  <?php } ?>
              </table>
        </div>
        <script type="text/javascript">
        var acum_id="";
         $('.datach').click(function(e) {
                var idch=e.target.id;
                    
                   
                if(acum_id!=""){
                    
                    if(acum_id.includes(idch)==true){
                     acum_id=acum_id.replace(idch, '');
                    }else{
                     acum_id=acum_id+"-"+idch;
                    }
                }else{
                    acum_id=idch;
                }
                   // alert(acum_id);
                //   var url2='guardar_cotizacion_data.php?reactivos='+acum_id;
	               // document.getElementById('formix_coti').action=url2;
                  // console.log(acum_id);
                  
             });
        </script>
        <script type="text/javascript">
        
          $(document).ready(function() {
            
          $('#save_value').click(function() {
            var val =[];
            var mytable=$("#tabla").DataTable({
              "destroy":true
             })

            //captura el value de todos lo check chequados
            $(':checkbox:checked').each(function(i) {
          //  $(':checkbox:checked:not(#ckbcheckAllF)').each(function(i) {
              val[i]=$(this).val();
            //  console.log(val[i]);

            });
            //alert(val);

            $.ajax({
              type:"POST",
              url:"valida_cotizacion.php",
              data:{
                value:val
              },
              success:function(data) {
                //console.log(data);
              }
            })
            .done(function(respuesta){
              var acum_val=0;
              var dtjson=[];
              dtjson=JSON.parse(respuesta);
              //var result = respuesta.split(",");

              var num_datos = dtjson.length;
              for (var i = 0; i < num_datos; i++) {
                var dt_id = dtjson[i].split("-");
                if (dt_id[0]=="F") {
                  //  alert(dt_id[1]);
                    acum_val=parseFloat(acum_val)+parseFloat(dt_id[1]);
                }
              }
              var data_valor="<h3>El costo de sus examen es:</h2><h1>$ "+acum_val.toFixed(2)+"</h1>";
              $('#valor_cotiza').html(data_valor);
              document.getElementById('costo').value=acum_val.toFixed(2);
              document.querySelector('#descuento').setAttribute("data-costo", acum_val.toFixed(2));
              document.getElementById('abrir2').style.display="flex";
              

            })
          });
});
        </script>

    </div>
     <script src="para_app/jquery.dataTables.min.js" charset="utf-8"></script>
  <script>
    $(document).ready( function () {
        $('.tabla').DataTable();
    } );
    


    </script>


     
  </div>
  <!--================ End Appointment Area =================-->
<div id="miModal" class="modal">
		<div class="flex" id="flex">
			<div class="contenido-modal">
				<div class="modal-header flex">
					<span class="close" id="close">&times;</span>
				</div>
				<div class="modal-body">
				    
		    
 <form class="login100-form validate-form" method="post" action="" name="formix" id="formix">
    <!--abrir formulario cuando inicia sesion-->
        <span class="login100-form-title p-b-49">
            Ingresar Paciente
        </span>

        <div class="parados m-b-20">
            <div class="wrap-input100 validate-input m-b-23 m-r-10" data-validate = "Nombre es requerido">
              <span class="label-input100">Nombres</span>
              <input class="input100" type="text" name="nombres" id="nombres" onkeypress="return soloLetras(event)" onkeyup="return convertir(event)"  placeholder="Ej: Carlos Andres" onpaste="return false" oncopy="return false">
              <span class="focus-input100" data-symbol="&#xf206;"></span>
            </div>
            <div class="wrap-input100 validate-input m-b-23 m-r-10" data-validate = "Nombre es requerido">
              <span class="label-input100">Apellidos</span>
              <input class="input100" type="text" name="apellidos" id="apellidos" required onkeypress="return soloLetras(event)" onkeyup="return convertir(event)" placeholder="Ej: Vera Perez" onpaste="return false" oncopy="return false">
              <span class="focus-input100" data-symbol="&#xf206;"></span>
            </div>
            <div class="wrap-input100 m-b-23 m-r-10">
              <span class="label-input100">Sexo</span>
                  <select class="input100 m-b-17" name="sexo" id="sexo">
                    <option value="">-</option>
                  <?php
                              $consulta=mysqli_query($con,"SELECT * from sexo");
                              while($row=mysqli_fetch_array($consulta)){
                          ?>
                              <option value="<?php echo $row['id_sexo']; ?>"><?php echo $row['abreviatura']; ?></option>
                          <?php } ?>
                        </select>
            </div>
            <div class="wrap-input100 m-b-23">
              <span class="label-input100">Tipo Paciente</span>
                  <select class="input100 m-b-17"  name="tipopaciente" id="tipopaciente">
                    <option value="">-</option>
                  <?php
                              $consulta2=mysqli_query($con,"SELECT * from tipo_paciente");
                              while($row2=mysqli_fetch_array($consulta2)){
                          ?>
                              <option value="<?php echo $row2['id_tipopaciente']; ?>"><?php echo $row2['tipo_paciente']; ?></option>
                          <?php } ?>
                        </select>
            </div>
          </div>

            <div class="parados m-b-20">
            <div class="wrap-input100 m-b-23 m-r-10">
              <span for="tipoid" class="label-input100">Tipo Identificación</span>
                  <select class="input100 m-b-17"  name="tipoid" id="tipoid" onchange="cambio_identi();">
                    <option value="">-</option>
                  <?php
                              $consulta2=mysqli_query($con,"SELECT * from tipo_identificacion");
                              while($row2=mysqli_fetch_array($consulta2)){
                          ?>
                              <option value="<?php echo $row2['id_tipoidentificacion']; ?>"><?php echo $row2['tipo_identificacion']; ?></option>
                          <?php } ?>
                        </select>
            </div>
            <div class="wrap-input100 validate-input m-b-23 m-r-10" data-validate = "Nombre es requerido">
              <span class="label-input100">Identificación</span>
              <input class="input100" type="text" name="cedula" id="cedula" placeholder="Ej: 0929012901" maxlength="10" onkeypress="return valida(event)" onchange="validarCedula()" onpaste="return false" oncopy="return false" disabled>
              <span class="focus-input100" data-symbol="&#xf2c3;"></span>
            </div>
            <div class="wrap-input100 validate-input m-b-23 m-r-10" data-validate="Fecha de Nacimiento es requerida">
              <span class="label-input100">Fecha de Nacimiento</span>
              <input class="input100" type="date" name="fnaci" id="fnaci" required placeholder="Ej: correo@correo.com" onchange="calcularEdad()">
              <span class="focus-input100" data-symbol="&#xf1ec;"></span>
            </div>
            <div class="wrap-input100 validate-input m-b-23" data-validate = "Nombre es requerido">
              <span class="label-input100">Edad</span>
              <input class="input100" type="text" name="edad" id="edad" maxlength="2" placeholder="Ej: 25" onkeypress="return valida(event)" readonly >
              <span class="focus-input100" data-symbol="&#xf142;"></span><!-- &#xf274;icono tipo de sangre -->
            </div>
          </div>
          
          <div class="parados m-b-20">
            <div class="wrap-input100 validate-input m-b-23 m-r-20" data-validate = "Nombre es requerido">
              <span class="label-input100">Celular</span>
              <input class="input100" type="text" name="celular" id="celular" maxlength="10"  placeholder="Ej: 0912345678" onchange="validarCelular()" onpaste="return false" oncopy="return false" onkeypress="return valida(event)">
              <span class="focus-input100" data-symbol="&#xf2d7;"></span>
            </div>
            <div class="wrap-input100 validate-input m-b-23 m-r-20" data-validate = "Nombre es requerido">
              <span class="label-input100">Teléfono</span>
              <input class="input100" type="text" name="telefono" id="telefono" maxlength="7"  placeholder="Ej: 2502729" onchange="validarTelefono()" onpaste="return false" oncopy="return false" onkeypress="return valida(event)">
              <span class="focus-input100" data-symbol="&#xf2bb;"></span>
            </div>
            <div class="wrap-input100 validate-input m-b-23" data-validate = "Nombre es requerido">
              <span class="label-input100">Correo</span>
              <input class="input100" type="text" name="correo" id="correo" onchange="validarcorreo()" placeholder="Ej: Av. 25 calle 8" >
              <span class="focus-input100" data-symbol="&#xf15a;"></span>
            </div>
          </div>
          
          <div class="parados m-b-20">
            <div class="wrap-input100 validate-input m-b-23 m-r-15" data-validate = "Nombre es requerido">
              <span class="label-input100">Dirección</span>
              <input class="input100" type="text" name="direccion" id="direccion"  placeholder="Ej: Av. 25 calle 8">
              <span class="focus-input100" data-symbol="&#xf133;"></span>
            </div>
            <div class="wrap-input100 validate-input m-b-23" data-validate = "Nombre es requerido">
              <span class="label-input100">Observaciones</span>
              <input class="input100" type="text" name="observacion" id="observacion" placeholder="Observacion acerca del paciente" >
              <span class="focus-input100" data-symbol="&#xf158;"></span>
            </div>
          </div>
		    
		   <br><br>
          <div class="container-login100-form-btn">
            <!-- <div class="wrap-login40-form-btn-cancelar"></div> -->
            <div class="wrap-login40-form-btn-aceptar">
              <div class="login100-form-bgbtn-aceptar"></div>
              <input class="login100-form-btn-aceptar" type="button" value="Guardar" onclick="pregunta()">
            </div>
            
          </div>
    </form>
				</div>
				
			</div>
		</div>
	</div>
<script>
    $(document).on('keyup','#nombres', function(){
        var valr= $('#nombres').val();
        if(valr!=""){
           // var texto = MaysPrimera(valr.tolowerCase());
           var texto = toTitleCase(valr); // solo la primera palabra esta en mayuscula
           // var texto = toTitleCase(valr); // todas las palabras empiezan con mayuscula
            document.getElementById('nombres').value=texto;
        }
    });
    $(document).on('keyup','#apellidos', function(){
        var valr= $('#apellidos').val();
        if(valr!=""){
           // var texto = MaysPrimera(valr.tolowerCase());
           var texto = toTitleCase(valr); // solo la primera palabra esta en mayuscula
           // var texto = toTitleCase(valr); // todas las palabras empiezan con mayuscula
            document.getElementById('apellidos').value=texto;
        }
    });
    $(document).on('keyup','#observacion', function(){
        var valr= $('#observacion').val();
        if(valr!=""){
           // var texto = MaysPrimera(valr.tolowerCase());
           var texto = MaysPrimera(valr); // solo la primera palabra esta en mayuscula
           // var texto = toTitleCase(valr); // todas las palabras empiezan con mayuscula
            document.getElementById('observacion').value=texto;
        }
    });
    function toTitleCase(str){
    return str.replace(/(?:^|\s)\w/g, function(match){
      return match.toUpperCase();
    });
  }

  function MaysPrimera(string){
    return string.charAt(0).toUpperCase() + string.slice(1);
  }
</script>
<script>
  function validarcorreo(){
    var correo = document.getElementById('correo');
    //alert(correo);

    if(correo.value!=""){
      var emailRegex = /^[-\w.%+]{1,64}@(?:[a-zA-z]{1,63}\.){1,125}[a-z]{2,63}$/i;
      if (emailRegex.test(correo.value)) {
          //alert("correo correcto");
      } else {
        const Toast = Swal.mixin({
          toast: true,
          position: 'top-end',
          showConfirmButton: false,
          timer: 3000,
          timerProgressBar: true,
          onOpen: (toast) => {
            toast.addEventListener('mouseenter', Swal.stopTimer)
            toast.addEventListener('mouseleave', Swal.resumeTimer)
          }
        })

        Toast.fire({
          icon: 'warning',
          title: 'Correo no válido'
        })
        document.getElementById('correo').value="";
      }
    }else{
      // alert('esta vacio');
    }      
  }
</script>
<script>
  function validarCelular(){
    var vercelu = document.getElementById('celular').value.length;
    if (vercelu<10) {
      document.getElementById('celular').value="";
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
        icon: 'info',
        title: 'El celular debe tener 10 dígitos'
      })
    }else{
      var empi = document.getElementById('celular').value.substring(0, 1);
      if (empi!=0) {
        document.getElementById('celular').value="";
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
          icon: 'info',
          title: 'El celular debe comenzar con 0'
        })
      }
    }
  }

  function validarTelefono(){
    var vercelu = document.getElementById('telefono').value.length;
    if (vercelu<7) {
      document.getElementById('telefono').value="";
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
        icon: 'info',
        title: 'El telefono debe tener 7 dígitos'
      })
    }
  }
</script>
<script>
function calcularEdad() {
  var d1 = '<?php echo date('Y-m-d'); ?>';
  var d2 = document.getElementById('fnaci').value;
  var f1=d1.substring(0,4);
  var f2=d2.substring(0,4);
  if (d1>d2) {
    //alert('Fecha Correcta');
  // cogemos los valores nacimiento
  var fn = document.getElementById('fnaci').value;
  var ano=fn.substring(0,4);
  var ano = parseInt(ano);
  var mes=fn.substring(5,7);
  var mes = parseInt(mes);
  var dia=fn.substring(8,10);
  var dia = parseInt(dia);

  // cogemos los valores actuales
  var fecha_hoy = d1;
  var ahora_ano=fecha_hoy.substring(0,4);
  var ahora_ano = parseInt(ahora_ano);
  var ahora_mes=fecha_hoy.substring(5,7);
  var ahora_mes = parseInt(ahora_mes);
  var ahora_dia=fecha_hoy.substring(8,10);
  var ahora_dia = parseInt(ahora_dia);
  // realizamos el calculo
  var edad = ahora_ano + 1900;
  var edad = edad - ano;

  if (ahora_mes < mes) {
    edad--;
  }
  if ((mes == ahora_mes) && (ahora_dia < dia)) {
    edad--;
  }
  if (edad > 1900) {
    edad -= 1900;
  }
  // calculamos los meses
  var meses = 0;
  if (ahora_mes > mes && dia > ahora_dia){
    meses = ahora_mes - mes - 1;
  }else if (ahora_mes > mes){
      meses = ahora_mes - mes
    }
    if (ahora_mes < mes && dia < ahora_dia){
      meses = 12 - (mes - ahora_mes);
    }else if (ahora_mes < mes){
        meses = 12 - (mes - ahora_mes + 1);
      }
    if (ahora_mes == mes && dia > ahora_dia){
            meses = 11;
    }

  // calculamos los dias
  var dias = 0;
  if (ahora_dia > dia){
      dias = ahora_dia - dia;
  }
  if (ahora_dia < dia) {
    ultimoDiaMes = new Date(ahora_ano, ahora_mes - 1, 0);
    dias = ultimoDiaMes.getDate() - (dia - ahora_dia);
  }
  if (edad==1900) {
    edad = 0;
  }
  //document.getElementById('mostrar').value=edad+' '+meses+' '+dias;
  document.getElementById('edad').value=edad;
  // document.getElementById('meses').value=meses;
  // document.getElementById('dias').value=dias;
  //alert(edad +' años '+ meses +' meses y '+ dias +' días');
  }else{
    document.getElementById('fnaci').value="";
    document.getElementById('edad').value="";
    // document.getElementById('meses').value="";
    // document.getElementById('dias').value="";
    const Toast = Swal.mixin({
        toast: true,
        position: 'top-end',
        showConfirmButton: false,
        timer: 3000,
        timerProgressBar: true,
        onOpen: (toast) => {
          toast.addEventListener('mouseenter', Swal.stopTimer)
          toast.addEventListener('mouseleave', Swal.resumeTimer)
        }
      })

      Toast.fire({
        icon: 'info',
        title: 'Fecha Incorrecta'
      })
  }
}
</script>
<script>
  function cambio_identi(){
    var seleccion = document.getElementById('tipoid').value;
    
    if (seleccion==1 || seleccion==3) {
      //alert(seleccion);
      var loadFile = document.getElementById('cedula');
      loadFile.removeAttribute('disabled');
      loadFile.setAttribute('onkeypress','return valida(event)');
      loadFile.setAttribute('onchange','validarCedula()');
      document.getElementById('cedula').value="";
    }else if(seleccion==2){
      // alert(seleccion);
      document.getElementById('cedula').removeAttribute('disabled');
      var loadFile = document.getElementById('cedula');
      loadFile.removeAttribute('onkeyup');
      loadFile.removeAttribute('onkeypress');
      loadFile.removeAttribute('onchange');
    }else{
      var loadFile = document.getElementById('cedula');
      loadFile.setAttribute('disabled','');
    }
  }
</script>
<script>
$(buscar_cedula());

function buscar_cedula(consulta){
  $.ajax({
    url: 'ajax_cedula_paciente.php',
    type: 'POST',
    dataType: 'html',
    data: {consulta: consulta},
  })
  .done(function(respuesta){
    if(respuesta==''){
      
    }else{
    if(respuesta>0){
      $("#cedula").css({
        "background-color": "rgba(255,87,87,0.5)"
      });
      document.getElementById('cedula').value='';
      const Toast = Swal.mixin({
        toast: true,
        position: 'top-end',
        showConfirmButton: false,
        timer: 3000,
        timerProgressBar: true,
        onOpen: (toast) => {
          toast.addEventListener('mouseenter', Swal.stopTimer)
          toast.addEventListener('mouseleave', Swal.resumeTimer)
        }
      })

      Toast.fire({
        icon: 'warning',
        title: 'Ya existe un paciente con la misma cédula'
      })
    }else{
      $("#cedula").css({
        "background-color": "rgba(56,208,49,0.5)"
      });
    }
    }
    // document.getElementById('cedula').value=respuesta;
  })
  .fail(function(){
    console.log("error")
  })
}
$(document).on('blur','#cedula', function(){

  var valr= $(this).val();
  if(valr!=""){
    buscar_cedula(valr);
  }
});
</script>
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
<script type="text/javascript">
  function validarCedula(){
    var cedula = document.getElementById('cedula').value;
    array = cedula.split( "" );
    var nuevo = cedula;
    //2 4 5 7 9
    num = array.length;
    if ( num < 10) {
      const Toast = Swal.mixin({
        toast: true,
        position: 'top-end',
        showConfirmButton: false,
        timer: 3000,
        timerProgressBar: true,
        onOpen: (toast) => {
          toast.addEventListener('mouseenter', Swal.stopTimer)
          toast.addEventListener('mouseleave', Swal.resumeTimer)
        }
      })

      Toast.fire({
        icon: 'warning',
        title: 'La cédula no puede tener menos de 10 dígitos'
      })
      document.getElementById('cedula').value="";
    }
    if ( num == 10 )
    {
      if(nuevo=="0000000000" || nuevo=="2222222222" || nuevo=="4444444444" || nuevo=="5555555555" || nuevo=="7777777777" || nuevo=="9999999999" || nuevo=="1800000000" || nuevo=="1212121212" || nuevo=="1313131313" || nuevo=="1414141414" || nuevo=="1515151515" || nuevo=="1616161616" || nuevo=="1717171717" || nuevo=="1818181818" || nuevo=="1919191919"){
        // alert( "La c\xe9dula NO es v\xe1lida!!!" );
        const Toast = Swal.mixin({
          toast: true,
          position: 'top-end',
          showConfirmButton: false,
          timer: 3000,
          timerProgressBar: true,
          onOpen: (toast) => {
            toast.addEventListener('mouseenter', Swal.stopTimer)
            toast.addEventListener('mouseleave', Swal.resumeTimer)
          }
        })

        Toast.fire({
          icon: 'warning',
          title: 'La cédula no es válida'
        })
        document.getElementById('cedula').value="";
        $("#cedula").css({
          "background-color": "rgba(0,0,0,0)"
        });
      }
      else
      {
      total = 0;
      digito = (array[9]*1);
      for( i=0; i < (num-1); i++ )
      {
        mult = 0;
        if ( ( i%2 ) != 0 ) {
          total = total + ( array[i] * 1 );
        }
        else
        {
          mult = array[i] * 2;
          if ( mult > 9 )
            total = total + ( mult - 9 );
          else
            total = total + mult;
        }
      }
      decena = total / 10;
      decena = Math.floor( decena );
      decena = ( decena + 1 ) * 10;
      final = ( decena - total );

      if ( ( final == 10 && digito == 0 ) || ( final == digito ) ) {
        $("#cedula").css({
          "background-color": "rgba(56,208,49,0.5)"
        });
        return true;
      }
      else
      {
        const Toast = Swal.mixin({
          toast: true,
          position: 'top-end',
          showConfirmButton: false,
          timer: 3000,
          timerProgressBar: true,
          onOpen: (toast) => {
            toast.addEventListener('mouseenter', Swal.stopTimer)
            toast.addEventListener('mouseleave', Swal.resumeTimer)
          }
        })

        Toast.fire({
          icon: 'warning',
          title: 'La cédula no es válida'
        })
        document.getElementById('cedula').value="";
        nuevo = '';
        $("#cedula").css({
          "background-color": "rgba(0,0,0,0)"
        });
        return false;
      }
      }
    }//fin del primer if
    else
    {
      return false;
    }
  }
</script>
<script>
function pregunta(){
  var msg = '';
  var verificar;
  var ok = true;

  var formularios = document.forms;

   var i=0;
    for (var j=0; j<formularios[i].elements.length-2; j++){
      // msg = msg + '\n\nElemento '+j+ ' del formulario '+(i+1)+ ' tiene id: '+ formularios[i].elements[j].id;
      // msg = msg + ' y name: ' + formularios[i].elements[j].name;
      var contenido = formularios[i].elements[j].value;
      var ids = formularios[i].elements[j].id;
    //   msg = msg + '\n\nElemento '+j+ ' del formulario '+(i+1)+ ' tiene id: '+ formularios[i].elements[j].id;
    //   msg = msg + ' y su contenido es: ' + contenido;
     
    if (j<9 || j>9) {
        if (contenido == '' && ids=='nombres') {
          msg += ", Nombre";
          ok = false;
        }
        if (contenido == '' && ids=='apellidos') {
          msg += ", Apellidos";
          ok = false;
        }
        if (contenido == '' && ids=='sexo') {
          msg += ", Sexo";
          ok = false;
        }
        if (contenido == '' && ids=='tipopaciente') {
          msg += ", Tipo de paciente";
          ok = false;
        }
        if (contenido == '' && ids=='tipoid') {
          msg += ", Tipo de Identificación";
          ok = false;
        }
        if (contenido == '' && ids=='cedula') {
          msg += ", Cédula";
          ok = false;
        }
        if (contenido == '' && ids=='fnaci') {
          msg += ", Fecha de nacimiento";
          ok = false;
        }
        if (contenido == '' && ids=='edad') {
          msg += ", Edad";
          ok = false;
        }
        if (contenido == '' && ids=='celular') {
          msg += ", Celular";
          ok = false;
        }
        // if (contenido == '' && ids=='telefono') {
        //   msg += ", Teléfono";
        //   ok = false;
        // }
        if (contenido == '' && ids=='correo') {
          msg += ", Correo";
          ok = false;
        }
        if (contenido == '' && ids=='direccion') {
          msg += ", Dirección";
          ok = false;
        }
        if (contenido == '' && ids=='observacion') {
          msg += ", Observación";
          ok = false;
        }
        }
    }
  
    var tex = msg.replace(',','');
    
  if (ok == false) {
    Swal.fire('Complete los campos: '+tex);
  }else{
        verificar = '';
        const swalWithBootstrapButtons = Swal.mixin({
                  customClass: {
                    confirmButton: 'btn btn-success',
                    cancelButton: 'btn btn-danger'
                  },
                  buttonsStyling: false
                })

                swalWithBootstrapButtons.fire({
                  title: 'Guardar Datos?',
                  text: "",
                  icon: 'question',
                  showCancelButton: true,
                  confirmButtonText: 'Si, guardar!',
                  cancelButtonText: 'No, cancelar!',
                  reverseButtons: true
                }).then((result) => {
                  if (result.value) {
                    

    var datos2 = $('#formix').serialize();
    console.log(datos2);
    jQuery.ajax({
        type: "POST",
        url: "app/guardarPacienteModal.php",
        data: datos2,
        success: function(data2)
        {
            console.log("respuesta: ", data2);
            
            if(data2=='1'){
                
                ejecutarEjemplo();
                modal.style.display = 'none';
               var i=0;
                for (var j=0; j<formularios[i].elements.length-1; j++){
                  formularios[i].elements[j].value="";
                }
                
            }
        }
    });
// });
                  } else if (
                    /* Read more about handling dismissals below */
                    result.dismiss === Swal.DismissReason.cancel
                  ) {

                  }
                })
  }
}
</script>
	
	
	
	
	




<?php
  $result = mysqli_query($con,"SELECT * FROM paciente");
  $array = array();
  if($result){
    while ($row = mysqli_fetch_array($result)) {
      $equipos = utf8_encode($row['id_paciente']."-     ".$row['nombres']." ".$row['apellidos']);
      $equipo = utf8_decode($equipos);
      array_push($array, $equipo); // equipos
    }
  }
?>
	<div id="miModal2" class="modal">
		<div class="flex" id="flex2">
			<div class="contenido-modal">
				<div class="modal-header flex">
					<span class="close" id="close2">&times;</span>
				</div>
				<div class="modal-body">
				    
				    
				    
        <form class="login100-form validate-form" method="post" action="" name="formix" id="formix_coti" target="_blank">   <!--abrir formulario cuando inicia sesion-->
          <span class="login100-form-title p-b-49">
            Guardar Cotizacion
          </span>
          
        
  
        <div class="parados">
          <div class="wrap-input100 m-b-23 m-r-15">
            <span class="label-input100">Pacientes</span>
            <input class="input100 ui-autocomplete-input" type="text" name="paciente" id="busqueda"  onkeypress="return soloLetras(event)" placeholder="Buscar Paciente" title="Digite el nombre del paciente" required="" autocomplete="off">
            <span class="focus-input100" data-symbol=""></span>
          </div>

          <div class="wrap-input100 m-b-23 m-r-15">
            <span class="label-input100">Costo</span>
            <input class="input100" style="padding-left: 27px;" type="text" name="costo" required id="costo" readonly maxlength="6" onkeypress="return solonumeros2(event)" required="">
            <span class="focus-input100" data-symbol=""></span>
          </div>

          <div class="wrap-input100 m-b-23">
            <span class="label-input100"># turno</span>
            <input class="input100" type="text" name="turno" id="turno" maxlength="6" placeholder="" required onkeypress="return solonumeros(event)">
            <span class="focus-input100" data-symbol=""></span>
          </div>
        </div>
                <!-- <div class="wrap-input100 m-b-23 m-r-12">
                    <span class="label-input100"># solicitud</span>
                    <input class="input100" type="text" name="solicitud" id="solicitud"  maxlength="6" placeholder="" required onkeypress="return solonumeros(event)">
                    <span class="focus-input100" data-symbol=""></span>
                </div> -->                
           <div class="parados">
            <div class="wrap-input100 m-b-23 m-r-15">
                    <span class="label-input100">Descuento</span>
                    <select class="input100 m-b-17" name="descuento" id="descuento" required onchange="valor_descu()">
                      <option value="0">Ninguno</option><option value="1">10%</option><option value="2">20%</option><option value="3">30%</option>
                   </select>
                </div>
                <div class="wrap-input100 m-b-23 m-r-15">
                    <span class="label-input100">Tipo de Pago</span>
                    <select class="input100 m-b-17" name="tpago" id="tpago" onchange="tipep()" required>
                      <option value="">-</option><option value="1">Completo</option><option value="2">Abono</option>
                   </select>
                </div>
                <div class="wrap-input100 m-b-23">
                    <span class="label-input100" id="titabo">Valor</span>
                    <input class="input100" type="text" name="abono" id="abono" re maxlength="6" required placeholder="0" onkeypress="return solonumeros2(event)" readonly>
                    <span class="focus-input100" data-symbol=""></span>
                </div>
        </div>
        <!-- <div class="parados">
                
                
                
        </div> -->

          <br><br>
          <div class="container-login100-form-btn">
            <div class="wrap-login100-form-btn-cancelar"></div>
            <div class="wrap-login40-form-btn-aceptar">
              <div class="login100-form-bgbtn-aceptar"></div>
              <input class="login100-form-btn-aceptar" type="button" value="Guardar" onclick="pregunta2()">
            </div>
          </div>

        </form>
<script>
    function valor_descu(){
        var vdescuento=document.getElementById('descuento').value;
        var descu='';
        
        if(vdescuento=='1'){
            descu="0.1";
        }
        if(vdescuento=='2'){
            descu="0.2";
        }
        if(vdescuento=='3'){
            descu="0.3";
        }
        if(descu!=''){
          var vc=document.querySelector('#descuento').dataset.costo;
          vd=vc*descu;
          valo_cost=vc-vd;
          document.getElementById('costo').value=valo_cost.toFixed(2);
        
        }else{
          var vc2=document.querySelector('#descuento').dataset.costo;
          document.getElementById('costo').value=vc2;
        }
        
       
    }
</script>
      
	
				</div>
				
			</div>
		</div>
	</div>
<script>
    function pregunta2(){
  var msg = '';
  var verificar;
  var ok = true;

  var formularios = document.forms;

   var i=1;
    for (var j=0; j<formularios[i].elements.length-2; j++){
      // msg = msg + '\n\nElemento '+j+ ' del formulario '+(i+1)+ ' tiene id: '+ formularios[i].elements[j].id;
      // msg = msg + ' y name: ' + formularios[i].elements[j].name;
      var contenido = formularios[i].elements[j].value;
      var ids = formularios[i].elements[j].id;
    //   msg = msg + '\n\nElemento '+j+ ' del formulario '+(i+1)+ ' tiene id: '+ formularios[i].elements[j].id;
    //   msg = msg + ' y su contenido es: ' + contenido;
     
        if (contenido == '' && ids=='busqueda') {
          msg += ", Paciente";
          ok = false;
        }
        if (contenido == '' && ids=='solicitud') {
          msg += ", Solicitud";
          ok = false;
        }
        if (contenido == '' && ids=='turno') {
          msg += ", Turno";
          ok = false;
        }
        if (contenido == '' && ids=='costo') {
          msg += ", Costo";
          ok = false;
        }
        if (contenido == '' && ids=='tpago') {
          msg += ", Tipo de Pago";
          ok = false;
        }
        if (contenido == '' && ids=='abono') {
          msg += ", Abono";
          ok = false;
        }
        if (contenido == '' && ids=='descuento') {
          msg += ", Descuento";
          ok = false;
        }
    }
  
    var tex = msg.replace(',','');
    
  if (ok == false) {
    Swal.fire('Complete los campos: '+tex);
  }else{
        verificar = '';
        const swalWithBootstrapButtons = Swal.mixin({
                  customClass: {
                    confirmButton: 'btn btn-success',
                    cancelButton: 'btn btn-danger'
                  },
                  buttonsStyling: false
                })

                swalWithBootstrapButtons.fire({
                  title: 'Guardar Datos?',
                  text: "",
                  icon: 'question',
                  showCancelButton: true,
                  confirmButtonText: 'Si, guardar!',
                  cancelButtonText: 'No, cancelar!',
                  reverseButtons: true
                }).then((result) => {
                  if (result.value) {
                    
                      //alert(acum_id);
                     // document.getElementById('formix').submit();
//  $("#formix_coti").submit(function(event) {
//     event.preventDefault();

    var datos = $('#formix_coti').serialize();
    datos=datos+"&reactivos="+acum_id;
    console.log(datos);
    jQuery.ajax({
        type: "POST",
        url: "guardar_cotizacion_data.php",
        data: datos,
        success: function(data)
        {
            console.log("respuesta: ", data);
            if(data=='1'){
                ejecutarEjemplo();
                
                window.open("report/reporte_cotizacion_vp_cliente.php", '_blank');
                window.location="cotizacion.php";
            }
        }
    });
// });
                  } else if (
                    /* Read more about handling dismissals below */
                    result.dismiss === Swal.DismissReason.cancel
                  ) {

                  }
                })
  }

  //alert (msg);
  // alert(cual);
 
}
</script>
</script>
<script>
    function tipep(){
        var tipoa = document.getElementById('tpago').value;
        if (tipoa == '1') {
            document.getElementById('abono').value='0';
            document.getElementById('abono').setAttribute('placeholder','$');
            document.getElementById('abono').setAttribute('readonly','');
        }else if(tipoa == '2'){
            document.getElementById('abono').value='';
            document.getElementById('abono').removeAttribute('readonly');
        }else if(tipoa == ''){
            document.getElementById('abono').value='';
            document.getElementById('abono').setAttribute('placeholder','0');
            document.getElementById('abono').setAttribute('readonly','');
        }
    }
</script>
<script type="text/javascript">
  $(document).ready(function () {
    var items = <?= json_encode($array); ?>;

    $("#busqueda").autocomplete({
      source: items,
      select: function (event, item) {
        var params = {
          equipo: item.item.value
        };
        $.get("getEquipo.php", params, function (response) {
          var json = JSON.parse(response);
          if (json.status == 200){
          }else{
            
          }
        }); // ajax
        
    //     var dtid = params['equipo'].split("-");
    //     var url2='report/reporte_vp_cliente.php?id='+dtid[0];
	   // document.getElementById('formix').action=url2;
      }
    });
  });
</script>
  <!--================ End footer Area =================-->
</body>
<script>
let modal = document.getElementById('miModal');
let flex = document.getElementById('flex');
let abrir = document.getElementById('abrir');
let cerrar = document.getElementById('close');

abrir.addEventListener('click', function(){
    modal.style.display = 'block';
});

cerrar.addEventListener('click', function(){
    modal.style.display = 'none';
});

window.addEventListener('click', function(e){
    console.log(e.target);
    if(e.target == flex){
        modal.style.display = 'none';
    }
});



let modal2 = document.getElementById('miModal2');
let flex2 = document.getElementById('flex2');
let abrir2 = document.getElementById('abrir2');
let cerrar2 = document.getElementById('close2');

abrir2.addEventListener('click', function(){
    modal2.style.display = 'block';
});

cerrar2.addEventListener('click', function(){
    modal2.style.display = 'none';
});

window.addEventListener('click', function(e){
    console.log(e.target);
    if(e.target == flex2){
        modal2.style.display = 'none';
    }
});
	</script>
	
	<script src="js/sweetalert2.min.js"></script>
</html>
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
  title: 'Cambios Guardados'
})
}

</script>
<?php  } else {
  header("Location:inicio.php");
} ?>

