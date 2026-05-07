<?php
include "conexion.php";
proteger_pagina();

$id = 0;

if (isset($_GET["id"])) {
    $id = (int) $_GET["id"];
}

$sql_personaje = "SELECT * FROM personaje WHERE id_personaje = $id";
$resultado_personaje = $conexion->query($sql_personaje);

if ($resultado_personaje->num_rows == 0) {
    die("Personaje no encontrado");
}

$personaje = $resultado_personaje->fetch_assoc();

$sql_series = "
    SELECT s.*, sp.rol, sp.temporadas_aparece
    FROM serie_personaje sp
    INNER JOIN serie s ON sp.id_serie = s.id_serie
    WHERE sp.id_personaje = $id
    ORDER BY s.titulo
";

$sql_actores = "
    SELECT a.*
    FROM actor_personaje ap
    INNER JOIN actor a ON ap.id_actor = a.id_actor
    WHERE ap.id_personaje = $id
    ORDER BY a.nombre, a.apellido1
";

$resultado_series = $conexion->query($sql_series);
$resultado_actores = $conexion->query($sql_actores);
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo limpiar($personaje["nombre"]); ?> - TVSW</title>
    <link rel="stylesheet" href="../estilo/estilo.css?v=3">
</head>
<body>
    <header>
        <h1><?php echo limpiar($personaje["nombre"]); ?></h1>
        <?php mostrar_menu(); ?>
    </header>

    <main>
        <section class="ficha-serie">
            <div class="detalle">
                <img class="portada" src="<?php echo limpiar(ruta_imagen($personaje["imagen"])); ?>" alt="<?php echo limpiar($personaje["nombre"]); ?>">

                <div>
                    <h2>Descripcion</h2>
                    <p><?php echo limpiar($personaje["descripcion"]); ?></p>
                    <p><strong>Tipo:</strong> <?php echo limpiar($personaje["tipo_personaje"]); ?></p>
                </div>
            </div>
        </section>

        <h2>Series donde aparece</h2>
        <section class="series">
            <?php while ($serie = $resultado_series->fetch_assoc()) { ?>
                <article class="tarjeta">
                    <img src="<?php echo limpiar(ruta_imagen($serie["portada"])); ?>" alt="<?php echo limpiar($serie["titulo"]); ?>">

                    <div class="contenido">
                        <h2><?php echo limpiar($serie["titulo"]); ?></h2>
                        <p><strong>Rol:</strong> <?php echo limpiar($serie["rol"]); ?></p>
                        <p><strong>Temporadas:</strong> <?php echo limpiar($serie["temporadas_aparece"]); ?></p>
                        <a class="boton" href="serie.php?id=<?php echo $serie["id_serie"]; ?>">Ver serie</a>
                    </div>
                </article>
            <?php } ?>
        </section>

        <h2>Actor o actriz</h2>
        <section class="personajes">
            <?php while ($actor = $resultado_actores->fetch_assoc()) { ?>
                <article class="personaje">
                    <img src="<?php echo limpiar(ruta_imagen($actor["foto"])); ?>" alt="<?php echo limpiar(nombre_completo($actor["nombre"], $actor["apellido1"], $actor["apellido2"])); ?>">

                    <div>
                        <h3><?php echo limpiar(nombre_completo($actor["nombre"], $actor["apellido1"], $actor["apellido2"])); ?></h3>
                        <p><?php echo limpiar($actor["descripcion"]); ?></p>
                        <a class="boton" href="actor.php?id=<?php echo $actor["id_actor"]; ?>">Ver actor</a>
                    </div>
                </article>
            <?php } ?>
        </section>
    </main>
</body>
</html>

