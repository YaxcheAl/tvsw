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
        WHERE p.nombre LIKE '%$buscar_sql%'
        OR p.descripcion LIKE '%$buscar_sql%'
        OR p.tipo_personaje LIKE '%$buscar_sql%'
        OR s.titulo LIKE '%$buscar_sql%'
        OR a.nombre LIKE '%$buscar_sql%'
        OR a.apellido1 LIKE '%$buscar_sql%'
        OR a.apellido2 LIKE '%$buscar_sql%'
    ";
}

$sql_personajes = "
    SELECT DISTINCT p.*,
        (
            SELECT GROUP_CONCAT(s2.titulo SEPARATOR ', ')
            FROM serie_personaje sp2
            INNER JOIN serie s2 ON sp2.id_serie = s2.id_serie
            WHERE sp2.id_personaje = p.id_personaje
        ) AS series
    FROM personaje p
    LEFT JOIN serie_personaje sp ON p.id_personaje = sp.id_personaje
    LEFT JOIN serie s ON sp.id_serie = s.id_serie
    LEFT JOIN actor_personaje ap ON p.id_personaje = ap.id_personaje
    LEFT JOIN actor a ON ap.id_actor = a.id_actor
    $where
    ORDER BY p.nombre
";

$resultado_personajes = $conexion->query($sql_personajes);
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Personajes - TVSW</title>
    <link rel="stylesheet" href="../estilo/estilo.css?v=3">
</head>
<body>
    <header>
        <h1>Personajes</h1>
        <p>Explora personajes y sus series.</p>
        <?php mostrar_menu(); ?>
    </header>

    <main>
        <section class="buscador">
            <form method="GET" action="personajes.php">
                <input type="text" name="buscar" placeholder="Buscar personaje, serie o actor..." value="<?php echo limpiar($buscar); ?>">
                <button type="submit">Buscar</button>
                <a href="personajes.php">Limpiar</a>
            </form>
        </section>

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
    </main>
</body>
</html>

