<?php
include "conexion.php";
proteger_admin();

$mensaje = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $tipo = $_POST["tipo"];

    if ($tipo == "serie_genero") {
        $id_serie = (int) $_POST["id_serie"];
        $id_genero = (int) $_POST["id_genero"];

        if ($id_serie > 0 && $id_genero > 0) {
            $sql = "INSERT IGNORE INTO serie_genero (id_serie, id_genero) VALUES ($id_serie, $id_genero)";
            $conexion->query($sql);
            $mensaje = "Genero aÃ±adido a la serie.";
        }
    }

    if ($tipo == "serie_personaje") {
        $id_serie = (int) $_POST["id_serie"];
        $id_personaje = (int) $_POST["id_personaje"];
        $rol = texto_sql($_POST["rol"]);
        $temporadas = texto_sql($_POST["temporadas_aparece"]);

        if ($id_serie > 0 && $id_personaje > 0) {
            $sql = "
                INSERT INTO serie_personaje (id_serie, id_personaje, rol, temporadas_aparece)
                VALUES ($id_serie, $id_personaje, $rol, $temporadas)
                ON DUPLICATE KEY UPDATE
                    rol = $rol,
                    temporadas_aparece = $temporadas
            ";
            $conexion->query($sql);
            $mensaje = "Personaje aÃ±adido a la serie.";
        }
    }

    if ($tipo == "actor_personaje") {
        $id_actor = (int) $_POST["id_actor"];
        $id_personaje = (int) $_POST["id_personaje"];

        if ($id_actor > 0 && $id_personaje > 0) {
            $sql = "INSERT IGNORE INTO actor_personaje (id_actor, id_personaje) VALUES ($id_actor, $id_personaje)";
            $conexion->query($sql);
            $mensaje = "Actor asociado al personaje.";
        }
    }
}

if (isset($_GET["borrar_serie_genero"])) {
    $partes = explode("-", $_GET["borrar_serie_genero"]);
    $id_serie = (int) $partes[0];
    $id_genero = (int) $partes[1];
    $conexion->query("DELETE FROM serie_genero WHERE id_serie = $id_serie AND id_genero = $id_genero");
    header("Location: admin_relaciones.php");
    exit;
}

if (isset($_GET["borrar_serie_personaje"])) {
    $partes = explode("-", $_GET["borrar_serie_personaje"]);
    $id_serie = (int) $partes[0];
    $id_personaje = (int) $partes[1];
    $conexion->query("DELETE FROM serie_personaje WHERE id_serie = $id_serie AND id_personaje = $id_personaje");
    header("Location: admin_relaciones.php");
    exit;
}

if (isset($_GET["borrar_actor_personaje"])) {
    $partes = explode("-", $_GET["borrar_actor_personaje"]);
    $id_actor = (int) $partes[0];
    $id_personaje = (int) $partes[1];
    $conexion->query("DELETE FROM actor_personaje WHERE id_actor = $id_actor AND id_personaje = $id_personaje");
    header("Location: admin_relaciones.php");
    exit;
}

$series = $conexion->query("SELECT id_serie, titulo FROM serie ORDER BY titulo");
$series2 = $conexion->query("SELECT id_serie, titulo FROM serie ORDER BY titulo");
$personajes = $conexion->query("SELECT id_personaje, nombre FROM personaje ORDER BY nombre");
$personajes2 = $conexion->query("SELECT id_personaje, nombre FROM personaje ORDER BY nombre");
$actores = $conexion->query("SELECT id_actor, nombre, apellido1, apellido2 FROM actor ORDER BY nombre, apellido1");
$generos = $conexion->query("SELECT id_genero, nombre FROM genero ORDER BY nombre");

