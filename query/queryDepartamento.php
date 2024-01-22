<?php
include('../prcd/qc.php');

    $area = $_POST['area'];
    $x = 0;
    $sql = "SELECT * FROM departamento WHERE area = '$area'";
    $resultadosql = $conn->query($sql);
    
    echo '<option selected>Selecciona departamento ...</option>';
    while($row = $resultadosql->fetch_assoc()){
        $x++; 
        echo '
            <option value="'.$row['id'].'">'.$row['departamento'].'</option>
        ';
    }
?>