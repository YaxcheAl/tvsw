<?php
include "conexion.php";
proteger_admin();

$total_series = $conexion->query("SELECT COUNT(*) AS total FROM serie")->fetch_assoc();
$total_personajes = $conexion->query("SELECT COUNT(*) AS total FROM personaje")->fetch_assoc();
$total_actores = $conexion->query("SELECT COUNT(*) AS total FROM actor")->fetch_assoc();
$total_generos = $conexion->query("SELECT COUNT(*) AS total FROM genero")->fetch_assoc();
$total_usuarios = $conexion->query("SELECT COUNT(*) AS total FROM usuario")->fetch_assoc();
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Administracion - TVSW</title>
    <link rel="stylesheet" href="../estilo/estilo.css?v=3">
</head>
<body>
    <header>
        <h1>Administracion</h1>
        <p>Zona solo para usuarios administradores.</p>
        <?php mostrar_menu(); ?>
    </header>

    <main>
        <section class="admin-links">
            <article>
                <h2>Series</h2>
                <p><?php echo limpiar($total_series["total"]); ?> series guardadas.</p>
                <a class="boton" href="admin_series.php">Gestionar series</a>
            </article>

            <article>
                <h2>Personajes</h2>
                <p><?php echo limpiar($total_personajes["total"]); ?> personajes guardados.</p>
                <a class="boton" href="admin_personajes.php">Gestionar personajes</a>
            </article>

            <article>
                <h2>Actores</h2>
                <p><?php echo limpiar($total_actores["total"]); ?> actores guardados.</p>
                <a class="boton" href="admin_actores.php">Gestionar actores</a>
            </article>

            <article>
                <h2>Relaciones</h2>
                <p>Asignar generos, personajes y actores.</p>
                <a class="boton" href="admin_relaciones.php">Gestionar relaciones</a>
            </article>

            <article>
                <h2>Usuarios</h2>
                <p><?php echo limpiar($total_usuarios["total"]); ?> usuarios registrados.</p>
                <a class="boton" href="admin_usuarios.php">Gestionar usuarios</a>
            </article>
        </section>
    </main>
</body>
</html>

