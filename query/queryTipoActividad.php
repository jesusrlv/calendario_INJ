<?php
include('../prcd/qc.php');

    $sql = "SELECT * FROM catalogo_actividad";
    $resultadosql = $conn->query($sql);
    
    echo '<option value="">Selecciona actividad ...</option>';
    while($row = $resultadosql->fetch_assoc()){
        echo '
            <option value="'.$row['id'].'">'.$row['actividad'].'</option>
        ';
    }
?>