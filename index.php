<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>ejemplo script</title>
</head>
<body>
<?php
  include('conexion.php');
 ?>
<form action="conexion.php"method="POST">
 
    <p>
        <label for="">ingresa un numero de cedula:</label>
        <input type="text" name="identificacion" id="identificacion">
    </p>
            
    <p>
        <label for="">ingrese primer nombre:</label>
        <input type="text" name="primerNombre" id="primerNombre">
    </p>  
    <p>
        <label for="">ingrese segundo nombre:</label>
        <input type="text" name="segundoNombre" id="segundoNombre">
    </p>
            
    <p>
        <label for="">ingrese primer apellido:</label>
        <input type="text" name="primerApellido" id="primerApellido">
    </p>
            
    <p>
        <label for="">ingrese segundo apellido:</label>
        <input type="text" name="segundoApellido" id="segundoApellido">
    </p>
            
    <p>
        <label for="">ingrese fecha de nacimiento:</label>
        <input type="date" name="fechaNacimiento" id="fechaNacimiento">
    </p>
        
    <p>
        <label for="">Seleccione el estado Civil:</label>
        <select name="idEstadoCivil" id="idEstadoCivil">
        <option value="1">Soltero</option>
        <option value="2">Casado</option>
        <option value="3">Divorciado</option>
        <option value="4">Viudo</option>
        </SELECT>
    </p>
            
    <p>
        <label for="">Tipo de servidor:</label>
        <select name="idTipoServidor" id="idTipoServidor">
        <option value="1">carrera</option>
        <option value="2">civil</option>
        </SELECT>
    </p>

    <p>
        <label for="">Seleccione el Genero:</label>
        <select name="idGenero" id="idGenero">
        <option value="1">Masculino</option>
        <option value="2">Femenino</option>
        <option value="3">LGBTI</option>
        <option value="4">Otros</option>
        </SELECT>
    </p>
            
    <p>
        <input type="submit" value="INGRESAR" onclick="">
    </p>
</form>
        
</body>
</html>