<?php
    session_start();
    include('../qc.php');
    $mes = $_POST['mes'];
    $annio = $_POST['annio'];
    $usr = $_POST['usr'];

$sqlDatos = "SELECT * FROM users WHERE username = '$usr'";
$resultadoDatos = $conn->query($sqlDatos);
$rowDatos = $resultadoDatos->fetch_assoc();

$sql = "SELECT * FROM actividad WHERE MONTH(fecha) = '$mes' AND YEAR(fecha) = '$annio' AND usr = '$usr'";
$resultado = $conn->query($sql);
$fila = $resultado->num_rows;

    echo json_encode(array(
        'filas'=>$fila
    ));

?>