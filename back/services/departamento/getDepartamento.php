<?php 
	include("../../conexion/conexion.php");

    header("Cache-Control: no-cache, no-store, must-revalidate"); // HTTP 1.1.
    header("Pragma: no-cache"); // HTTP 1.0.
    header("Expires: 0"); // Proxies.

    $id_provincia = isset($_GET["id_provincia"]) ?  $_GET["id_provincia"] : null;

    $conn = new Conexion();
    if($id_provincia==null){
        $sql = "Select * from localidades order by id_provincia, localidad";
    }else{
        $sql = "Select * from localidades where id_provincia = $id_provincia order by localidad";
    }

    $localidades = $conn->consultar($sql);
    $conn->cerrarConexion();
    foreach($localidades as &$l){
        $l = array_map('utf8_encode', $l);
    }    
    echo json_encode($localidades);
?>
