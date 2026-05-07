<?php
include "conexion.php";
proteger_pagina();

$buscar = "";
$genero = 0;

if (isset($_GET["buscar"])) {
    $buscar = trim($_GET["buscar"]);
}

if (isset($_GET["genero"])) {
    $genero = (int) $_GET["genero"];
}

$sql_generos = "SELECT * FROM genero ORDER BY nombre";
$resultado_generos = $conexion->query($sql_generos);

$where = "WHERE 1";

if ($buscar != "") {
    $buscar_sql = $conexion->real_escape_string($buscar);
    $where .= " AND (
        s.titulo LIKE '%$buscar_sql%'
        OR s.sinopsis LIKE '%$buscar_sql%'
        OR EXISTS (
            SELECT 1
            FROM serie_genero sg_buscar
            INNER JOIN genero g_buscar ON sg_buscar.id_genero = g_buscar.id_genero
            WHERE sg_buscar.id_serie = s.id_serie
            AND g_buscar.nombre LIKE '%$buscar_sql%'
        )
        OR EXISTS (
            SELECT 1
            FROM serie_personaje sp_buscar
            INNER JOIN personaje p_buscar ON sp_buscar.id_personaje = p_buscar.id_personaje
            WHERE sp_buscar.id_serie = s.id_serie
            AND p_buscar.nombre LIKE '%$buscar_sql%'
        )
        OR EXISTS (
            SELECT 1
            FROM serie_personaje sp_buscar
            INNER JOIN actor_personaje ap_buscar ON sp_buscar.id_personaje = ap_buscar.id_personaje
            INNER JOIN actor a_buscar ON ap_buscar.id_actor = a_buscar.id_actor
            WHERE sp_buscar.id_serie = s.id_serie
            AND (
                a_buscar.nombre LIKE '%$buscar_sql%'
                OR a_buscar.apellido1 LIKE '%$buscar_sql%'
                OR a_buscar.apellido2 LIKE '%$buscar_sql%'
            )
        )
    )";
}

if ($genero > 0) {
    $where .= " AND EXISTS (
        SELECT 1
        FROM serie_genero sg
        WHERE sg.id_serie = s.id_serie
        AND sg.id_genero = $genero
    )";
}

$sql_series = "
    SELECT s.*,
        (
            SELECT GROUP_CONCAT(g.nombre SEPARATOR ', ')
            FROM serie_genero sg
            INNER JOIN genero g ON sg.id_genero = g.id_genero
            WHERE sg.id_serie = s.id_serie
        ) AS generos
    FROM serie s
    $where
    ORDER BY s.titulo
";

$resultado_series = $conexion->query($sql_series);

$resultado_personajes = false;
$resultado_actores = false;

