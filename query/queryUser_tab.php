<?php
// include('../prcd/qc.php');

//     date_default_timezone_set('America/Mexico_City');
//     setlocale(LC_TIME, 'es_MX.UTF-8');
//     $x = 0;
//     $sql = "SELECT * FROM users WHERE estatus = 1 ORDER BY id DESC";
//     $resultadosql = $conn->query($sql);
//         echo '<option value="" selected>Selecciona usuario...</option>';
//         echo '<option value="0">Todas las áreas</option>';
//     while($row = $resultadosql->fetch_assoc()){
//         echo '<option value="'.$row['user'].'">'.$row['nombre'].'</option>';   
//     }
?>

<?php
// Incluye el archivo de conexión a la base de datos
include('../prcd/qc.php');

// Establece la zona horaria y la configuración regional
date_default_timezone_set('America/Mexico_City');
setlocale(LC_TIME, 'es_MX.UTF-8');

// Consulta SQL con una consulta preparada
$sql = "SELECT user, nombre FROM users WHERE estatus = ? ORDER BY id DESC";

// Preparar la consulta
$stmt = $conn->prepare($sql);

// Verificar si la preparación de la consulta fue exitosa
if ($stmt) {
    // Vincular parámetros y ejecutar la consulta
    $estatus = 1;
    $stmt->bind_param("i", $estatus);
    $stmt->execute();

    // Obtener resultados de la consulta
    $resultadosql = $stmt->get_result();

    // Verificar si se obtuvieron resultados
    if ($resultadosql->num_rows > 0) {
        // Imprimir opciones de selección
        echo '<option value="" selected>Selecciona usuario...</option>';
        echo '<option value="0">Todas las áreas</option>';

        // Iterar sobre los resultados y mostrar los datos
        while ($row = $resultadosql->fetch_assoc()) {
            echo '<option value="' . htmlspecialchars($row['user']) . '">' . htmlspecialchars($row['nombre']) . '</option>';
        }
    } else {
        // No se encontraron resultados
        echo '<option value="">No hay usuarios disponibles</option>';
    }

    // Cerrar la declaración y la conexión a la base de datos
    $stmt->close();
} else {
    // Error al preparar la consulta
    echo '<option value="">Error al obtener usuarios</option>';
}

// Cerrar la conexión a la base de datos
$conn->close();
?>
