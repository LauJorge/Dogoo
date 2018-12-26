<?php
	include("../../conexion/conexion.php");
    session_start();

    $conn = new Conexion();

    $sql = "SELECT COUNT(p.id_perro)cant_machos, pv.provincia
            FROM perros p
            INNER JOIN usuarioaperro uap ON uap.id_perro = p.id_perro
            INNER JOIN usuario u ON u.id_usuario = uap.id_usuario
            INNER JOIN localidades l ON u.id_localidad = l.id_localidad
            INNER JOIN provincias pv ON l.id_provincia = pv.id_provincia
            WHERE p.id_sexo = 2
            GROUP BY pv.provincia";
    $cantidadMachos = $conn->consultar($sql);

    $conn->cerrarConexion();

   foreach($cantidadMachos as &$l){
            $l = array_map('utf8_encode', $l);
            }
        echo json_encode($cantidadMachos);
?>
