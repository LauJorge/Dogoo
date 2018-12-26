<?php 
	include("../../conexion/conexion.php");

    header("Cache-Control: no-cache, no-store, must-revalidate"); // HTTP 1.1.
    header("Pragma: no-cache"); // HTTP 1.0.
    header("Expires: 0"); // Proxies.

    $conn = new Conexion();
    $sql = "SELECT * FROM `tipoTransaccion` WHERE id_tipoTransa = 2 or id_tipoTransa = 3 or id_tipoTransa = 4";
    $transaccion = $conn->consultar($sql);
    $conn->cerrarConexion();
    foreach($transaccion as &$l){
        $l = array_map('utf8_encode', $l);
    }    
    echo json_encode($transaccion);
?>