<?php
include('../prcd/qc.php');

    $sql = "SELECT * FROM catalogo_municipios WHERE idCatEstado = 32";
    $resultadosql = $conn->query($sql);
    
    echo '<option value="">Selecciona municipio ...</option>';
    while($row = $resultadosql->fetch_assoc()){
        echo '
            <option value="'.$row['id'].'">'.$row['nombreMunicipio'].'</option>
        ';
    }
?>