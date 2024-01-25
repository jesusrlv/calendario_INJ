<?php
    session_start();
    include('../prcd/qc.php');
    // $usr = $_SESSION['usr'];

$sql = "SELECT * FROM users WHERE perfil = 2";
$resultado = $conn->query($sql);
while ($row = $resultado->fetch_assoc()){
    $usr = $row['id'];
    $color = $row['color']; 
    $sqlActividades = "SELECT * FROM actividades WHERE responsable = '$usr'";
    $resultadoAct = $conn->query($sqlActividades);
    $filaAct = $resultadoAct->num_rows;

    // echo $usr.'<br>';
    // echo $color.'<br>';
    // echo $filaAct.'<br>';

    $usuarios[] = array(
        'usr' => $usr,
        'actividad' => $filaAct,
        'color' => $color
    );
}
echo json_encode($usuarios);

?>