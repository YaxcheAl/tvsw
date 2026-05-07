<?php
include "conexion.php";
proteger_pagina();

$buscar = "";

if (isset($_GET["buscar"])) {
    $buscar = trim($_GET["buscar"]);
}

$where = "";

if ($buscar != "") {
    $buscar_sql = $conexion->real_escape_string($buscar);
    $where = "
        WHERE a.nombre LIKE '%$buscar_sql%'
        OR a.apellido1 LIKE '%$buscar_sql%'
        OR a.apellido2 LIKE '%$buscar_sql%'
        OR a.descripcion LIKE '%$buscar_sql%'
        OR a.nacionalidad LIKE '%$buscar_sql%'
        OR p.nombre LIKE '%$buscar_sql%'
        OR s.titulo LIKE '%$buscar_sql%'
    ";
}

$sql_actores = "
    SELECT DISTINCT a.*
    FROM actor a
    LEFT JOIN actor_personaje ap ON a.id_actor = ap.id_actor
    LEFT JOIN personaje p ON ap.id_personaje = p.id_personaje
    LEFT JOIN serie_personaje sp ON p.id_personaje = sp.id_personaje
    LEFT JOIN serie s ON sp.id_serie = s.id_serie
    $where
    ORDER BY a.nombre, a.apellido1
";

$resultado_actores = $conexion->query($sql_actores);
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Actores - TVSW</title>
    <link rel="stylesheet" href="../estilo/estilo.css?v=3">
</head>
<body>
    <header>
        <h1>Actores</h1>
        <p>Explora actores y actrices del catalogo.</p>
        <?php mostrar_menu(); ?>
    </header>

    <main>
        <section class="buscador">
            <form method="GET" action="actores.php">
                <input type="text" name="buscar" placeholder="Buscar actor, personaje o serie..." value="<?php echo limpiar($buscar); ?>">
                <button type="submit">Buscar</button>
                <a href="actores.php">Limpiar</a>
            </form>
        </section>

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
    </main>
</body>
</html>

