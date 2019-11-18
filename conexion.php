<?php
function conexion(){
    $conex=mysqli_connect("localhost","root","root","stkrfjsa_pame") or
    die("error".mysqli_error($conex));
        return $conex;
    }
    function ingresar(){
    $identificacion = $_POST['identificacion'];
    $primerNombre = $_POST['primerNombre'];
    $segundoNombre = $_POST['segundoNombre'];
    $primerApellido = $_POST['primerApellido'];
    $segundoApellido = $_POST['segundoApellido'];
    $fechaNacimiento = $_POST['fechaNacimiento'];
    $idEstadoCivil = $_POST['idEstadoCivil'];
    $idTipoServidor = $_POST['idTipoServidor'];
    $idGenero = $_POST['idGenero'];
    $sqln= "INSERT INTO `persona` (`identificacion`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `fechaNacimiento`, `idEstadoCivil`, `idGenero`, `idTipoServidor`) 
    VALUES ('".$identificacion."','".$primerNombre."','".$segundoNombre."','".$primerApellido."','".$segundoApellido."','".$fechaNacimiento."','".$idEstadoCivil."','".$idGenero."','".$idTipoServidor."')";
   if(mysqli_query(conexion(),$sqln)) {
        echo "guardado exitosa";


   }else{

          echo "error".$sqln.mysqli_error($conex);
   }
   msqli_close(conexion());
}

?>