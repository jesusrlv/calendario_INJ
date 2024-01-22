<?php
include('../prcd/qc.php');

    date_default_timezone_set('America/Mexico_City');
    setlocale(LC_TIME, 'es_MX.UTF-8');

    $fechaSistema = strftime("%Y-%m-%d,%H:%M:%S");

    $nombre = $_POST['nombre'];
    $alias = $_POST['alias'];
    $pass = $_POST['pass'];
    $pass = md5($pass);
    $color = $_POST['color'];
    $area = $_POST['area'];
    $departamento = $_POST['departamento'];

    $sqlInsert ="INSERT INTO users (
        nombre,
        user,
        pwd,
        perfil,
        estatus,
        color,
        area,
        departamento) 
        VALUES(
            '$nombre',
            '$alias',
            '$pass',
            2,
            1,
            '$color',
            '$area',
            '$departamento'
            )";
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