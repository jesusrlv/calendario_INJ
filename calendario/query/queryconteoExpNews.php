<?php
    session_start();
    include('../qc.php');
    $usr = $_SESSION['usr'];
    $mes = $_POST['mes'];
    $annio = $_POST['annio'];

$sql = "SELECT * FROM activides WHERE month(fecha) = '$mes' AND year(fecha) = '$annio' AND usr = '$usr'";
$resultado = $conn->query($sql);
$fila = $resultado->num_rows;

    echo json_encode(array(
        'filas'=>$fila
    ));

?>