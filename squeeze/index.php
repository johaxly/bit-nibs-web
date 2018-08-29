<?php

// header("Refresh:0");

?>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
    <html>
    <head>
      
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <meta name="description" content="">
      <title>¡Chococoncurso!</title>

      <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css"> 
      <link rel="stylesheet" href="assets/tether/tether.min.css">
      <link rel="stylesheet" href="assets/theme/css/style2.css">
      <link href="https://fonts.googleapis.com/css?family=Caveat+Brush|Leckerli+One" rel="stylesheet">
      
    </head>
    <body>

<!-- SECCIÓN DE MENÚ -->
<div id="barra">
<a href="#carrusel" id="logo" class="enelindex"><img src="assets/images/logo.png"></a>
<!-- <a href="index.php" id="logo" class="interno"><img src="assets/images/logo.png"></a> -->
</div>
<!-- *************** -->

    <!-- Sección de contenido y formulario de registro -->

    <section class="cid-qZoH1zFnyG mbr-fullscreen mbr-parallax-background" id="header15-7">
        <div class="mbr-overlay" style="opacity: 0.4; background-color: rgb(91, 104, 107);"></div>
        
        <div class="container">
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-lg-4">
            </div>
            <div class="col-md-3"></div>
        </div>
    <div class="row">
        <div class="mbr-white col-lg-7 col-md-7 content-container">
             <h1>
                ¡RECIBE NUESTROS<br>NEWSLETTERS!</h1>
            
            <h2  class="mbr-cnt1"> 
                <p></p>

            <img src="assets/images/video.png"/>
            </h2>
        </div>
        <div class="col-lg-5 col-md-5">
       <div class="form">  
              <h2>¡Participa en nuestro evento!</h2>
              
              <form action="" method="POST">
                
                <input class="form-control" name="nombre" type="text" required autocomplete="off" placeholder="Nombre y Apellido" />
                <input class="form-control" name="email" required autocomplete="off" placeholder="Email" />

                <input class="form-control" name="rrss" required autocomplete="off" placeholder="Instagram" />
                
                <input type="checkbox" required="">  <b class="font-blanco">Acepto las<a href="https://chocosfera.com/proteccion-de-datos/" target="_newtab"> condiciones de privacidad</a></b>

              <button type="submit" name="submit" class="button button-block"/>¡ÚNETE GRATIS!</button>
              
              </form>
        </div>
    </div>
        </div>
<?php
if(isset($_POST['submit'])){
include 'guarda-usuario.php';
}
?>
    </section>

    <section class="cid-qTkAaeaxX5" id="footer1-2">
        <div class="container">
            <div class="media-container-row content text-white">
                <div class="col-12 col-md-3">
                    <div class="media-wrap">
                        </a>
                    </div>
                </div>
                <div class="col-12 col-md-3 mbr-fonts-style display-7">
                    <h5 class="pb-3">
                        Dirección:
                    </h5>
                    <p class="mbr-text">
                        1234 Street Name
                        <br>City, AA 99999
                    </p>
                </div>
                <div class="col-12 col-md-3 mbr-fonts-style display-7">
                    <h5 class="pb-3">
                        Contáctanos:
                    </h5>
                    <p class="mbr-text">
                        Email: info@chocosfera.com
                        <br>Phone: +58 (212) 000 0000 001
                        <br>Fax: +58 (212) 000 0000 002
                    </p>
                </div>
                <div class="col-12 col-md-3 mbr-fonts-style display-7">
                    <h5 class="pb-3">
                        Links:
                    </h5>
                    <p class="mbr-text">
                        <a class="text-primary" href="#">Texto 1</a>
                        <br><a class="text-primary" href="#">Texto 2</a>
                        <br><a class="text-primary" href="#">Texto 3</a>
                    </p>
                </div>
            </div>
            <div class="footer-lower">
                <div class="media-container-row">
                    <div class="col-sm-12">
                        <hr>
                    </div>
                </div>
                <div class="media-container-row mbr-white">
                    <div class="col-sm-6 copyright">
                        <p class="mbr-text mbr-fonts-style display-7">
                            © Copyright 2018 Bit&Nibs - All Rights Reserved
                        </p>
                    </div>
                    <div class="col-md-6"></div>
                    </div>
                </div>
            </div>
        </div>
    </section>

      <script src="assets/web/assets/jquery/jquery.min.js"></script>
      <script src="assets/popper/popper.min.js"></script>
      <script src="assets/tether/tether.min.js"></script>
      <script src="assets/bootstrap/js/bootstrap.min.js"></script>
      
    </body>
    </html>