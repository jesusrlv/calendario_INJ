<?php
    session_start();
    include('../prcd/qc.php');
    // $usr = $_SESSION['usr'];
    $mes = $_POST['mes'];
    $annio = $_POST['annio'];

$sql = "SELECT * FROM users WHERE perfil = 2";
$resultado = $conn->query($sql);
while ($row = $resultado->fetch_assoc()){
    $usr = $row['id'];
    $color = $row['color']; 
    // $sqlActividades = "SELECT * FROM actividades WHERE responsable = '$usr' AND month(fecha) = $mes AND year(fecha) = $annio";
    // $resultadoAct = $conn->query($sqlActividades);
    // $filaAct = $resultadoAct->num_rows;
    // while($row = $resultadoAct->fetch_assoc()){
        
    // }

    $sqlSelect = "SELECT u.id AS responsable_id, u.color AS responsable_color,
    DATE_FORMAT(a.fecha, '%Y-%m-%d') AS fecha_dia,
    DAY(a.fecha) AS dia,
    MONTH(a.fecha) AS mes,
    YEAR(a.fecha) AS anno,
    COUNT(*) AS cantidad_actividades
    FROM actividades a
    INNER JOIN users u ON a.responsable = u.id
    GROUP BY responsable_id, fecha_dia, dia, mes, anno";
    $resultadoAct = $conn->query($sqlSelect);
    while($row=$resultadoAct->fetch_assoc){
        $usuarios[] = array(
            'usr' => $row['responsable_id'],
            'actividad' => $row['cantidad_actividades'],
            'color' => $row['responsable_color'],
            'mes' => $row['mes'],
            'annio' => $row['anno'],
            'dia' => $row['dia']
            
        );
    }

    /* $fecha = new DateTime($row['fecha']);
    $mes = $fecha->format('m'); // Obtiene el día del mes (01-31)
    $annio = $fecha->format('Y'); // Obtiene el año de cuatro dígitos */

    // echo $usr.'<br>';
    // echo $color.'<br>';
    // echo $filaAct.'<br>';

    // $usuarios[] = array(
    //     'usr' => $usr,
    //     'actividad' => $filaAct,
    //     'color' => $color,
    //     'mes' => $mes,
    //     'annio' => $annio,
    // );
}
echo json_encode($usuarios);

?>