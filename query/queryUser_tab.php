<?php
include('../prcd/qc.php');

    date_default_timezone_set('America/Mexico_City');
    setlocale(LC_TIME, 'es_MX.UTF-8');
    $x = 0;
    $sql = "SELECT * FROM users WHERE estatus = 1 ORDER BY id DESC";
    $resultadosql = $conn->query($sql);
        echo '<option value="" selected>Selecciona usuario...</option>';
        echo '<option value="0">Todas las áreas</option>';
    while($row = $resultadosql->fetch_assoc()){
        echo '<option value="'.$row['user'].'">'.$row['nombre'].'</option>';   
    }
?>