<?php
include "conexion.php";
proteger_admin();

$mensaje = "";

if (isset($_GET["borrar"])) {
    $id_borrar = (int) $_GET["borrar"];
    $conexion->query("DELETE FROM actor WHERE id_actor = $id_borrar");
    header("Location: admin_actores.php");
    exit;
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $id = (int) $_POST["id_actor"];
    $nombre = texto_sql($_POST["nombre"]);
    $apellido1 = texto_sql($_POST["apellido1"]);
    $apellido2 = texto_sql($_POST["apellido2"]);
    $fecha_nacimiento = texto_sql($_POST["fecha_nacimiento"]);
    $nacionalidad = texto_sql($_POST["nacionalidad"]);
    $foto = texto_sql($_POST["foto"]);
    $descripcion = texto_sql($_POST["descripcion"]);

    if ($id > 0) {
        $sql = "
            UPDATE actor SET
                nombre = $nombre,
                apellido1 = $apellido1,
                apellido2 = $apellido2,
                fecha_nacimiento = $fecha_nacimiento,
                nacionalidad = $nacionalidad,
                foto = $foto,
                descripcion = $descripcion
            WHERE id_actor = $id
        ";
    } else {
        $sql = "
            INSERT INTO actor (nombre, apellido1, apellido2, fecha_nacimiento, nacionalidad, foto, descripcion)
            VALUES ($nombre, $apellido1, $apellido2, $fecha_nacimiento, $nacionalidad, $foto, $descripcion)
        ";
    }

    if ($conexion->query($sql)) {
        $mensaje = "Actor guardado correctamente.";
    } else {
        $mensaje = "Error al guardar el actor.";
    }
}

$actor = [
    "id_actor" => "",
    "nombre" => "",
    "apellido1" => "",
    "apellido2" => "",
    "fecha_nacimiento" => "",
    "nacionalidad" => "",
    "foto" => "",
    "descripcion" => ""
];

if (isset($_GET["editar"])) {
    $id_editar = (int) $_GET["editar"];
    $resultado_editar = $conexion->query("SELECT * FROM actor WHERE id_actor = $id_editar");

    if ($resultado_editar->num_rows == 1) {
        $actor = $resultado_editar->fetch_assoc();
    }
}

$resultado_actores = $conexion->query("SELECT * FROM actor ORDER BY nombre, apellido1");
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestionar actores - TVSW</title>
    <link rel="stylesheet" href="../estilo/estilo.css?v=3">
</head>
<body>
    <header>
        <h1>Gestionar actores</h1>
        <?php mostrar_menu(); ?>
    </header>

    <main>
        <?php if ($mensaje != "") { ?>
            <p class="mensaje-ok"><?php echo limpiar($mensaje); ?></p>
        <?php } ?>

        <section class="formulario-admin">
            <h2><?php echo $actor["id_actor"] != "" ? "Editar actor" : "AÃ±adir actor"; ?></h2>

            <form method="POST" action="admin_actores.php">
                <input type="hidden" name="id_actor" value="<?php echo limpiar($actor["id_actor"]); ?>">

                <label>Nombre</label>
                <input type="text" name="nombre" value="<?php echo limpiar($actor["nombre"]); ?>" required>

                <label>Primer apellido</label>
                <input type="text" name="apellido1" value="<?php echo limpiar($actor["apellido1"]); ?>">

                <label>Segundo apellido</label>
                <input type="text" name="apellido2" value="<?php echo limpiar($actor["apellido2"]); ?>">

                <label>Fecha de nacimiento</label>
                <input type="date" name="fecha_nacimiento" value="<?php echo limpiar($actor["fecha_nacimiento"]); ?>">

                <label>Nacionalidad</label>
                <input type="text" name="nacionalidad" value="<?php echo limpiar($actor["nacionalidad"]); ?>">

                <label>Foto</label>
                <input type="text" name="foto" value="<?php echo limpiar($actor["foto"]); ?>" placeholder="ej: jensen_ackles.jpg">

                <label>Descripcion</label>
                <textarea name="descripcion" rows="4"><?php echo limpiar($actor["descripcion"]); ?></textarea>

                <button type="submit">Guardar actor</button>
                <a href="admin_actores.php">Limpiar formulario</a>
            </form>
        </section>

        <section class="tabla-admin">
            <h2>Listado de actores</h2>

            <table>
                <tr>
                    <th>Nombre</th>
                    <th>Nacionalidad</th>
                    <th>Acciones</th>
                </tr>

                <?php while ($fila = $resultado_actores->fetch_assoc()) { ?>
                    <tr>
                        <td><?php echo limpiar(nombre_completo($fila["nombre"], $fila["apellido1"], $fila["apellido2"])); ?></td>
                        <td><?php echo limpiar($fila["nacionalidad"]); ?></td>
                        <td class="acciones">
                            <a href="admin_actores.php?editar=<?php echo $fila["id_actor"]; ?>">Editar</a>
                            <a href="admin_actores.php?borrar=<?php echo $fila["id_actor"]; ?>" onclick="return confirm('Â¿Seguro que quieres borrar este actor?')">Borrar</a>
                        </td>
                    </tr>
                <?php } ?>
            </table>
        </section>
    </main>
</body>
</html>

