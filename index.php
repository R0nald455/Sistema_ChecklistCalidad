<?php include 'template/header.php' ?>

<?php
    include_once "model/conexion.php";
    $sql="Select * from preguntas";
    $resultado=$bd->query($sql);
?>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-7">
            <!-- inicio alerta -->
            <?php 
                if(isset($_GET['mensaje']) and $_GET['mensaje'] == 'falta'){
            ?>
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
            <strong>Error!</strong> Diligencia todos los campos!!!.
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
            <?php 
                }
            ?>

            <?php 
                if(isset($_GET['mensaje']) and $_GET['mensaje'] == 'registrado'){
            ?>
            <div class="alert alert-success alert-dismissible fade show" role="alert">
            <strong>Registrado!</strong> Actividad registrada perfectamente!!!!.
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
            <?php 
                }
            ?>   

            <?php 
                if(isset($_GET['mensaje']) and $_GET['mensaje'] == 'error'){
            ?>
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
            <strong>Error!</strong> Vuelve a intentarlo!!!!.
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
            <?php 
                }
            ?>   

            <!-- fin alerta -->
        </div>
        <div class="col-md-12">
            <div class="card">
                <div class="card-header"><center><b>Quality</b></center></div>
                <form action="insertar.php" method="POST">
                    <table class="table table-light table-borderless" >
                        <tr>
                            <th>No</th>
                            <th>Descripción</th>
                            <th>Estado</th>
                            <th>Observacion</th>
                        <?php
                        while ($fila = $resultado->fetch(PDO::FETCH_ASSOC)) { 
                        echo' 
                            <tr>
                            <td>'.$fila['id'].'</td>
                            <td>'.$fila['descripción'].'</td>
                            <td>
                                <select name="estado'.$fila['id'].'" id="estado">
                                    <option value="seleccionar" >Seleccionar</option>
                                    <option value="Si" >Si</option>
                                    <option value="No">No</option>
                                    <option value="N/A" selected>N/A</option>
                                </select></td>
                            <td><input type="text" name="obser'.$fila['id'].'" autocomplete="off"></td></tr>';
                        }
                        ?>
                    </table>
                    <center><input type="submit"></center><br><br>
                </form>
            </div>
        </div>
    </div>
</div>

<?php include 'template/footer.php' ?>