<?php
include "conexion.php";
proteger_pagina();

$id = 0;

if (isset($_GET["id"])) {
    $id = (int) $_GET["id"];
}

$sql_actor = "SELECT * FROM actor WHERE id_actor = $id";
$resultado_actor = $conexion->query($sql_actor);

if ($resultado_actor->num_rows == 0) {
    die("Actor no encontrado");
}

$actor = $resultado_actor->fetch_assoc();

$sql_creditos = "
    SELECT p.*, s.id_serie, s.titulo, s.portada, sp.rol, sp.temporadas_aparece
    FROM actor_personaje ap
    INNER JOIN personaje p ON ap.id_personaje = p.id_personaje
    LEFT JOIN serie_personaje sp ON p.id_personaje = sp.id_personaje
    LEFT JOIN serie s ON sp.id_serie = s.id_serie
    WHERE ap.id_actor = $id
    ORDER BY s.titulo, p.nombre
";

$resultado_creditos = $conexion->query($sql_creditos);
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo limpiar(nombre_completo($actor["nombre"], $actor["apellido1"], $actor["apellido2"])); ?> - TVSW</title>
    <link rel="stylesheet" href="../estilo/estilo.css?v=3">
</head>
<body>
    <header>
        <h1><?php echo limpiar(nombre_completo($actor["nombre"], $actor["apellido1"], $actor["apellido2"])); ?></h1>
        <?php mostrar_menu(); ?>
    </header>

    <main>
        <section class="ficha-serie">
            <div class="detalle">
                <img class="portada" src="<?php echo limpiar(ruta_imagen($actor["foto"])); ?>" alt="<?php echo limpiar(nombre_completo($actor["nombre"], $actor["apellido1"], $actor["apellido2"])); ?>">

                <div>
                    <h2>Biografia</h2>
                    <p><?php echo limpiar($actor["descripcion"]); ?></p>
                    <ul>
                        <li><strong>Fecha de nacimiento:</strong> <?php echo limpiar($actor["fecha_nacimiento"]); ?></li>
                        <li><strong>Nacionalidad:</strong> <?php echo limpiar($actor["nacionalidad"]); ?></li>
                    </ul>
                </div>
            </div>
        </section>

        <h2>Personajes interpretados</h2>

        <section class="personajes">
            <?php while ($credito = $resultado_creditos->fetch_assoc()) { ?>
                <article class="personaje">
                    <img src="<?php echo limpiar(ruta_imagen($credito["imagen"])); ?>" alt="<?php echo limpiar($credito["nombre"]); ?>">

                    <div>
                        <h3>
                            <a href="personaje.php?id=<?php echo $credito["id_personaje"]; ?>">
                                <?php echo limpiar($credito["nombre"]); ?>
                            </a>
                        </h3>
                        <p><?php echo limpiar($credito["descripcion"]); ?></p>
                        <p><strong>Rol:</strong> <?php echo limpiar($credito["rol"]); ?></p>

                        <?php if ($credito["id_serie"] != "") { ?>
                            <p>
                                <strong>Serie:</strong>
                                <a href="serie.php?id=<?php echo $credito["id_serie"]; ?>">
                                    <?php echo limpiar($credito["titulo"]); ?>
                                </a>
                            </p>
                        <?php } ?>
                    </div>
                </article>
            <?php } ?>
        </section>
    </main>
</body>
</html>

