<?php

    include('../prcd/qc.php');
    
        date_default_timezone_set('America/Mexico_City');
        setlocale(LC_TIME, 'es_MX.UTF-8');

        $sqlDepto = "SELECT * FROM area";
        $resultadosqlDepto = $conn->query($sqlDepto);
        echo '';
        while($rowDepto = $resultadosqlDepto->fetch_assoc()){
            $area = $rowDepto['id'];
            echo '
            <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-body-secondary text-uppercase">
                <span>'.$rowDepto['area'].'</span>
                <a class="link-secondary" href="#" aria-label="Add a new report">
                <svg class="bi"><use xlink:href="#plus-circle"/></svg>
                </a>
            </h6>
            ';
            $sql = "SELECT * FROM users WHERE perfil = 2 AND estatus = 1 AND area = '$area' ORDER BY estatus DESC";
            $resultadosql = $conn->query($sql);
            while($row = $resultadosql->fetch_assoc()){
                echo '
                <li class="nav-item">
                    <a class="nav-link d-flex align-items-center gap-2" href="#">
                        <span class="badge rounded-pill" style="background-color:'.$row["color"].'"><svg class="bi"><use xlink:href="#person"/></svg></span>
                        <span class="badge rounded-pill" style="background-color:'.$row["color"].'">'.$row['nombre'].'</span>
                    </a>
                </li>'; 
            }
        }


?>