<?php
    $conexion = mysqli_connect('localhost', 'root', '','sem20251');
    $consulta = "SELECT * FROM alumnos";

    $resultado = mysqli_query($conexion, $consulta);
    $validarResultado = mysqli_num_rows($resultado);

    echo "En tu base sem20251 tienes $validarResultado";

?>