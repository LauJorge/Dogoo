<?php
	include("../../conexion/conexion.php");
    session_start();

    $conn = new Conexion();

    $sql = "SELECT COUNT(t.id_tipoTransa)cantTransa, tt.tipoTransaccion, pro.provincia FROM transacciones t
            INNER JOIN tipotransaccion tt ON tt.id_tipoTransa= t.id_tipoTransa
            INNER JOIN usuario u ON u.id_usuario = t.id_usuario
            INNER JOIN localidades l ON u.id_localidad = l.id_localidad
            INNER JOIN provincias pro ON pro.id_provincia = l.id_provincia
            GROUP BY pro.id_provincia, tt.id_tipoTransa ";

    $cantidadTransa = $conn->consultar($sql);

    $conn->cerrarConexion();

   foreach($cantidadTransa as &$l){
            $l = array_map('utf8_encode', $l);
            }
        echo json_encode($cantidadTransa);
?>
