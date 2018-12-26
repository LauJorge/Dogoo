<?php 
	include("../../conexion/conexion.php");

    header("Cache-Control: no-cache, no-store, must-revalidate"); // HTTP 1.1.
    header("Pragma: no-cache"); // HTTP 1.0.
    header("Expires: 0"); // Proxies.
 
    $id_raza = isset($_GET["id_raza"])&&$_GET["id_raza"]!=0 ?  $_GET["id_raza"] : null;
    $id_sexo = isset($_GET["id_sexo"])&&$_GET["id_sexo"]!=0 ?  $_GET["id_sexo"] : null;
    $id_tipoTransa = isset($_GET["id_tipoTransa"])&&$_GET["id_tipoTransa"]!=0 ?  $_GET["id_tipoTransa"] : null;
    $id_localidad = isset($_GET["id_localidad"])&&$_GET["id_localidad"]!=0 ?  $_GET["id_localidad"] : null;
    $precio = isset($_GET["precio"])&&$_GET["precio"]!=0 ?  $_GET["precio"] : null;

/*
    $id_raza = 4;// 
    $id_provincia = 264;//
    $id_sexo = 2;//
    $id_tipoTransa = 4;//
*/
    $conn = new Conexion();
    $sql = "SELECT p.id_perro, p.perro, p.descripcion, p.precio, p.foto, u.id_localidad, 
    p.id_tipoTransa, tt.tipoTransaccion, l.localidad 
    FROM perros p 
    INNER JOIN usuarioAperro uap ON p.id_perro = uap.id_perro 
    INNER JOIN usuario u ON u.id_usuario = uap.id_usuario 
    INNER JOIN tipoTransaccion tt ON p.id_tipoTransa = tt.id_tipoTransa 
    INNER JOIN localidades l ON l.id_localidad = u.id_localidad 
    where p.id_tipoTransa = $id_tipoTransa";

    if ($id_raza != null) $sql.= " and p.id_raza = $id_raza ";
    if ($id_localidad != null) $sql.= " and u.id_localidad = $id_localidad ";
    if ($id_sexo != null) $sql.= " and p.id_sexo = $id_sexo ";    
    if ($id_tipoTransa != null) $sql.= " and p.id_tipoTransa = $id_tipoTransa ";

    
    //echo $sql;

    $busquedas = $conn->consultar($sql);
    $conn->cerrarConexion();
    foreach($busquedas as &$l){
        $l = array_map('utf8_encode', $l);
    }
    echo json_encode($busquedas);
?>
