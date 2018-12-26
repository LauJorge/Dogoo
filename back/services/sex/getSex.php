<?php
	include("../../conexion/conexion.php");

    header("Cache-Control: no-cache, no-store, must-revalidate"); // HTTP 1.1.
    header("Pragma: no-cache"); // HTTP 1.0.
    header("Expires: 0"); // Proxies.

    $conn = new Conexion();
    $sql = "Select * from sexos order by id_sexo";
    $sexo = $conn->consultar($sql);
    $conn->cerrarConexion();
    echo json_encode($sexo);
?>