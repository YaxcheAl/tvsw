<?php
session_start();

$servidor = getenv("DB_HOST") ?: "localhost";
$usuario = getenv("DB_USER") ?: "root";
$password = getenv("DB_PASS") ?: "";
$base_datos = getenv("DB_NAME") ?: "tvsw";

$conexion = new mysqli($servidor, $usuario, $password, $base_datos);

if ($conexion->connect_error) {
    die("Error de conexion: " . $conexion->connect_error);
}

$conexion->set_charset("utf8mb4");

function limpiar($texto) {
    return htmlspecialchars($texto ?? "", ENT_QUOTES, "UTF-8");
}

function nombre_completo($nombre, $apellido1, $apellido2) {
    return trim($nombre . " " . $apellido1 . " " . $apellido2);
}

function texto_sql($texto) {
    global $conexion;

    $texto = trim($texto ?? "");

    if ($texto == "") {
        return "NULL";
    }

    return "'" . $conexion->real_escape_string($texto) . "'";
}

function entero_sql($numero) {
    if ($numero === "" || $numero === null) {
        return "NULL";
    }

    return (int) $numero;
}

function decimal_sql($numero) {
    if ($numero === "" || $numero === null) {
        return "NULL";
    }

    $numero = str_replace(",", ".", $numero);
    return (float) $numero;
}

function usuario_logueado() {
    return isset($_SESSION["id_usuario"]);
}

function es_admin() {
    return isset($_SESSION["rol"]) && $_SESSION["rol"] == "admin";
}

function proteger_pagina() {
    if (!usuario_logueado()) {
        header("Location: login.php");
        exit;
    }
}

function proteger_admin() {
    proteger_pagina();

    if (!es_admin()) {
        die("No tienes permiso para entrar en esta pagina.");
    }
}

function mostrar_menu() {
    echo '<nav>';
    echo '<a href="index.php">Series</a>';
    echo '<a href="personajes.php">Personajes</a>';
    echo '<a href="actores.php">Actores</a>';

    if (es_admin()) {
        echo '<a href="admin.php">Administracion</a>';
    }

    echo '<a href="logout.php">Cerrar sesion (' . limpiar($_SESSION["nombre_usuario"]) . ')</a>';
    echo '</nav>';
}

function ruta_imagen($archivo) {
    $archivo = basename($archivo ?? "");

    if ($archivo == "") {
        return "";
    }

    if (file_exists(__DIR__ . "/../img/" . $archivo)) {
        return "../img/" . $archivo;
    }

    $nombre = pathinfo($archivo, PATHINFO_FILENAME);
    $coincidencias = glob(__DIR__ . "/../img/" . $nombre . "*");

    if ($coincidencias && count($coincidencias) > 0) {
        return "../img/" . basename($coincidencias[0]);
    }

    return "../img/" . $archivo;
}
