<?php
require_once "conexion/conexion.php";

if(!isset($_GET['id'])){
header("Location: index.php");
exit;
}

$id = $_GET['id'];
$sql = $pdo->prepare("SELECT * FROM personas WHERE id=?");
$sql->execute([$id]);
$persona = $sql->fetch(PDO::FETCH_ASSOC);

if(!$persona){
echo "<div style='text-align:center;margin-top:50px'>
<h3>Persona no encontrada</h3>
<a href='index.php'>Volver</a>
</div>";
exit;
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Datos de Persona</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/estilos.css">
</head>

<body>
<div class="container mt-5">
<div class="card p-4 shadow text-center">
<h2><?= $persona['nombre']." ".$persona['apellido'] ?></h2>
<div class="text-center">
<img src="img/<?= $persona['foto'] ?>" 
class="rounded-circle shadow mb-3"
width="170"
height="170"
style="object-fit:cover;">

</div>
<p><strong>CI:</strong> <?= $persona['ci'] ?></p>
<p><strong>Celular:</strong> <?= $persona['celular'] ?></p>
<p><strong>Dirección:</strong> <?= $persona['direccion'] ?></p>
<a href="index.php" class="btn btn-primary mt-3">Volver</a>
</div>
</div>

</body>
</html>