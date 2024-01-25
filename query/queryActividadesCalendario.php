<?php
    session_start();
    include('../prcd/qc.php');
    // $usr = $_SESSION['usr'];
    $mes = $_POST['mes'];
    $annio = $_POST['annio'];

    $sqlSelect = "SELECT u.id AS responsable_id, u.color AS responsable_color,
    DATE_FORMAT(a.fecha, '%Y-%m-%d') AS fecha_dia,
    DAY(a.fecha) AS dia,
    MONTH(a.fecha) AS mes,
    YEAR(a.fecha) AS anno,
    COUNT(*) AS cantidad_actividades
    FROM actividades a
    INNER JOIN users u ON a.responsable = u.id
    WHERE MONTH(a.fecha) = $mes AND YEAR(a.fecha) = $annio
    GROUP BY responsable_id, fecha_dia, dia, mes, anno";
    $resultadoAct = $conn->query($sqlSelect);

    // Verificar si se obtuvieron resultados
        if ($resultadoAct->num_rows > 0) {
            // Crear un array para almacenar los resultados
            $resultados_array = array();

            // Iterar sobre los resultados y almacenarlos en el array
            while ($row = $resultadoAct->fetch_assoc()) {
                $resultados_array[] = $row;
            }

            // Convertir el array a JSON
            $json_resultados = json_encode($resultados_array);

            // Imprimir el JSON
            echo $json_resultados;
        } else {
            // No se encontraron resultados, puedes devolver un mensaje de error o un JSON vacío
            echo json_encode(array('mensaje' => 'No se encontraron resultados'));
        }
    

?>