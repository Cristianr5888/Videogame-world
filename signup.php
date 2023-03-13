<?php 
require 'config.php';
if (isset($_POST["submit"])){
    $name = $_POST["name"];
    $username = $_POST["username"];
    $email = $_POST["email"];
    $password = $_POST["password"];
    $confirmpassword = $_POST["confirmpassword"];
    $duplicate = mysqli_query($conn, "SELECT * FROM tb_user WHERE username='$username' OR email = '$email'");

    if(mysqli_num_rows($duplicate)> 0){
        echo
        "<script> alert('Username or Email has already taken'); </script>";
    }
    else{
        if($password == $confirmpassword){
            $query = "INSERT INTO tb_user VALUES('','$name','$username','$email','$password')";
        mysqli_query($conn,$query);
        echo
        "<script> alert('Registration succesfull'); </script>";
        }
        else{
            echo
            "<script> alert('Password does not match'); </script>";  
        }
    }
}
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
  </head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light navbar navbar-dark bg-dark">
  <a class="navbar-brand" href="index.php">Videogame World</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      
      <li class="nav-item">
      <a href="signup.php" class="btn" style="color:white;">Sign Up</span></a>
      </li>
      <li class="nav-item">
      <a href="login.php" class="btn" style="color:white;">Login</span></a>
      </li>
    </ul>
  </div>
</nav>

    <h2 style="margin-left:40px;">SIGN UP HERE</h2>
    
    <form action="" method="post" autocomplete="off">
        <label for="name" style="margin-left:40px; padding:10px;">Name: </label>
    <input type="text" name="name" id="name" required> <p></p>
        <label for="username" style="margin-left:40px; padding:10px;">Username: </label>
    <input type="text" name="username" id="username" required> <p></p>    
         <label for="email" style="margin-left:40px; padding:10px;">Email: </label>
    <input type="email" name="email" id="email" required> <p></p> 
         <label for="password" style="margin-left:40px; padding:10px;">Password: </label>
    <input type="password" name="password" id="password" required> <p></p> 
        <label for="confirmpassword" style="margin-left:40px; padding:10px;">Confirm Password: </label>
    <input type="password" name="confirmpassword" id="confirmpassword" required> <p></p> 
    <button type="submit" name="submit" style="margin-left:10%; padding:10px; width: 120px; border-radius:9px; color:white; background-color:#183860;">Register</button>
</form>
<br>

</body>
</html>