<?php 
    include("../../conexion/conexion.php");
    	    session_start();

 
    header("Cache-Control: no-cache, no-store, must-revalidate"); // HTTP 1.1.
    header("Pragma: no-cache"); // HTTP 1.0.
    header("Expires: 0"); // Proxies.
//    header("http://localhost/dogoo-2/dogoo/back/services/perro/usuarioAperro.php");

    $conn = new Conexion();

    $sql = "INSERT INTO perros (perro, id_raza, id_sexo, descripcion, edad, foto, precio, para_regalar, id_tipoTransa) 
    VALUES ('".$_POST["nombre"]."','".$_POST["raza"]."','".$_POST["sexo"]."','".$_POST["descripcion"]."','".$_POST["edad"]."','".$_POST["foto"]."','".$_POST["precio"]."','".$_POST["para_regalar"]."','".$_POST["id_tipoTransa"]."')";
    $user = $conn->insertarPerro($sql);

    $sql = "SELECT LAST_INSERT_ID() id_perro";
    $perroID = $conn->consultar($sql);

    $sql1 = "INSERT INTO usuarioaperro (id_perro, id_usuario) VALUES ('" . $perroID[0]["id_perro"] . "','".$_POST["id_usuario"]."')";;
    $user = $conn->insertar($sql1);
    $conn->cerrarConexion();

    echo "{\"error\":\"0\"}";
?>