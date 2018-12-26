<?php 
	include("../../conexion/conexion.php");

    header("Cache-Control: no-cache, no-store, must-revalidate"); // HTTP 1.1.
    header("Pragma: no-cache"); // HTTP 1.0.
    header("Expires: 0"); // Proxies.

    $conn = new Conexion();
    $sql = "Select * from provincias order by provincia";
    $provincias = $conn->consultar($sql);
    $conn->cerrarConexion();
    foreach($provincias as &$l){
        $l = array_map('utf8_encode', $l);
    }    
    echo json_encode($provincias);

     ?>
