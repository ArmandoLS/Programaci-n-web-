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

// Realizar una consulta a la base de datos
$sql = "SELECT id, titulo, sinopsis, director, genero, duracion, clasificacion FROM peliculas";
$result = $conn->query($sql);

// Imprimir los resultados en formato HTML
echo "<h2>Datos de la tabla Peliculas:</h2>";

if ($result->num_rows > 0) {
    echo "<table border='1'>";
    echo "<tr><th>ID</th><th>Título</th><th>Sinopsis</th><th>Director</th><th>Género</th><th>Duración</th><th>Clasificación</th></tr>";
    while ($row = $result->fetch_assoc()) {
        echo "<tr>";
        echo "<td>" . $row["id"] . "</td>";
        echo "<td>" . $row["titulo"] . "</td>";
        echo "<td>" . $row["sinopsis"] . "</td>";
        echo "<td>" . $row["director"] . "</td>";
        echo "<td>" . $row["genero"] . "</td>";
        echo "<td>" . $row["duracion"] . "</td>";
        echo "<td>" . $row["clasificacion"] . "</td>";
        echo "</tr>";
    }
    echo "</table>";
} else {
    echo "No hay resultados en la tabla Peliculas.";
}

// Cerrar la conexión
$conn->close();



?>

