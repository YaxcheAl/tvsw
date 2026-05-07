<?php
include "conexion.php";
proteger_admin();

$mensaje = "";

if (isset($_GET["borrar"])) {
    $id_borrar = (int) $_GET["borrar"];

    if ($id_borrar == $_SESSION["id_usuario"]) {
        $mensaje = "No puedes borrar tu propio usuario.";
    } else {
        $conexion->query("DELETE FROM usuario WHERE id_usuario = $id_borrar");
        header("Location: admin_usuarios.php");
        exit;
    }
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nombre_usuario = $conexion->real_escape_string(trim($_POST["nombre_usuario"]));
    $email = $conexion->real_escape_string(trim($_POST["email"]));
    $password = $_POST["password"];
    $rol = $_POST["rol"];

    if ($rol != "admin" && $rol != "usuario") {
        $rol = "usuario";
    }

    $sql_email = "SELECT id_usuario FROM usuario WHERE email = '$email'";
    $resultado_email = $conexion->query($sql_email);

    if ($resultado_email->num_rows > 0) {
        $mensaje = "Ya existe un usuario con ese email.";
    } else {
        $password_segura = password_hash($password, PASSWORD_DEFAULT);
        $password_segura = $conexion->real_escape_string($password_segura);

        $sql_insertar = "
            INSERT INTO usuario (nombre_usuario, email, password, fecha_registro, rol)
            VALUES ('$nombre_usuario', '$email', '$password_segura', CURDATE(), '$rol')
        ";

        if ($conexion->query($sql_insertar)) {
            if ($rol == "admin") {
                $mensaje = "Administrador creado correctamente.";
            } else {
                $mensaje = "Usuario creado correctamente.";
            }
        } else {
            $mensaje = "Error al crear el usuario.";
        }
    }
}

$resultado_usuarios = $conexion->query("SELECT id_usuario, nombre_usuario, email, fecha_registro, rol FROM usuario ORDER BY rol, nombre_usuario");
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestionar usuarios - TVSW</title>
    <link rel="stylesheet" href="../estilo/estilo.css?v=4">
</head>
<body>
    <header>
        <h1>Gestionar usuarios</h1>
        <p>Solo un administrador puede crear otro administrador.</p>
        <?php mostrar_menu(); ?>
    </header>

    <main>
        <?php if ($mensaje != "") { ?>
            <p class="mensaje-ok"><?php echo limpiar($mensaje); ?></p>
        <?php } ?>

        <section class="formulario-admin">
            <h2>Crear usuario</h2>

            <form method="POST" action="admin_usuarios.php">
                <label>Nombre de usuario</label>
                <input type="text" name="nombre_usuario" required>

                <label>Email</label>
                <input type="email" name="email" required>

                <label>ContraseÃ±a</label>
                <input type="password" name="password" required>

                <label>Rol</label>
                <select name="rol" required>
                    <option value="usuario">Usuario normal</option>
                    <option value="admin">Administrador</option>
                </select>

                <button type="submit">Crear usuario</button>
            </form>
        </section>

        <section class="tabla-admin">
            <h2>Usuarios registrados</h2>

            <table>
                <tr>
                    <th>Nombre</th>
                    <th>Email</th>
                    <th>Fecha registro</th>
                    <th>Rol</th>
                    <th>Acciones</th>
                </tr>

                <?php while ($usuario = $resultado_usuarios->fetch_assoc()) { ?>
                    <tr>
                        <td><?php echo limpiar($usuario["nombre_usuario"]); ?></td>
                        <td><?php echo limpiar($usuario["email"]); ?></td>
                        <td><?php echo limpiar($usuario["fecha_registro"]); ?></td>
                        <td><?php echo limpiar($usuario["rol"]); ?></td>
                        <td class="acciones">
                            <?php if ($usuario["id_usuario"] != $_SESSION["id_usuario"]) { ?>
                                <a href="admin_usuarios.php?borrar=<?php echo $usuario["id_usuario"]; ?>" onclick="return confirm('Â¿Seguro que quieres borrar este usuario?')">Borrar</a>
                            <?php } else { ?>
                                <span>Usuario actual</span>
                            <?php } ?>
                        </td>
                    </tr>
                <?php } ?>
            </table>
        </section>
    </main>
</body>
</html>

