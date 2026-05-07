<?php
include "conexion.php";
proteger_admin();

$mensaje = "";

if (isset($_GET["borrar"])) {
    $id_borrar = (int) $_GET["borrar"];
    $conexion->query("DELETE FROM serie WHERE id_serie = $id_borrar");
    header("Location: admin_series.php");
    exit;
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $id = (int) $_POST["id_serie"];
    $titulo = texto_sql($_POST["titulo"]);
    $sinopsis = texto_sql($_POST["sinopsis"]);
    $fecha_estreno = texto_sql($_POST["fecha_estreno"]);
    $fecha_fin = texto_sql($_POST["fecha_fin"]);
    $temporadas = entero_sql($_POST["temporadas"]);
    $estado = texto_sql($_POST["estado"]);
    $pais_origen = texto_sql($_POST["pais_origen"]);
    $idioma_original = texto_sql($_POST["idioma_original"]);
    $portada = texto_sql($_POST["portada"]);
    $banner = texto_sql($_POST["banner"]);
    $puntuacion_media = decimal_sql($_POST["puntuacion_media"]);

    if ($id > 0) {
        $sql = "
            UPDATE serie SET
                titulo = $titulo,
                sinopsis = $sinopsis,
                fecha_estreno = $fecha_estreno,
                fecha_fin = $fecha_fin,
                temporadas = $temporadas,
                estado = $estado,
                pais_origen = $pais_origen,
                idioma_original = $idioma_original,
                portada = $portada,
                banner = $banner,
                puntuacion_media = $puntuacion_media
            WHERE id_serie = $id
        ";
    } else {
        $sql = "
            INSERT INTO serie (titulo, sinopsis, fecha_estreno, fecha_fin, temporadas, estado, pais_origen, idioma_original, portada, banner, puntuacion_media)
            VALUES ($titulo, $sinopsis, $fecha_estreno, $fecha_fin, $temporadas, $estado, $pais_origen, $idioma_original, $portada, $banner, $puntuacion_media)
        ";
    }

    if ($conexion->query($sql)) {
        $mensaje = "Serie guardada correctamente.";
    } else {
        $mensaje = "Error al guardar la serie.";
    }
}

$serie = [
    "id_serie" => "",
    "titulo" => "",
    "sinopsis" => "",
    "fecha_estreno" => "",
    "fecha_fin" => "",
    "temporadas" => "",
    "estado" => "",
    "pais_origen" => "",
    "idioma_original" => "",
    "portada" => "",
    "banner" => "",
    "puntuacion_media" => ""
];

if (isset($_GET["editar"])) {
    $id_editar = (int) $_GET["editar"];
    $resultado_editar = $conexion->query("SELECT * FROM serie WHERE id_serie = $id_editar");

    if ($resultado_editar->num_rows == 1) {
        $serie = $resultado_editar->fetch_assoc();
    }
}

$resultado_series = $conexion->query("SELECT * FROM serie ORDER BY titulo");
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestionar series - TVSW</title>
    <link rel="stylesheet" href="../estilo/estilo.css?v=3">
</head>
<body>
    <header>
        <h1>Gestionar series</h1>
        <?php mostrar_menu(); ?>
    </header>

    <main>
        <?php if ($mensaje != "") { ?>
            <p class="mensaje-ok"><?php echo limpiar($mensaje); ?></p>
        <?php } ?>

        <section class="formulario-admin">
            <h2><?php echo $serie["id_serie"] != "" ? "Editar serie" : "AÃ±adir serie"; ?></h2>

            <form method="POST" action="admin_series.php">
                <input type="hidden" name="id_serie" value="<?php echo limpiar($serie["id_serie"]); ?>">

                <label>Titulo</label>
                <input type="text" name="titulo" value="<?php echo limpiar($serie["titulo"]); ?>" required>

                <label>Sinopsis</label>
                <textarea name="sinopsis" rows="4"><?php echo limpiar($serie["sinopsis"]); ?></textarea>

                <label>Fecha estreno</label>
                <input type="date" name="fecha_estreno" value="<?php echo limpiar($serie["fecha_estreno"]); ?>">

                <label>Fecha fin</label>
                <input type="date" name="fecha_fin" value="<?php echo limpiar($serie["fecha_fin"]); ?>">

                <label>Temporadas</label>
                <input type="number" name="temporadas" value="<?php echo limpiar($serie["temporadas"]); ?>">

                <label>Estado</label>
                <input type="text" name="estado" value="<?php echo limpiar($serie["estado"]); ?>">

                <label>Pais origen</label>
                <input type="text" name="pais_origen" value="<?php echo limpiar($serie["pais_origen"]); ?>">

                <label>Idioma original</label>
                <input type="text" name="idioma_original" value="<?php echo limpiar($serie["idioma_original"]); ?>">

                <label>Portada</label>
                <input type="text" name="portada" value="<?php echo limpiar($serie["portada"]); ?>" placeholder="ej: dexter_portada.jpg">

                <label>Banner</label>
                <input type="text" name="banner" value="<?php echo limpiar($serie["banner"]); ?>" placeholder="ej: dexter_banner.jpg">

                <label>Puntuacion media</label>
                <input type="number" step="0.1" name="puntuacion_media" value="<?php echo limpiar($serie["puntuacion_media"]); ?>">

                <button type="submit">Guardar serie</button>
                <a href="admin_series.php">Limpiar formulario</a>
            </form>
        </section>

        <section class="tabla-admin">
            <h2>Listado de series</h2>

            <table>
                <tr>
                    <th>Titulo</th>
                    <th>Estado</th>
                    <th>Temporadas</th>
                    <th>Acciones</th>
                </tr>

                <?php while ($fila = $resultado_series->fetch_assoc()) { ?>
                    <tr>
                        <td><?php echo limpiar($fila["titulo"]); ?></td>
                        <td><?php echo limpiar($fila["estado"]); ?></td>
                        <td><?php echo limpiar($fila["temporadas"]); ?></td>
                        <td class="acciones">
                            <a href="admin_series.php?editar=<?php echo $fila["id_serie"]; ?>">Editar</a>
                            <a href="admin_series.php?borrar=<?php echo $fila["id_serie"]; ?>" onclick="return confirm('Â¿Seguro que quieres borrar esta serie?')">Borrar</a>
                        </td>
                    </tr>
                <?php } ?>
            </table>
        </section>
    </main>
</body>
</html>

