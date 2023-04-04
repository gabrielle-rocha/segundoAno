<!DOCTYPE html>
<html lang="en">
  <head>
  <meta charset="UTF-8">
      <title>exercício 3</title>
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
      <link rel="stylesheet" type="text/css" href="css/estilo.css">
  </head>
  <body>
    
    <nav class="navbar navbar-expand-lg " style="background-color: rgb(227, 160, 240);">
        <a class="navbar-brand" href="#">Avaliativa</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Alterna navegação">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active m-3">
              <a class="nav-link" href="index1.html"><div class="font">nome e idade</div></a>
            </li>
            <li class="nav-item active m-3">
              <a class="nav-link" href="index2.html"><div class="font">nome e nota</div></a>
            </li>
            <li class="nav-item active m-3">
              <a class="nav-link" href="index3.html"><div class="font">salário</div></a>
            </li>
          </ul>
        </div>
    </nav>

    <center>
        <br>
        <br>
        <br>
        
      <?php
        $horas = $_POST['horas'];
        echo"<h1>Você trabalhou por: " . $horas ." Horas.</h1>";
        $salario = $horas * 20;
        echo"<h1>Seu Salário é de R$: " . $salario .".</h1>"
      ?>
    </center>


   
      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>