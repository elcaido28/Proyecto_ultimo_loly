<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <script src="https://kit.fontawesome.com/805c37e370.js" crossorigin="anonymous"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
  </head>
  <body>

<style media="screen">
* {  box-sizing: border-box; }

.acordeon {
  margin-top: 30px;
}
body{
        background: #ebe9e9;
          background-image: url(images/fond_todo.jpg);
          background-size: cover;
          background-position: 0px 0px;
          background-repeat: no-repeat;
      }
.acordeon input {
  display: none;
}

.acordeon__titulo {
  display: block;
  padding: 15px;
  background: #3c8dbc;
  color: #fff;
  font-size: 20px;
  cursor: pointer;
  border-bottom: 1px solid #fff;
}
.acordeon__titulo:hover {
  background: #17587e;
}
.acordeon__titulo i{
  margin-right: 20px;
}
.acordeon__contenido {
  height: 0;
  overflow: hidden;
  margin: 0;
  transition: all 0.5s;
}
.acordeon input:checked ~ .acordeon__contenido{
  height: auto;
  margin: 10px 0;
}
</style>
<div class="acordeon">
            <div class="acordeon__item">
                <input type="radio" name="acordeon" id="item1">
                <label for="item1" class="acordeon__titulo"> <i class="fas fa-angle-down"></i> Manejo de la Aplicación</label>
                <p class="acordeon__contenido"><i class="fas fa-minus"></i> Listado de exámenes </p>
                <p class="acordeon__contenido">Tendrá la opción de descargar los resultados de los exámenes realizados, teniendo en cuenta los exámenes de los últimos 3 meses.</p>
                <p class="acordeon__contenido"><i class="fas fa-minus"></i> Cotización  </p>
                <p class="acordeon__contenido">Podrá seleccionar todos los exámenes que se le indica en la orden de examen, luego presionar en el botón Calcular Cotización que le permitirá visualizar el costo a pagar por su examen.</p>
                <p class="acordeon__contenido"><i class="fas fa-minus"></i> Perfil </p>
                <p class="acordeon__contenido">Muestra la información básica del paciente, de manera adicional podrá actualizar la información, realizar cambios en su contraseña. </p>
                
            </div>
            <div class="acordeon__item">
                <input type="radio" name="acordeon" id="item2">
                <label for="item2" class="acordeon__titulo"><i class="fas fa-angle-down"></i> Reclamos y Quejas</label>
                <p class="acordeon__contenido">Se recomienda redactar un correo detallando sus inconformidades, tambien adjuntar imágenes o videos y enviarlo al Email <b>reclamos@laboratoriololy.com</b>, se enviará una respuesta en las próximas 72 horas hábiles. </p>
            </div>
            <div class="acordeon__item">
                <input type="radio" name="acordeon" id="item3">
                <label for="item3" class="acordeon__titulo"><i class="fas fa-angle-down"></i>¿No puedo ver  Exámenes?</label>
                <p class="acordeon__contenido">Se deberá tomar en cuenta que ciertos exámenes clínicos, son confidenciales, por tales motivos no podrán ser mostrados mediante la aplicación por motivo que son exámenes privados, lo que significa que debe acercarse al laboratorio.</p>
                <p class="acordeon__contenido"> En caso que tenga algun inconveniente con otros exámenes al momento de visualizar, comunicarse al correo indicado en el apartado de  "reclamos y quejas"</p>
            </div>
        </div>



  </body>
</html>
