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
    $sqlActividades = "SELECT * FROM actividades WHERE responsable = '$usr' AND month(fecha) = $mes AND year(fecha) = $annio";
    $resultadoAct = $conn->query($sqlActividades);
    $filaAct = $resultadoAct->num_rows;
    
    /* $fecha = new DateTime($row['fecha']);
    $mes = $fecha->format('m'); // Obtiene el día del mes (01-31)
    $annio = $fecha->format('Y'); // Obtiene el año de cuatro dígitos */

    // echo $usr.'<br>';
    // echo $color.'<br>';
    // echo $filaAct.'<br>';

    $usuarios[] = array(
        'usr' => $usr,
        'actividad' => $filaAct,
        'color' => $color,
        'mes' => $mes,
        'annio' => $annio,
    );
}
echo json_encode($usuarios);

?>