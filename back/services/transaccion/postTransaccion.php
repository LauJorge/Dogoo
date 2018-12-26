<?php 
    include("../../conexion/conexion.php");
 
    header("Cache-Control: no-cache, no-store, must-revalidate"); // HTTP 1.1.
    header("Pragma: no-cache"); // HTTP 1.0.
    header("Expires: 0"); // Proxies.

    $conn = new Conexion();
    $sql = "INSERT INTO transacciones (id_perro, id_tipoTransa, id_usuario) VALUES ('".$_POST["id_perro"]."','".$_POST["id_tipoTransa"]."','".$_POST["id_usuario"]."')";
    $user = $conn->insertar($sql);
    $conn->cerrarConexion();

    echo "{'error':0}";
?>