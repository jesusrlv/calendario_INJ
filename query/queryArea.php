<?php
include('../prcd/qc.php');

    $x = 0;
    $sql = "SELECT * FROM area";
    $resultadosql = $conn->query($sql);
    
    echo '<option value="">Selecciona área ...</option>';
    while($row = $resultadosql->fetch_assoc()){
        $x++; 
        echo '
            <option value="'.$row['id'].'">'.$row['area'].'</option>
        ';
    }
?>