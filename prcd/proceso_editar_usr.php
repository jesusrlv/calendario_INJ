<?php
include('../prcd/qc.php');

    date_default_timezone_set('America/Mexico_City');
    setlocale(LC_TIME, 'es_MX.UTF-8');

    $fechaSistema = strftime("%Y-%m-%d,%H:%M:%S");

    $id = $_POST['idHidden'];
    $nombre = $_POST['nombre'];
    $user = $_POST['user'];
    $perfil = $_POST['perfil'];
    $estatus = $_POST['estatus'];
    $color = $_POST['color'];

    $sqlInsert ="UPDATE users SET 
        nombre = '$nombre',
        user = '$user',
        perfil = '$perfil',
        estatus = '$estatus',
        color = '$color'
        WHERE id = '$id'";
    $resultadosqlInsert = $conn->query($sqlInsert);

    if($resultadosqlInsert){
        echo json_encode(array(
            "success" => 1
        ));
    }
    else{
        echo json_encode(array(
            "success" => 0
        ));
    }

?>