$lista_serie_genero = $conexion->query("
    SELECT s.id_serie, s.titulo, g.id_genero, g.nombre AS genero
    FROM serie_genero sg
    INNER JOIN serie s ON sg.id_serie = s.id_serie
    INNER JOIN genero g ON sg.id_genero = g.id_genero
    ORDER BY s.titulo, g.nombre
");

$lista_serie_personaje = $conexion->query("
    SELECT s.id_serie, s.titulo, p.id_personaje, p.nombre AS personaje, sp.rol, sp.temporadas_aparece
    FROM serie_personaje sp
    INNER JOIN serie s ON sp.id_serie = s.id_serie
    INNER JOIN personaje p ON sp.id_personaje = p.id_personaje
    ORDER BY s.titulo, p.nombre
");

$lista_actor_personaje = $conexion->query("
    SELECT a.id_actor, a.nombre, a.apellido1, a.apellido2, p.id_personaje, p.nombre AS personaje
    FROM actor_personaje ap
    INNER JOIN actor a ON ap.id_actor = a.id_actor
    INNER JOIN personaje p ON ap.id_personaje = p.id_personaje
    ORDER BY a.nombre, a.apellido1, p.nombre
");
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestionar relaciones - TVSW</title>
    <link rel="stylesheet" href="../estilo/estilo.css?v=4">
</head>
<body>
    <header>
        <h1>Gestionar relaciones</h1>
        <p>Une series con generos, personajes y actores.</p>
        <?php mostrar_menu(); ?>
    </header>

    <main>
        <?php if ($mensaje != "") { ?>
            <p class="mensaje-ok"><?php echo limpiar($mensaje); ?></p>
        <?php } ?>

        <section class="admin-links">
            <article class="formulario-admin">
                <h2>Genero de una serie</h2>
                <form method="POST" action="admin_relaciones.php">
                    <input type="hidden" name="tipo" value="serie_genero">

                    <label>Serie</label>
                    <select name="id_serie" required>
                        <option value="">Elige una serie</option>
                        <?php while ($serie = $series->fetch_assoc()) { ?>
                            <option value="<?php echo $serie["id_serie"]; ?>"><?php echo limpiar($serie["titulo"]); ?></option>
                        <?php } ?>
                    </select>

                    <label>Genero</label>
                    <select name="id_genero" required>
                        <option value="">Elige un genero</option>
                        <?php while ($genero = $generos->fetch_assoc()) { ?>
                            <option value="<?php echo $genero["id_genero"]; ?>"><?php echo limpiar($genero["nombre"]); ?></option>
                        <?php } ?>
                    </select>

                    <button type="submit">AÃ±adir genero</button>
                </form>
            </article>

            <article class="formulario-admin">
                <h2>Personaje de una serie</h2>
                <form method="POST" action="admin_relaciones.php">
                    <input type="hidden" name="tipo" value="serie_personaje">

                    <label>Serie</label>
                    <select name="id_serie" required>
                        <option value="">Elige una serie</option>
                        <?php while ($serie = $series2->fetch_assoc()) { ?>
                            <option value="<?php echo $serie["id_serie"]; ?>"><?php echo limpiar($serie["titulo"]); ?></option>
                        <?php } ?>
                    </select>

                    <label>Personaje</label>
                    <select name="id_personaje" required>
                        <option value="">Elige un personaje</option>
                        <?php while ($personaje = $personajes->fetch_assoc()) { ?>
                            <option value="<?php echo $personaje["id_personaje"]; ?>"><?php echo limpiar($personaje["nombre"]); ?></option>
                        <?php } ?>
                    </select>

                    <label>Rol</label>
                    <input type="text" name="rol" placeholder="Protagonista, Principal, Villano...">

                    <label>Temporadas aparece</label>
                    <input type="text" name="temporadas_aparece" placeholder="Ej: 1-3 o Varias">

                    <button type="submit">AÃ±adir personaje</button>
                </form>
            </article>

            <article class="formulario-admin">
                <h2>Actor de un personaje</h2>
                <form method="POST" action="admin_relaciones.php">
                    <input type="hidden" name="tipo" value="actor_personaje">

                    <label>Actor</label>
                    <select name="id_actor" required>
                        <option value="">Elige un actor</option>
                        <?php while ($actor = $actores->fetch_assoc()) { ?>
                            <option value="<?php echo $actor["id_actor"]; ?>">
                                <?php echo limpiar(nombre_completo($actor["nombre"], $actor["apellido1"], $actor["apellido2"])); ?>
                            </option>
                        <?php } ?>
                    </select>

                    <label>Personaje</label>
                    <select name="id_personaje" required>
                        <option value="">Elige un personaje</option>
                        <?php while ($personaje = $personajes2->fetch_assoc()) { ?>
                            <option value="<?php echo $personaje["id_personaje"]; ?>"><?php echo limpiar($personaje["nombre"]); ?></option>
                        <?php } ?>
                    </select>

                    <button type="submit">Asociar actor</button>
                </form>
            </article>
        </section>

        <section class="tabla-admin">
            <h2>Generos asignados a series</h2>
            <table>
                <tr>
                    <th>Serie</th>
                    <th>Genero</th>
                    <th>Acciones</th>
                </tr>
                <?php while ($fila = $lista_serie_genero->fetch_assoc()) { ?>
                    <tr>
                        <td><?php echo limpiar($fila["titulo"]); ?></td>
                        <td><?php echo limpiar($fila["genero"]); ?></td>
                        <td class="acciones">
                            <a href="admin_relaciones.php?borrar_serie_genero=<?php echo $fila["id_serie"] . "-" . $fila["id_genero"]; ?>" onclick="return confirm('Â¿Quitar este genero de la serie?')">Quitar</a>
                        </td>
                    </tr>
                <?php } ?>
            </table>
        </section>

        <section class="tabla-admin">
            <h2>Personajes asignados a series</h2>
            <table>
                <tr>
                    <th>Serie</th>
                    <th>Personaje</th>
                    <th>Rol</th>
                    <th>Temporadas</th>
                    <th>Acciones</th>
                </tr>
                <?php while ($fila = $lista_serie_personaje->fetch_assoc()) { ?>
                    <tr>
                        <td><?php echo limpiar($fila["titulo"]); ?></td>
                        <td><?php echo limpiar($fila["personaje"]); ?></td>
                        <td><?php echo limpiar($fila["rol"]); ?></td>
                        <td><?php echo limpiar($fila["temporadas_aparece"]); ?></td>
                        <td class="acciones">
                            <a href="admin_relaciones.php?borrar_serie_personaje=<?php echo $fila["id_serie"] . "-" . $fila["id_personaje"]; ?>" onclick="return confirm('Â¿Quitar este personaje de la serie?')">Quitar</a>
                        </td>
                    </tr>
                <?php } ?>
            </table>
        </section>

        <section class="tabla-admin">
            <h2>Actores asignados a personajes</h2>
            <table>
                <tr>
                    <th>Actor</th>
                    <th>Personaje</th>
                    <th>Acciones</th>
                </tr>
                <?php while ($fila = $lista_actor_personaje->fetch_assoc()) { ?>
                    <tr>
                        <td><?php echo limpiar(nombre_completo($fila["nombre"], $fila["apellido1"], $fila["apellido2"])); ?></td>
                        <td><?php echo limpiar($fila["personaje"]); ?></td>
                        <td class="acciones">
                            <a href="admin_relaciones.php?borrar_actor_personaje=<?php echo $fila["id_actor"] . "-" . $fila["id_personaje"]; ?>" onclick="return confirm('Â¿Quitar este actor del personaje?')">Quitar</a>
                        </td>
                    </tr>
                <?php } ?>
            </table>
        </section>
    </main>
</body>
</html>

