<?php
	include("../../conexion/conexion.php");
    session_start();

    $conn = new Conexion();

    $sql = "SELECT COUNT(p.id_perro)cant_hembras, s.sexo, pv.provincia FROM perros p
            INNER JOIN usuarioaperro uap ON uap.id_perro = p.id_perro
            INNER JOIN usuario u ON u.id_usuario = uap.id_usuario
            INNER JOIN localidades l ON u.id_localidad = l.id_localidad
            INNER JOIN provincias pv ON l.id_provincia = pv.id_provincia
            INNER JOIN sexos s ON s.id_sexo = p.id_sexo
            WHERE p.id_sexo = 3 GROUP BY pv.provincia";

    $cantidadHembras = $conn->consultar($sql);

    $conn->cerrarConexion();

   foreach($cantidadHembras  as &$l){
            $l = array_map('utf8_encode', $l);
        }
        echo json_encode($cantidadHembras);

?>
