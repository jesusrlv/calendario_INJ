<?php
include('../prcd/qc.php');

    $area = $_POST['area'];
    $sql = "SELECT * FROM departamento WHERE area = '$area'";
    $resultadosql = $conn->query($sql);
    
    echo '<option value="">Selecciona departamento ...</option>';
    while($row = $resultadosql->fetch_assoc()){
        
        echo '
            <option value="'.$row['id'].'">'.$row['departamento'].'</option>
        ';
    }
?>