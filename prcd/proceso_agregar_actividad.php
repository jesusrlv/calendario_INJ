<?php
include('../prcd/qc.php');

    date_default_timezone_set('America/Mexico_City');
    setlocale(LC_TIME, 'es_MX.UTF-8');

    $fechaSistema = strftime("%Y-%m-%d,%H:%M:%S");

    $nombre = $_POST['nombre'];
    $tipoActividad = $_POST['tipoActividad'];
    $fechaActividad = $_POST['fechaActividad'];
    $descripcionActividad = $_POST['descripcionActividad'];
    $responsableActividad = $_POST['responsableActividad'];
    $temaActividad = $_POST['temaActividad'];
    $municipioActividad = $_POST['municipioActividad'];
    $lugarActividad = $_POST['lugarActividad'];
    $comunidadActividad = $_POST['comunidadActividad'];
    $horasalidaActividad = $_POST['horasalidaActividad'];
    $horaeventoActividad = $_POST['horaeventoActividad'];
    $observacionesActividad = $_POST['observacionesActividad'];
    $estatusActividad = $_POST['estatusActividad'];

    $sqlInsert ="INSERT INTO actividades (
        nombre,
        tipo,
        descripcion,
        fecha,
        responsable,
        tema,
        municipio,
        comunidad,
        lugar,
        hora_salida,
        hora_evento,
        observaciones,
        estatus,
        hora_registro
        ) 
        VALUES(
            '$nombre',
            '$tipoActividad',
            '$descripcionActividad',
            '$fechaActividad',
            '$responsableActividad',
            '$temaActividad',
            '$municipioActividad',
            '$comunidadActividad',
            '$lugarActividad',
            '$horasalidaActividad',
            '$horaeventoActividad',
            '$observacionesActividad',
            '$estatusActividad',
            '$fechaSistema'
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