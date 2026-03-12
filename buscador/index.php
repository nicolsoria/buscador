<?php
require_once "conexion/conexion.php";
$personas = [];
$buscar = "";
if(isset($_GET['buscar']) && trim($_GET['buscar']) != ""){
$buscar = trim($_GET['buscar']);
$sql = $pdo->prepare("SELECT * FROM personas WHERE nombre LIKE ? OR ci LIKE ?");
$sql->execute(["%$buscar%","%$buscar%"]);
$personas = $sql->fetchAll(PDO::FETCH_ASSOC);
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<title>Buscador de Personas</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/estilos.css">
</head>

<body>
<div class="container mt-5">
<div class="card p-4 shadow">
<h2 class="text-center mb-4">🔎 Sistema de Consulta de Personas</h2>

<form method="GET">
<div class="row">
<div class="col-md-9">
<input
type="text"
name="buscar"
class="form-control"
placeholder="Buscar por nombre o CI"
value="<?= htmlspecialchars($buscar) ?>"
maxlength="50"
required>
</div>

<div class="col-md-3">
<button class="btn btn-primary w-100">Buscar</button>
</div>

</div>
</form>
</div>

<?php if(isset($_GET['buscar'])){ ?>
<div class="card mt-4 p-3 shadow">
<h4>Resultados</h4>
<?php if(!empty($personas)){ ?>

<p><strong><?= count($personas) ?> resultado(s) encontrado(s)</strong></p>
<table class="table table-hover text-center">

<tr>
<th>Foto</th>
<th>Nombre</th>
<th>CI</th>
<th>Acción</th>
</tr>

<?php foreach($personas as $p){ ?>

<tr>

<td>
<img src="img/<?= $p['foto'] ?>" width="60" height="60" style="object-fit:cover;border-radius:50%;">
</td>
<td><?= $p['nombre']." ".$p['apellido'] ?></td>
<td><?= $p['ci'] ?></td>

<td>
<a class="btn btn-success btn-sm" href="persona.php?id=<?= $p['id'] ?>">
Ver datos
</a>
</td>
</tr>
<?php } ?>
</table>
<?php } else { ?>
<div class="alert alert-warning text-center">
⚠ No se encontraron resultados
</div>
<?php } ?>
</div>
<?php } ?>
</div>
</body>
</html>