<?php
session_start();
require 'funciones.php';

?>
<!DOCTYPE html>
<html lang="en">
  <head>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Videogame World</title>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/estilos.css">
    <link rel="icon" href="todocompany.png">
  </head>

  <body>

  <nav class="navbar navbar-expand-lg navbar-light bg-light navbar navbar-dark bg-dark">
  <a class="navbar-brand" href="index.php">Videogame World</a>
  <img src="todocompany.png" alt="" style="width:100px; height:80px;">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item">
      <a href="carrito.php" class="btn"><div style="color:white;">Cart</div> <span class="badge"><?php print cantidadPeliculas(); ?></span></a>         
      </li>
      <li class="nav-item">
      <a href="signup.php" class="btn" style="color:white;">Sign Up</span></a>
      </li>
      <li class="nav-item">
      <a href="login.php" class="btn" style="color:white;">Login</span></a>
      </li>
    </ul>
  </div>
</nav>

    <div class="container" id="main">
      <h1 style="text-align:center; margin-bottom:1.1em;">THE BEST GAMES HERE</h1>
        <div class="row">
            <?php
              require 'vendor/autoload.php';
              $pelicula = new Kawschool\Pelicula;
              $info_peliculas = $pelicula->mostrar();
              $cantidad = count($info_peliculas);
              if($cantidad > 0){
                for($x =0; $x < $cantidad; $x++){
                  $item = $info_peliculas[$x];
            ?>
              <div class="col-md-3">
                  <div class="panel panel-default">
                    <div class="panel-heading">
                      <h1 class="text-center titulo-pelicula"><?php print $item['titulo'] ?></h1>  
                    </div>
                    <div class="panel-body">
                      <?php
                          $foto = 'upload/'.$item['foto'];
                          if(file_exists($foto)){
                        ?>
                          <img src="<?php print $foto; ?>" class="img-responsive">
                      <?php }else{?>
                        <img src="assets/imagenes/not-found.jpg" class="img-responsive">
                      <?php }?>
                    </div>
                    <div class="panel-footer">
                        <a href="carrito.php?id=<?php print $item['id'] ?>" class="btn btn-success btn-block">
                          <span class="glyphicon glyphicon-shopping-cart"></span> Buy
                        </a>
                    </div>
                  </div>
              
              
              </div>
          <?php
                }
            }else{?>
              <h4>NO HAY REGISTROS</h4>

          <?php }?>




        </div>
      

    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
   <!--  
    <nav class="navbar navbar-expand-lg navbar-light bg-light navbar navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Videogame World</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item">
      <a href="carrito.php" class="btn"><div style="color:white;">Cart</div> <span class="badge"><?php print cantidadPeliculas(); ?></span></a>         
      </li>
      <li class="nav-item">
      <a href="carrito.php" class="btn" style="color:white;">Sign Up</span></a>
      </li>
      <li class="nav-item">
      <a href="carrito.php" class="btn" style="color:white;">Login</span></a>
      </li>
    </ul>
  </div>
</nav>
-->




  </body>
</html>
