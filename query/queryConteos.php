<?php
    session_start();
    include('../../prcd/qc/qc.php');
    // $usr = $_SESSION['usr'];

    date_default_timezone_set('America/Mexico_City');
    setlocale(LC_TIME, 'es_MX.UTF-8');

    $fechaSistema = strftime("%Y-%m-%d,%H:%M:%S");

    $idSession = $_SESSION['id'];
    $annio = date("Y", $fechaSistema);
    $mes = date("M", $fechaSistema);

//actividades no terminadas
$sqlNOterminadas = "SELECT * FROM actividades WHERE responsable = '$idSession' AND MONTH(fecha) = '$mes' AND YEAR(fecha) = '$annio' AND estatus = 2";
$resultadoNOterminadas = $conn->query($sqlNOterminadas);
$filaNOterminadas = $resultadoNOterminadas->num_rows;

//actividades no terminadas
$sqlTerminadas = "SELECT * FROM actividades WHERE responsable = '$idSession' AND MONTH(fecha) = '$mes' AND YEAR(fecha) = '$annio' AND estatus = 1";
$resultadoTerminadas = $conn->query($sqlTerminadas);
$filaTerminadas = $resultadoTerminadas->num_rows;


    echo json_encode(array(
        'terminado'=>$filaTerminadas,
        'noTerminado'=>$filaNOterminadas
    ));

?>