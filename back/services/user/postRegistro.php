<?php 
    include("../../conexion/conexion.php");
 
    header("Cache-Control: no-cache, no-store, must-revalidate"); // HTTP 1.1.
    header("Pragma: no-cache"); // HTTP 1.0.
    header("Expires: 0"); // Proxies.
 
    $conn = new Conexion();
    $sql = "INSERT INTO usuario (nombre, email, pass, id_localidad)
    VALUES ('".$_POST["nombre"]."','".$_POST["email"]."','".$_POST["pass"]."','".$_POST["id_localidad"]."')";
    $user = $conn->insertarUser($sql);

    $sql = "SELECT LAST_INSERT_ID() id_user";
    $userID = $conn->consultar($sql);

    if($userID[0]["id_user"]!=0){
        $user = Array();
        $user["nombre"] = $_POST["nombre"];
        $user["email"] = $_POST["email"];
        $user["id_localidad"] = $_POST["id_localidad"];
        $user["id_usuario"] = $userID[0]["id_user"];
        echo json_encode($user);
    }else{
        echo "error";
    }

?>