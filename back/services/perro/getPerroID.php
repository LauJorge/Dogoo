<?php
	include("../../conexion/conexion.php");
	    session_start();


	header("Cache-Control: no-cache, no-store, must-revalidate"); // HTTP 1.1.
    header("Pragma: no-cache"); // HTTP 1.0.
    header("Expires: 0"); // Proxies.

    $conn = new Conexion();

    $sql = "SELECT id_perro FROM perros ORDER BY id_perro DESC LIMIT 1";

    $perroID = $conn->consultar($sql);
    $conn->cerrarConexion();
    foreach($perroID as &$l){
        $l = array_map('utf8_encode', $l);
    }
    echo json_encode($perroID);
?>