<?php 
	include("../../conexion/conexion.php");
    	    session_start();

    header("Cache-Control: no-cache, no-store, must-revalidate"); // HTTP 1.1.
    header("Pragma: no-cache"); // HTTP 1.0.
    header("Expires: 0"); // Proxies.

    $conn = new Conexion();

  $id_perro = isset($_GET["id_perro"])&&$_GET["id_perro"]!=0 ?  $_GET["id_perro"] : null;
  $id_usuario = isset($_GET["id_usuario"])&&$_GET["id_usuario"]!=0 ?  $_GET["id_usuario"] : null;

    $sql1 = "INSERT INTO usuarioAperro (id_perro, id_usuario)
        VALUES ('".$_POST["id_perro"]."','".$_POST["id_usuario"]."')";;
    $user = $conn->insertarUaP($sql1);

?>
