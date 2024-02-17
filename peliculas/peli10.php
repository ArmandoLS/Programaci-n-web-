<?php
$servername = "localhost";
$username = "Usuario1";
$password = "Losa030930";
$dbname = "cinemaclub";

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar la conexión
if ($conn->connect_error) {
    die("Error de conexión: " . $conn->connect_error);
}

// ID de la película que quieres mostrar 
$movieIdToShow = 10;

// Realizar una consulta a la base de datos para obtener la película con el ID específico
$sql = "SELECT id, titulo, sinopsis, director, genero, duracion, clasificacion FROM peliculas WHERE id = $movieIdToShow";
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CINEMA CLUB</title>
    <link rel="stylesheet" href="style2.css">
    <link rel="shortcut icon" href="/img/icono.ico" />
</head>

<style>
    .header {
    position: relative; 
    background-image: url(img2/10_1.jpg);
    background-position: center center;
    background-repeat: no-repeat;
    background-size: cover;
    min-height: 70vh;
    display: flex;
    align-items: center;
}
</style>

<body>
    
    <header class="header">
        <div class="menu container">
            <a href="/index.html" class="logo">CINEMA CLUB 🎬</a>
            <input type="checkbox" id="menu" />
            <label for="menu">
                <img src="img2/menu.png" class="menu-icon" alt="Menu">
            </label>
            <nav class="navbar">
                <ul>
                    <li><a href="#">Inicio</a></li>
                    <li><a href="#">Nosotros</a></li>
                    <li><a href="#" class="active">Películas</a></li>
                    <li><a href="#">Contáctanos</a></li>
                </ul>
            </nav>
            <a href="#" class="btn-1">Login</a>
        </div>

        <div class="header-content container">

            <div class="movie-info">
                <?php
                if ($result->num_rows > 0) {
                    $row = $result->fetch_assoc();
                    echo '<img src="img2/10.jpg" alt="' . $row["titulo"] . '">';
                    echo '<div class="movie-details">';
                    echo '<h1>' . $row["titulo"] . '</h1>';
                    echo '<p>Director: ' . $row["director"] . '</p>';
                    echo '<p>Género: ' . $row["genero"] . '</p>';
                    echo '<p>Duración: ' . $row["duracion"] . '</p>';
                    echo '<p>Clasificación: ' . $row["clasificacion"] . '</p>';
                    echo '<a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ" class="btn-2">Ver Trailer</a>';
                    echo '</div>';
                } else {
                    echo 'No hay resultados en la tabla Peliculas.';
                }
                ?>
            </div>
        
            <div class="movie-synopsis">
                <h2>Sinopsis</h2>
                <?php
                if ($result->num_rows > 0) {
                    echo '<p>' . $row["sinopsis"] . '</p>';
                } else {
                    echo 'No hay resultados en la tabla Peliculas.';
                }
                ?>
            </div>
        </div>
    </header>

    <div class="movie-container">
        <label>Seleccione el tipo de sala:</label>
        <select id="movie">
            <option value="55">TRADICIONAL </option>
            <option value="80">SALA 3D</option>
            <option value="120">IMAX</option>
            <option value="150">4DX</option>
        </select>
        <a href="/Sala/Sala1.html"><button class="confirm-button">Comprar Boletos</button> </a>
    </div>

    <footer class="footer container">
        <h3>CINEMA CLUB 🎬</h3>
    
        <ul>
            <li><a href="#">Inicio</a></li>
            <li><a href="#">Nosotros</a></li>
            <li><a href="#">Películas</a></li>
            <li><a href="#">XD</a></li>
        </ul>
    
        <div class="social-icons">
            <a href="#" target="_blank"><img src="img2/facebook.png" alt="Facebook"></a>
            <a href="#" target="_blank"><img src="img2/twiter.png" alt="Twitter"></a>
            <a href="#" target="_blank"><img src="img2/Instagram.png" alt="Instagram"></a>
        </div>
    </footer>

    <script src="script.js"></script>
</body>
</html>

<?php
// Cerrar la conexión
$conn->close();
?>
