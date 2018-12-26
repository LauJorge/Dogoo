<?php 
	include("../../conexion/conexion.php");
    header("Cache-Control: no-cache, no-store, must-revalidate"); // HTTP 1.1.
    header("Pragma: no-cache"); // HTTP 1.0.
    header("Expires: 0"); // Proxies.

    $conn = new Conexion();
    $sql = "Select * from razas order by raza";
    $razas = $conn->consultar($sql);
    $conn->cerrarConexion();
    foreach($razas as &$l){
        $l = array_map('utf8_encode', $l);
    }    
    echo json_encode($razas);
?>