<?php
include("../../conexion/conexion.php");
session_start();

header("Cache-Control: no-cache, no-store, must-revalidate"); // HTTP 1.1.
header("Pragma: no-cache"); // HTTP 1.0.
header("Expires: 0"); // Proxies.


$email = isset($_GET["email"])&&$_GET["email"]!=0 ? $_GET["email"] : null;
$password = isset($_GET["password"])&&$_GET["password"]!=0 ? $_GET["password"] : null;
$conn = new Conexion();


$sql = "SELECT * FROM usuario WHERE email = '".$_POST["email"]."' and pass ='".$_POST["password"]."'";
$user = $conn->consultar($sql);

$cta = count($user);
	if ($cta == 1)
	{
		$row1= $user[0];
        $rta="{\"error\":\"0\", \"user\":" . json_encode($user[0]) ."}";
        $_session["usuario"]= $user;

		//header('Location: ../../../main2.html');
  	} else {
  	    $rta="{\"error\":\"1\", \"user\":{}}";
        //header('Location: ../../../login.html');
    }
    echo $rta;
?>
 