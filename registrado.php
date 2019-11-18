<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <?php
    if (isset($_POST['nombre']) && !empty($_POST['nombre']) &&
    isset($_POST['telefono']) && !empty($_POST['telefono'])){

        $nombreRegistrado = $_POST['nombre'];
        $telefonoRegistrado = $_POST['telefono'];
    
        $db="stkrfjsa_registros";
        $host="localhost";
        $pw="root";
        $user="root";

        $con= mysql_connect($host,$user,$pw) or die ("No se pudo autentificar con BD.");
        mysql_select_db("$db,$con") or die ("No se pudo conectar a la base de datos.");
        mysql_query("INSERT INTO usuarios(nombre,telefono) values ('$nombreRegistrado','$telefonoRegistrado')");
        echo "Guardado Correctamente <br>";
        echo "<a href='index.php'> Volver al Menu.</a>"; 
    } 
    else
    {
        echo "Debes de Llenar Todos los Campos.";
    }
    ?>
</body>
</html>