if ($buscar != "") {
    $buscar_sql = $conexion->real_escape_string($buscar);

    $sql_personajes = "
        SELECT DISTINCT p.*,
            (
                SELECT GROUP_CONCAT(s.titulo SEPARATOR ', ')
                FROM serie_personaje sp
                INNER JOIN serie s ON sp.id_serie = s.id_serie
                WHERE sp.id_personaje = p.id_personaje
            ) AS series
        FROM personaje p
        LEFT JOIN serie_personaje sp ON p.id_personaje = sp.id_personaje
        LEFT JOIN serie s ON sp.id_serie = s.id_serie
        LEFT JOIN actor_personaje ap ON p.id_personaje = ap.id_personaje
        LEFT JOIN actor a ON ap.id_actor = a.id_actor
        WHERE p.nombre LIKE '%$buscar_sql%'
        OR p.descripcion LIKE '%$buscar_sql%'
        OR p.tipo_personaje LIKE '%$buscar_sql%'
        OR s.titulo LIKE '%$buscar_sql%'
        OR a.nombre LIKE '%$buscar_sql%'
        OR a.apellido1 LIKE '%$buscar_sql%'
        OR a.apellido2 LIKE '%$buscar_sql%'
        ORDER BY p.nombre
    ";

    $sql_actores = "
        SELECT DISTINCT a.*
        FROM actor a
        LEFT JOIN actor_personaje ap ON a.id_actor = ap.id_actor
        LEFT JOIN personaje p ON ap.id_personaje = p.id_personaje
        LEFT JOIN serie_personaje sp ON p.id_personaje = sp.id_personaje
        LEFT JOIN serie s ON sp.id_serie = s.id_serie
        WHERE a.nombre LIKE '%$buscar_sql%'
        OR a.apellido1 LIKE '%$buscar_sql%'
        OR a.apellido2 LIKE '%$buscar_sql%'
        OR a.descripcion LIKE '%$buscar_sql%'
        OR a.nacionalidad LIKE '%$buscar_sql%'
        OR p.nombre LIKE '%$buscar_sql%'
        OR s.titulo LIKE '%$buscar_sql%'
        ORDER BY a.nombre, a.apellido1
    ";

    $resultado_personajes = $conexion->query($sql_personajes);
    $resultado_actores = $conexion->query($sql_actores);
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TVSW</title>
    <link rel="stylesheet" href="../estilo/estilo.css?v=3">
</head>
<body>
    <header>
        <h1>TVSW</h1>
        <p>Una pequena wikipedia de series, personajes y actores.</p>
        <?php mostrar_menu(); ?>
    </header>

    <main>
        <section class="buscador">
            <form method="GET" action="index.php">
                <input type="text" name="buscar" placeholder="Buscar serie, genero, actor o personaje..." value="<?php echo limpiar($buscar); ?>">

                <select name="genero">
                    <option value="0">Todos los generos</option>
                    <?php while ($fila_genero = $resultado_generos->fetch_assoc()) { ?>
                        <option value="<?php echo $fila_genero["id_genero"]; ?>" <?php if ($genero == $fila_genero["id_genero"]) echo "selected"; ?>>
                            <?php echo limpiar($fila_genero["nombre"]); ?>
                        </option>
                    <?php } ?>
                </select>

                <button type="submit">Buscar</button>
                <a href="index.php">Limpiar</a>
            </form>
        </section>

        <?php if ($buscar != "") { ?>
            <h2>Resultados de busqueda para "<?php echo limpiar($buscar); ?>"</h2>
        <?php } else { ?>
            <h2>Series</h2>
        <?php } ?>

        <section class="series">
            <?php if ($resultado_series->num_rows == 0) { ?>
                <p>No se han encontrado series.</p>
            <?php } ?>

            <?php while ($serie = $resultado_series->fetch_assoc()) { ?>
                <article class="tarjeta">
                    <img src="<?php echo limpiar(ruta_imagen($serie["portada"])); ?>" alt="<?php echo limpiar($serie["titulo"]); ?>">

                    <div class="contenido">
                        <h2><?php echo limpiar($serie["titulo"]); ?></h2>
                        <p><?php echo limpiar($serie["sinopsis"]); ?></p>

                        <ul>
                            <li><strong>Generos:</strong> <?php echo limpiar($serie["generos"]); ?></li>
                            <li><strong>Temporadas:</strong> <?php echo limpiar($serie["temporadas"]); ?></li>
                            <li><strong>Estado:</strong> <?php echo limpiar($serie["estado"]); ?></li>
                            <li><strong>Puntuacion:</strong> <?php echo limpiar($serie["puntuacion_media"]); ?></li>
                        </ul>

                        <a class="boton" href="serie.php?id=<?php echo $serie["id_serie"]; ?>">Ver ficha</a>
                    </div>
                </article>
            <?php } ?>
        </section>

        <?php if ($buscar != "") { ?>
            <h2>Personajes encontrados</h2>

            <section class="personajes">
                <?php if ($resultado_personajes->num_rows == 0) { ?>
                    <p>No se han encontrado personajes.</p>
                <?php } ?>

                <?php while ($personaje = $resultado_personajes->fetch_assoc()) { ?>
                    <article class="personaje">
                        <img src="<?php echo limpiar(ruta_imagen($personaje["imagen"])); ?>" alt="<?php echo limpiar($personaje["nombre"]); ?>">

                        <div>
                            <h3><?php echo limpiar($personaje["nombre"]); ?></h3>
                            <p><?php echo limpiar($personaje["descripcion"]); ?></p>
                            <p><strong>Tipo:</strong> <?php echo limpiar($personaje["tipo_personaje"]); ?></p>
                            <p><strong>Series:</strong> <?php echo limpiar($personaje["series"]); ?></p>
                            <a class="boton" href="personaje.php?id=<?php echo $personaje["id_personaje"]; ?>">Ver personaje</a>
                        </div>
                    </article>
                <?php } ?>
            </section>

            <h2>Actores encontrados</h2>

            <section class="personajes">
                <?php if ($resultado_actores->num_rows == 0) { ?>
                    <p>No se han encontrado actores.</p>
                <?php } ?>

                <?php while ($actor = $resultado_actores->fetch_assoc()) { ?>
                    <article class="personaje">
                        <img src="<?php echo limpiar(ruta_imagen($actor["foto"])); ?>" alt="<?php echo limpiar(nombre_completo($actor["nombre"], $actor["apellido1"], $actor["apellido2"])); ?>">

                        <div>
                            <h3><?php echo limpiar(nombre_completo($actor["nombre"], $actor["apellido1"], $actor["apellido2"])); ?></h3>
                            <p><?php echo limpiar($actor["descripcion"]); ?></p>
                            <p><strong>Nacionalidad:</strong> <?php echo limpiar($actor["nacionalidad"]); ?></p>
                            <a class="boton" href="actor.php?id=<?php echo $actor["id_actor"]; ?>">Ver actor</a>
                        </div>
                    </article>
                <?php } ?>
            </section>
        <?php } ?>
    </main>
</body>
</html>

