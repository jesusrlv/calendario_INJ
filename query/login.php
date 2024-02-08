<?php
session_start();
include('../prcd/qc.php');

$user = $_POST['usr'];
$pwd = md5($_POST['pwd']);

$sql = "SELECT * FROM users WHERE user = '$user' AND pwd = '$pwd'";
$resultado = $conn->query($sql);
$row = $resultado->fetch_assoc();

$fila = $resultado->num_rows;

if($fila == 1){
    $_SESSION['id'] = $row['id'];
    $_SESSION['user'] = $row['user'];
    $_SESSION['nombre'] = $row['nombre'];
    $_SESSION['perfil'] = $row['perfil'];
    $_SESSION['calendario'] = $row['calendario'];
    $_SESSION['oic'] = $row['oic'];
    $_SESSION['rCuentas'] = $row['rCuentas'];
    $_SESSION['tickets'] = $row['tickets'];
    $_SESSION['web'] = $row['web'];
    $_SESSION['rescateEsp'] = $row['rescateEsp'];
    echo json_encode(array(
        'success'=>1
    ));
}
else {
    session_destroy();
    echo json_encode(array(
       'success'=>0
    ));
}

?>