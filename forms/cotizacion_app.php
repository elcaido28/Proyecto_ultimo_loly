<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head><meta charset="gb18030">
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="para_app/jquery.dataTables.min.css">
    <link rel="stylesheet" href="para_app/estilos_app.css">
    <script src="js/jquery.min.js"></script>
    <script src="para_app/jquery.dataTables.min.js" charset="utf-8"></script>

    <title>Cotizacion</title>

<script src="https://kit.fontawesome.com/805c37e370.js" crossorigin="anonymous"></script>
  </head>
      <style media="screen" type="text/css">
      body{
        background: #ebe9e9;
          background-image: url(images/fond_todo.jpg);
          background-size: cover;
          background-position: 0px 0px;
          background-repeat: no-repeat;
      }
    </style>
  <body>
    <?php   include('config/config.php'); ?>
    <div class="content_valor">
      <div class="valor" id="valor_cotiza">

      </div>
      <div class="boton">
        <input type="button" id="save_value" class="btn_calcu2" name="" value="Calcular Cotización">
        <a href="" class="actuliz"><i class="fas fa-undo-alt"></i></a>
      </div>
    </div>


            <div class="cont_tabla">
              <table class="tabla" id="tabla">
                  <thead>
                    <tr>
                      <th>NOMBRE DE REACTIVO</th>
                      <th>AGREGAR</th>

                    </tr>
                  </thead>
                  <tr>
                  <?php
                    $consulta3=mysqli_query($con,"SELECT * from reactivo WHERE id_estado='1'");
                    while($row3=mysqli_fetch_array($consulta3)){
                  ?>
                    <td><?php echo $row3['nombre_reactivo']; ?> </td>
                    <td><label class="checkBoxF checkbox"><input type="checkbox" class="checkBoxF" value="F-<?php echo $row3['precio_reactivo']; ?>"> <span class="checkBoxF check"></span>
                    </label> </td>
                  </tr>
                  <?php } ?>
              </table>
        </div>
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
              var data_valor="<h3>El costo de sus examen es:</h3><h1>$ "+acum_val.toFixed(2)+"</h1>";
              $('#valor_cotiza').html(data_valor);

            })
          });
});
        </script>
    </div>
  <script>
    $(document).ready( function () {
        $('.tabla').DataTable();
    } );
    </script>



  </body>
</html>
