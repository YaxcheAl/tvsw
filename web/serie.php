<?php
include "conexion.php";
proteger_pagina();

$id = 0;

if (isset($_GET["id"])) {
    $id = (int) $_GET["id"];
}

$sql_serie = "
    SELECT s.*,
        (
            SELECT GROUP_CONCAT(g.nombre SEPARATOR ', ')
            FROM serie_genero sg
            INNER JOIN genero g ON sg.id_genero = g.id_genero
            WHERE sg.id_serie = s.id_serie
        ) AS generos
    FROM serie s
    WHERE s.id_serie = $id
";

$resultado_serie = $conexion->query($sql_serie);

if ($resultado_serie->num_rows == 0) {
    die("Serie no encontrada");
}

$serie = $resultado_serie->fetch_assoc();

$sql_personajes = "
    SELECT p.*, sp.rol, sp.temporadas_aparece,
           a.id_actor, a.nombre AS actor_nombre, a.apellido1, a.apellido2
    FROM serie_personaje sp
    INNER JOIN personaje p ON sp.id_personaje = p.id_personaje
    LEFT JOIN actor_personaje ap ON p.id_personaje = ap.id_personaje
    LEFT JOIN actor a ON ap.id_actor = a.id_actor
    WHERE sp.id_serie = $id
    ORDER BY sp.rol, p.nombre
";

$resultado_personajes = $conexion->query($sql_personajes);
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo limpiar($serie["titulo"]); ?> - TVSW</title>
    <link rel="stylesheet" href="../estilo/estilo.css?v=3">
</head>
<body>
    <header>
        <h1><?php echo limpiar($serie["titulo"]); ?></h1>
        <?php mostrar_menu(); ?>
    </header>

    <main>
        <section class="ficha-serie">
            <img class="banner" src="<?php echo limpiar(ruta_imagen($serie["banner"])); ?>" alt="<?php echo limpiar($serie["titulo"]); ?>">

            <div class="detalle">
                <img class="portada" src="<?php echo limpiar(ruta_imagen($serie["portada"])); ?>" alt="<?php echo limpiar($serie["titulo"]); ?>">

                <div>
                    <h2>Sinopsis</h2>
                    <p><?php echo limpiar($serie["sinopsis"]); ?></p>

                    <ul>
                        <li><strong>Generos:</strong> <?php echo limpiar($serie["generos"]); ?></li>
                        <li><strong>Estreno:</strong> <?php echo limpiar($serie["fecha_estreno"]); ?></li>
                        <li><strong>Final:</strong> <?php echo limpiar($serie["fecha_fin"] ?: "No finalizada"); ?></li>
                        <li><strong>Temporadas:</strong> <?php echo limpiar($serie["temporadas"]); ?></li>
                        <li><strong>Estado:</strong> <?php echo limpiar($serie["estado"]); ?></li>
                        <li><strong>Pais:</strong> <?php echo limpiar($serie["pais_origen"]); ?></li>
                        <li><strong>Idioma:</strong> <?php echo limpiar($serie["idioma_original"]); ?></li>
                        <li><strong>Puntuacion media:</strong> <?php echo limpiar($serie["puntuacion_media"]); ?></li>
                    </ul>
                </div>
            </div>
        </section>

        <section>
            <h2>Personajes</h2>

            <div class="personajes">
                <?php while ($personaje = $resultado_personajes->fetch_assoc()) { ?>
                    <article class="personaje">
                        <img src="<?php echo limpiar(ruta_imagen($personaje["imagen"])); ?>" alt="<?php echo limpiar($personaje["nombre"]); ?>">

                        <div>
                            <h3>
                                <a href="personaje.php?id=<?php echo $personaje["id_personaje"]; ?>">
                                    <?php echo limpiar($personaje["nombre"]); ?>
                                </a>
                            </h3>
                            <p><?php echo limpiar($personaje["descripcion"]); ?></p>
                            <p><strong>Rol:</strong> <?php echo limpiar($personaje["rol"]); ?></p>
                            <p><strong>Temporadas:</strong> <?php echo limpiar($personaje["temporadas_aparece"]); ?></p>

                            <?php if ($personaje["actor_nombre"] != "") { ?>
                                <p>
                                    <strong>Actor/actriz:</strong>
                                    <a href="actor.php?id=<?php echo $personaje["id_actor"]; ?>">
                                        <?php echo limpiar(nombre_completo($personaje["actor_nombre"], $personaje["apellido1"], $personaje["apellido2"])); ?>
                                    </a>
                                </p>
                            <?php } ?>
                        </div>
                    </article>
                <?php } ?>
            </div>
        </section>
    </main>
</body>
</html>

