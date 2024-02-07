<?php
    session_start();
    include('../prcd/qc.php');
    // $usr = $_SESSION['usr'];
    $dia = $_POST['dia'];
    $mes = $_POST['mes'];
    $annio = $_POST['annio'];
    $fecha = $_POST['fecha'];


    $sqlSelect = "SELECT * FROM actividades WHERE fecha = '$fecha' ORDER BY hora_evento ASC";
    $resultadoAct = $conn->query($sqlSelect);
    while($row=$resultadoAct->fetch_assoc()){
        $usr = $row['responsable'];
        $queryUsr = "SELECT * FROM users WHERE id = '$usr'";
        $resultadoUsr = $conn->query($queryUsr);
        $rowUsr = $resultadoUsr->fetch_assoc();

        $Hora = $row['hora_evento'];
        $queryHora = "SELECT * FROM hora WHERE id = '$Hora'";
        $resultadoHora = $conn->query($queryHora);
        $rowHora = $resultadoHora->fetch_assoc();
        
        $horaSalida = $row['hora_salida'];
        $queryhoraSalida = "SELECT * FROM hora WHERE id = '$horaSalida'";
        $resultadohoraSalida = $conn->query($queryhoraSalida);
        $rowhoraSalida = $resultadohoraSalida->fetch_assoc();

        $tipoEvento = $row['tipo'];
        $queryEvento = "SELECT * FROM catalogo_actividad WHERE id = '$tipoEvento'";
        $resultadoEvento = $conn->query($queryEvento);
        $rowEvento = $resultadoEvento->fetch_assoc();

        $tipoMpio = $row['municipio'];
        $queryMpio = "SELECT * FROM catalogo_municipios WHERE id = '$tipoMpio'";
        $resultadoMpio = $conn->query($queryMpio);
        $rowMpio = $resultadoMpio->fetch_assoc();

        $estatus = $row['estatus'];
        if ($estatus == 1) {
            $estatusText = '<i class="bi bi-check-circle-fill text-success"></i> Terminado';
        }
        else if($estatus == 2){
            $estatusText = '<i class="bi bi-exclamation-circle-fill text-warning"></i> En proceso';
        }
        else if($estatus == 0){
            $estatusText = '<i class="bi bi-x-circle-fill text-danger"></i> No terminado';
        }

        echo'
        <dl>
            <dd><hr></dd>
            <dt><p><span class="badge" style="background-color:'.$rowUsr['color'].'">'.$rowHora['hora'].'</span></p></dt>
            
            <dd>
                <p><strong>'.$row['nombre'].'</strong></p> 
                <strong>Tipo de evento:</strong> '.$rowEvento['actividad'].'<br>
                <strong>Tema:</strong> '.$row['tema'].'<br>
                <strong>Municipio:</strong> '.$rowMpio['nombreMunicipio'].'<br>
                <strong>Hora de salida:</strong> '.$rowhoraSalida['hora'].'<br> '.$row['observaciones'].'<br> '.$estatusText.'
            </dd>
            
            
        </dl>';
    }    
    

?>