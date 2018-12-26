<?php 
	include("../../conexion/conexion.php");
	    session_start();


	header("Cache-Control: no-cache, no-store, must-revalidate"); // HTTP 1.1.
    header("Pragma: no-cache"); // HTTP 1.0.
    header("Expires: 0"); // Proxies.

    $conn = new Conexion();
    $id_usuario = isset($_GET["id_usuario"])&&$_GET["id_usuario"]!=0 ?  $_GET["id_usuario"] : null;

    $sql = "SELECT uap.id_usuario, p.id_perro, p.perro,
    p.descripcion, p.id_raza, p.id_tipoTransa FROM `perros` p 
    INNER JOIN usuarioAperro uap on p.id_perro = uap.id_perro 
    WHERE uap.id_usuario = $id_usuario";
    
    $perro = $conn->consultar($sql);
    $conn->cerrarConexion();
    foreach($perro as &$l){
        $l = array_map('utf8_encode', $l);
    }    
    echo json_encode($perro);
?>