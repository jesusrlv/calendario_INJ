<?php

    include('../prcd/qc.php');
    
        date_default_timezone_set('America/Mexico_City');
        setlocale(LC_TIME, 'es_MX.UTF-8');

        $sqlDepto = "SELECT * FROM area";
        $resultadosqlDepto = $conn->query($sqlDepto);
        echo '';
        $x = 0;
        while($rowDepto = $resultadosqlDepto->fetch_assoc()){
            $area = $rowDepto['id'];
            $x++;
            echo '
            
                <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-body-secondary text-uppercase">
                    <span><i class="bi bi-clipboard-check-fill"></i> '.$rowDepto['area'].'</span>
                    <a class="link-secondary" aria-label="Colapsar listado" data-bs-toggle="collapse" href="#collapse'.$x.'" aria-expanded="false" aria-controls="collapseExample">
                        <svg class="bi"><use xlink:href="#plus-circle"/></svg>
                    </a>
                </h6>
                ';
                $sql = "SELECT * FROM users WHERE perfil = 2 AND estatus = 1 AND area = '$area' ORDER BY estatus DESC";
                $resultadosql = $conn->query($sql);
                while($row = $resultadosql->fetch_assoc()){
                    echo '
                    <div id="collapse'.$x.'" class="panel-collapse show">
                        <li class="nav-item">
                        <a class="nav-link d-flex align-items-center gap-2" href="#" onclick="revisarCalendarioPorPersona()">
                        <span class="badge rounded-pill" style="background-color:'.$row["color"].'"><svg class="bi"><use xlink:href="#person"/></svg></span>
                        <span class="badge rounded-pill" style="background-color:'.$row["color"].'">'.$row['nombre'].'</span>
                        </a>
                        </li>
                    </div>
                    '; 
            }
        }


?>