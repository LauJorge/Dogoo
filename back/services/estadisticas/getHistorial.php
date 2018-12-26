<?php
	include("../../conexion/conexion.php");
    session_start();

    $conn = new Conexion();
    $id_usuario = isset($_GET["id_usuario"])&&$_GET["id_usuario"]!=0 ?  $_GET["id_usuario"] : null;

        $sql = "SELECT tt.tipoTransaccion, p.perro, u.nombre, pro.provincia
            FROM `transacciones` t
            INNER JOIN tipotransaccion tt ON tt.id_tipoTransa= t.id_tipoTransa
            INNER JOIN perros p on p.id_perro = t.id_perro
            INNER JOIN usuario u ON u.id_usuario = t.id_usuario
            INNER JOIN localidades l ON u.id_localidad = l.id_localidad
            INNER JOIN provincias pro ON pro.id_provincia = l.id_provincia
            WHERE u.id_usuario = $id_usuario
            GROUP BY p.perro";


        $historial = $conn->consultar($sql);

        $conn->cerrarConexion();

       foreach($historial as &$l){
                $l = array_map('utf8_encode', $l);
            }
            echo json_encode($historial);
    ?>
