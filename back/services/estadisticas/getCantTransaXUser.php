<?php
	include("../../conexion/conexion.php");
    session_start();

    $conn = new Conexion();

    $sql = "SELECT COUNT(t.id_transacciones)cant_trans, tt.tipoTransaccion, u.nombre, l.localidad FROM `transacciones` t
    INNER JOIN tipotransaccion tt ON tt.id_tipoTransa= t.id_tipoTransa
    INNER JOIN perros p on p.id_perro = t.id_perro
    INNER JOIN usuario u ON u.id_usuario = t.id_usuario INNER JOIN localidades l ON u.id_localidad = l.id_localidad GROUP BY u.nombre, tt.id_tipoTransa";

    $transaXuser = $conn->consultar($sql);

    $conn->cerrarConexion();

   foreach($transaXuser as &$l){
            $l = array_map('utf8_encode', $l);
            }
        echo json_encode($transaXuser);
?>
