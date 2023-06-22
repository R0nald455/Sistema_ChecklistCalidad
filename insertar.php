<?php
    //print_r($_POST);


    include_once "model/conexion.php";
    $sql="Select count(*) from preguntas";
    $resultado=$bd->query($sql);
    while ($fila = $resultado->fetch(PDO::FETCH_NUM)) { 
        $total=$fila[0];
    }
    $x=1;
    $sql="truncate table resultados";
    $resultado=$bd->query($sql);


    while($x<=$total){
        $estado = $_POST["estado".$x.""];
        $obser = $_POST["obser".$x.""];

        if($estado=="seleccionar"){
            header('Location: index.php?mensaje=falta');
            $sql="truncate table resultados";
            $resultado=$bd->query($sql);
            exit();
        }

        $sentencia = $bd->prepare("INSERT INTO resultados(id,estado,observacion) VALUES (?,?,?);");
        $resultado = $sentencia->execute([$x,$estado,$obser]);
        $x=$x+1;
    }




    /*******************************************/
    if ($resultado === TRUE) {
        header('Location: index.php?mensaje=registrado');
    } else {
        header('Location: index.php?mensaje=error');
        exit();
    }
    
?>