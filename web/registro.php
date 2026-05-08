<?php
include "conexion.php";

if (usuario_logueado()) {
    header("Location: index.php");
    exit;
}

$mensaje = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nombre_usuario = $conexion->real_escape_string(trim($_POST["nombre_usuario"]));
    $email = $conexion->real_escape_string(trim($_POST["email"]));
    $password = $_POST["password"];
    $password2 = $_POST["password2"];

    if ($password != $password2) {
        $mensaje = "Las contraseñas no coinciden.";
    } else {
        $sql_email = "SELECT id_usuario FROM usuario WHERE email = '$email'";
        $resultado_email = $conexion->query($sql_email);

        if ($resultado_email->num_rows > 0) {
            $mensaje = "Ya existe una cuenta con ese email.";
        } else {
            $resultado_total = $conexion->query("SELECT COUNT(*) AS total FROM usuario");
            $fila_total = $resultado_total->fetch_assoc();

            if ($fila_total["total"] == 0) {
                $rol = "admin";
            } else {
                $rol = "usuario";
            }

            $password_segura = password_hash($password, PASSWORD_DEFAULT);
            $password_segura = $conexion->real_escape_string($password_segura);

            $sql_insertar = "
                INSERT INTO usuario (nombre_usuario, email, password, fecha_registro, rol)
                VALUES ('$nombre_usuario', '$email', '$password_segura', CURDATE(), '$rol')
            ";

            if ($conexion->query($sql_insertar)) {
                header("Location: login.php");
                exit;
            } else {
                $mensaje = "Error al registrar el usuario.";
            }
        }
    }
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro - TVSW</title>
    <link rel="stylesheet" href="../estilo/estilo.css?v=3">
</head>
<body>
    <header>
        <h1>Crear cuenta</h1>
        <p>El primer usuario registrado sera administrador.</p>
    </header>

    <main class="auth-main">
        <section class="auth-box">
            <h2>Registro</h2>

            <?php if ($mensaje != "") { ?>
                <p class="mensaje-error"><?php echo limpiar($mensaje); ?></p>
            <?php } ?>

            <form method="POST" action="registro.php">
                <label>Nombre de usuario</label>
                <input type="text" name="nombre_usuario" required>

                <label>Email</label>
                <input type="email" name="email" required>

                <label>Contraseña</label>
                <input type="password" name="password" required>

                <label>Repetir contraseña</label>
                <input type="password" name="password2" required>

                <button type="submit">Registrarme</button>
            </form>

            <p>¿Ya tienes cuenta? <a href="login.php">Inicia sesion</a></p>
        </section>
    </main>
</body>
</html>

