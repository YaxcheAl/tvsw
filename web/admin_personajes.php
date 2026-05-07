<?php
include "conexion.php";
proteger_admin();

$mensaje = "";

if (isset($_GET["borrar"])) {
    $id_borrar = (int) $_GET["borrar"];
    $conexion->query("DELETE FROM personaje WHERE id_personaje = $id_borrar");
    header("Location: admin_personajes.php");
    exit;
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $id = (int) $_POST["id_personaje"];
    $nombre = texto_sql($_POST["nombre"]);
    $descripcion = texto_sql($_POST["descripcion"]);
    $imagen = texto_sql($_POST["imagen"]);
    $tipo_personaje = texto_sql($_POST["tipo_personaje"]);

    if ($id > 0) {
        $sql = "
            UPDATE personaje SET
                nombre = $nombre,
                descripcion = $descripcion,
                imagen = $imagen,
                tipo_personaje = $tipo_personaje
            WHERE id_personaje = $id
        ";
    } else {
        $sql = "
            INSERT INTO personaje (nombre, descripcion, imagen, tipo_personaje)
            VALUES ($nombre, $descripcion, $imagen, $tipo_personaje)
        ";
    }

    if ($conexion->query($sql)) {
        $mensaje = "Personaje guardado correctamente.";
    } else {
        $mensaje = "Error al guardar el personaje.";
    }
}

$personaje = [
    "id_personaje" => "",
    "nombre" => "",
    "descripcion" => "",
    "imagen" => "",
    "tipo_personaje" => ""
];

if (isset($_GET["editar"])) {
    $id_editar = (int) $_GET["editar"];
    $resultado_editar = $conexion->query("SELECT * FROM personaje WHERE id_personaje = $id_editar");

    if ($resultado_editar->num_rows == 1) {
        $personaje = $resultado_editar->fetch_assoc();
    }
}

$resultado_personajes = $conexion->query("SELECT * FROM personaje ORDER BY nombre");
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestionar personajes - TVSW</title>
    <link rel="stylesheet" href="../estilo/estilo.css?v=3">
</head>
<body>
    <header>
        <h1>Gestionar personajes</h1>
        <?php mostrar_menu(); ?>
    </header>

    <main>
        <?php if ($mensaje != "") { ?>
            <p class="mensaje-ok"><?php echo limpiar($mensaje); ?></p>
        <?php } ?>

        <section class="formulario-admin">
            <h2><?php echo $personaje["id_personaje"] != "" ? "Editar personaje" : "AÃ±adir personaje"; ?></h2>

            <form method="POST" action="admin_personajes.php">
                <input type="hidden" name="id_personaje" value="<?php echo limpiar($personaje["id_personaje"]); ?>">

                <label>Nombre</label>
                <input type="text" name="nombre" value="<?php echo limpiar($personaje["nombre"]); ?>" required>

                <label>Descripcion</label>
                <textarea name="descripcion" rows="4"><?php echo limpiar($personaje["descripcion"]); ?></textarea>

                <label>Imagen</label>
                <input type="text" name="imagen" value="<?php echo limpiar($personaje["imagen"]); ?>" placeholder="ej: dean_winchester.jpg">

                <label>Tipo de personaje</label>
                <input type="text" name="tipo_personaje" value="<?php echo limpiar($personaje["tipo_personaje"]); ?>">

                <button type="submit">Guardar personaje</button>
                <a href="admin_personajes.php">Limpiar formulario</a>
            </form>
        </section>

        <section class="tabla-admin">
            <h2>Listado de personajes</h2>

            <table>
                <tr>
                    <th>Nombre</th>
                    <th>Tipo</th>
                    <th>Acciones</th>
                </tr>

                <?php while ($fila = $resultado_personajes->fetch_assoc()) { ?>
                    <tr>
                        <td><?php echo limpiar($fila["nombre"]); ?></td>
                        <td><?php echo limpiar($fila["tipo_personaje"]); ?></td>
                        <td class="acciones">
                            <a href="admin_personajes.php?editar=<?php echo $fila["id_personaje"]; ?>">Editar</a>
                            <a href="admin_personajes.php?borrar=<?php echo $fila["id_personaje"]; ?>" onclick="return confirm('Â¿Seguro que quieres borrar este personaje?')">Borrar</a>
                        </td>
                    </tr>
                <?php } ?>
            </table>
        </section>
    </main>
</body>
</html>

