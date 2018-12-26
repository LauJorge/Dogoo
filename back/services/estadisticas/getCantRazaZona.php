<?php
	include("../../conexion/conexion.php");
    session_start();

    $conn = new Conexion();

        $sql = "SELECT COUNT(r.id_raza)cant_Razas, r.raza, loc.localidad, pro.provincia
        FROM `perros` p
        INNER JOIN usuarioAperro uap on p.id_perro = uap.id_perro
        INNER JOIN usuario u on uap.id_usuario = u.id_usuario
        INNER JOIN razas r ON p.id_raza = r.id_raza
        INNER JOIN localidades loc on loc.id_localidad = u.id_localidad
        INNER JOIN provincias pro on pro.id_provincia = loc.id_provincia
        GROUP BY r.raza
        ORDER BY pro.provincia";

        $cantRazas = $conn->consultar($sql);

        $conn->cerrarConexion();

       foreach($cantRazas as &$l){
                $l = array_map('utf8_encode', $l);
            }
            echo json_encode($cantRazas);
    ?>
