<?php
include('../prcd/qc.php');

    $sql = "SELECT * FROM users";
    $resultadosql = $conn->query($sql);
    
    echo '<option value="">Selecciona responsable ...</option>';
    while($row = $resultadosql->fetch_assoc()){
        echo '
            <option value="'.$row['id'].'">'.$row['nombre'].'</option>
        ';
    }
?>