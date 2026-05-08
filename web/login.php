<?php
include "conexion.php";

if (usuario_logueado()) {
    header("Location: index.php");
    exit;
}

$mensaje = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $conexion->real_escape_string(trim($_POST["email"]));
    $password = $_POST["password"];

    $sql = "SELECT * FROM usuario WHERE email = '$email'";
    $resultado = $conexion->query($sql);

    if ($resultado->num_rows == 1) {
        $usuario = $resultado->fetch_assoc();

        if (password_verify($password, $usuario["password"])) {
            $_SESSION["id_usuario"] = $usuario["id_usuario"];
            $_SESSION["nombre_usuario"] = $usuario["nombre_usuario"];
            $_SESSION["rol"] = $usuario["rol"];

            header("Location: index.php");
            exit;
        } else {
            $mensaje = "La contraseña no es correcta.";
        }
    } else {
        $mensaje = "No existe ningun usuario con ese email.";
    }
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar sesion - TVSW</title>
    <link rel="stylesheet" href="../estilo/estilo.css?v=3">
</head>
<body>
    <header>
        <h1>TVSW</h1>
        <p>Inicia sesion para entrar en la pagina.</p>
    </header>

    <main class="auth-main">
        <section class="auth-box">
            <h2>Iniciar sesion</h2>

            <?php if ($mensaje != "") { ?>
                <p class="mensaje-error"><?php echo limpiar($mensaje); ?></p>
            <?php } ?>

            <form method="POST" action="login.php">
                <label>Email</label>
                <input type="email" name="email" required>

                <label>Contraseña</label>
                <input type="password" name="password" required>

                <button type="submit">Entrar</button>
            </form>

            <p>¿No tienes cuenta? <a href="registro.php">Registrate aqui</a></p>
        </section>
    </main>
</body>
</html>

