<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
    <script src="https://kit.fontawesome.com/2c36e9b7b1.js"></script>
    <title></title>
  </head>
  <style media="screen">
   body{
        background: #ebe9e9;
          background-image: url(images/fond_todo.jpg);
          background-size: cover;
          background-position: 0px 0px;
          background-repeat: no-repeat;
      }
    .cont_form{
      width: 100%;
      height: auto;
      display: flex;
      justify-content: center;
      align-items: center;
      margin-top: 30%;
    }
    .formul{
      width: 360px;
      height: auto;
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      padding: 20px 10px;
      background: rgb(239, 239, 239);
      border-radius: 7px;
      box-shadow: 2px 2px 2px 2px rgba(0, 0, 0, 0.30);
    }
    .titu_formu{
      width: 90%;
      height: 35px;
      font-size: 20px;
      font-family: cursive;
      font-weight: bold;
      margin: 15px 0px;
      text-align: center;
    }
    .ctext{
      border: 0;
      width: 90%;
      height: 35px;
      border: 1px;
      border-radius: 5px;
      margin-bottom: 15px;
      padding-left: 15px;
      border: 1px solid rgb(135, 133, 133);

    }
    .acao3{
      width: 85%;
      background: #17b4b6;
      color:#ffffff;
      text-transform: uppercase;
      border: 1px solid #156f70;
      font-weight: bold;
      padding: 12px 0;
      float: left;
      border-radius: 6px;
      margin-top: 20px;
    }
    .acao3:hover{
      background:#268687;
      border: 1px solid #03cbcd;
      box-shadow: 2px 2px 2px rgba(0, 0, 0, 0.17);
      cursor: pointer;
    }

    .cancelar{
      display: block;
      width: 85%;
      height: 40px;
      background: #c73131;
      color:#ffffff;
      border: 1px solid #6c0b0b;
      font-family: inherit;
      font-weight: bold;
      display: flex;
      justify-content: center;
      align-items: center;
      text-decoration: none;
      border-radius: 6px;
      margin-top: 20px;
    }
    .cancelar:hover{
      background:#7d0c0c;
      border: 1px solid #ee1818;
      box-shadow: 2px 2px 2px rgba(0, 0, 0, 0.17);
      cursor: pointer;
    }
  </style>
   
  <body>
      <?php
      if (isset($_POST['cedula'])) {
         include('recuperar_clave_envio_app.php');
      }
     ?>
     <div class="cont_form">

       <form class="formul" action="" method="post">
         <label class="titu_formu">Recupera Contraseña</label>
         <input type="text" class="ctext" name="cedula" maxlength="13" value="" placeholder="IDENTIFICACIÓN" required autocomplete="off">
         <input type="text" class="ctext" name="correo" value="" placeholder="CORREO" required autocomplete="off">

         <input type="submit" class="acao3" name="" value="Enviar Solicitud">
       </form>
     </div>
  </body>
</html>