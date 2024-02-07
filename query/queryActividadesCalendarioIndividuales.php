<?php
    session_start();
    include('../prcd/qc.php');
    // $usr = $_SESSION['usr'];
    $dia = $_POST['dia'];
    $mes = $_POST['mes'];
    $annio = $_POST['annio'];
    $fecha = $_POST['fecha'];


    $sqlSelect = "SELECT * FROM actividades WHERE fecha = '$fecha' GROUP BY hora_evento
    ORDER BY hora_evento asc";
    $resultadoAct = $conn->query($sqlSelect);
    while($row=$resultadoAct->fetch_assoc()){
        echo'
        <dl>
            <dt>'.$row['hora_evento'].'</dt>
            <dd><hr></dd>
            <dd><span style="color:red">Red</span>
            '.$row['nombre'].'</dd>
            <dt>06:30</dt>
            <dd><hr></dd>
            <dd>- white cold drink</dd>
        </dl>';
    }    
    

?>