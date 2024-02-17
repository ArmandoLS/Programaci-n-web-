-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-12-2023 a las 02:11:05
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cinemaclub`
--
CREATE DATABASE IF NOT EXISTS `cinemaclub` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cinemaclub`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--
-- Creación: 28-12-2023 a las 22:14:18
-- Última actualización: 29-12-2023 a las 00:34:47
--

CREATE TABLE `peliculas` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `sinopsis` text NOT NULL,
  `director` varchar(50) NOT NULL,
  `genero` varchar(50) NOT NULL,
  `duracion` varchar(20) NOT NULL,
  `clasificacion` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`id`, `titulo`, `sinopsis`, `director`, `genero`, `duracion`, `clasificacion`) VALUES
(1, 'Iron Man 3', '\"Iron Man 3\" es la tercera entrega de la saga de Iron Man dentro del Universo Cinematográfico de Marvel (MCU). La trama sigue a Tony Stark, interpretado por Robert Downey Jr., después de los eventos ocurridos en \"The Avengers\". Stark se enfrenta a un enemigo misterioso conocido como El Mandarín, quien amenaza su vida y pone a prueba la resistencia de Iron Man. La película explora temas de identidad, resiliencia y las consecuencias de ser un héroe. Con nuevas armaduras y desafíos emocionales, Tony Stark debe superar sus limitaciones personales para proteger a aquellos que ama y salvar el día una vez más.', 'Shane Black', 'Ciencia ficcion‎ ‎ ‎ ‎ ‎ ', '130 min', 'PG-13'),
(2, 'Wonka', '\"Charlie and the Chocolate Factory\" cuenta la historia de un niño llamado Charlie Bucket, interpretado por Freddie Highmore, que vive en condiciones humildes junto a su familia. El excéntrico Willy Wonka, interpretado por Johnny Depp, decide abrir las puertas de su famosa fábrica de chocolate para cinco afortunados niños que encuentren boletos dorados en las envolturas de sus tabletas de chocolate. Acompañado por su abuelo, Charlie visita la fábrica y se encuentra con los singulares desafíos y maravillas que Wonka ha creado. La película explora temas de la importancia de la honestidad y la humildad, además de ofrecer un vistazo a un mundo de fantasía y dulces extravagantes.', 'Tim Burton', 'Aventura, Comedia, Fantas‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ', '115 min', 'PG '),
(3, 'Los juegos del hambre‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ', '\"Los juegos del hambre\" se basa en la novela homónima de Suzanne Collins. La historia se desarrolla en un futuro distópico en el que los distritos de un país llamado Panem son obligados a enviar a dos tributos adolescentes, un chico y una chica, como participantes en los Juegos del Hambre. Katniss Everdeen, interpretada por Jennifer Lawrence, se ofrece voluntaria para reemplazar a su hermana pequeña como tributo, y junto con su compañero de distrito Peeta Mellark, interpretado por Josh Hutcherson, debe luchar por su vida en un peligroso reality show televisivo donde solo uno puede salir con vida. La película aborda temas de supervivencia, desigualdad social y resistencia contra un gobierno opresivo.', 'Gary Ross', 'Acción, Aventura, Ciencia', '142 min', 'PG-13'),
(4, 'Wish: El poder de los deseos ‎ ‎ ‎ ‎ ‎ ', 'Hace muchos años, el Reino de Rosas fue fundado por el Rey Magnífico y su esposa la Reina Amaya en una isla del mar Mediterráneo. Habiendo estudiado magia y hechicería, Magnifico adquirió la capacidad de conceder los deseos de sus súbditos. Cuando cada residente cumple 18 años, se lleva a cabo una ceremonia en la que entregan su deseo a Magnífico, quien los mantiene sellados en su observatorio. Una vez al mes, Magnifico selecciona uno de los deseos de los residentes para ser concedido ante la ciudad.', ' Chris Buck', 'Animación, Aventura, Fant', '95 min', 'PG'),
(5, 'The Marvels', 'El colapso de la Inteligencia Supremanota 1​ conduce a una guerra civil entre la especie Kree en su mundo natal de Hala. El conflicto deja al planeta árido al perder aire, agua y luz solar.\n\nDar-Benn, la nueva líder de los Kree, recupera la mitad de las Bandas Cuánticas, de las cuales Kamala Khan tiene la otra mitad. Dar-Benn aprovecha el poder de la Banda, la combina con su bastón, llamado Arma Universal, y lo usa para destruir un punto de salto en el espacio. La anomalía resultante es descubierta por S.A.B.E.R.', 'Nia DaCosta', 'Acción, aventuras y ciencia ficcion ‎ ‎ ‎ ‎ ‎ ‎ ', '105 min', 'PG-13'),
(6, 'Digimon Adventure 02: El Comienzo ‎ ‎ ‎ ‎ ‎ ‎ ', 'Es el año 2012, y han pasado diez años desde la aventura en el Mundo Digital. Daisuke Motomiya tiene ahora veinte años, y él y el resto de los elegidos parecen estar cambiando poco a poco en cuanto a su aspecto y estilo de vida. Entonces, un día, un gigantesco Digitama aparece repentinamente en el cielo sobre la Torre de Tokio. Daisuke y los demás se encuentran con un misterioso joven llamado Lui Ohwada, quien les informa de que él es el primer Elegido del mundo…', 'Tomohisa Taguchi', 'Aventuras y película de a', '87 min', 'PG-13'),
(7, 'Haunting of the Queen Marry‎ ‎ ‎ ‎ ‎ ‎ ‎ ', 'La Maldición del Queen Mary (título original en inglés: Haunting of the Queen Mary) es una película de terror británica de 2023 dirigida por Gary Shore y protagonizada por Alice Eve y Joel Fry. Se estrenó por primera vez en Italia el 20 de julio de 2023 y en el Reino Unido el 18 de agosto de 2023.', 'Gary Shore', '	Terror', '125 min', 'PG-15'),
(8, 'Napoleon', 'En 1793, en medio de la Revolución Francesa, el joven oficial del ejército Napoleón Bonaparte observa a María Antonieta decapitada por la guillotina. Más tarde ese año, el líder revolucionario Paul Barras hace que Napoleón gestione el asedio de Toulon; Asalta con éxito la ciudad y repele a los barcos británicos con artillería. Después de que Maximilien Robespierre es depuesto y ejecutado al final del reino del Terror, los líderes franceses, incluido Napoleón, intentan restaurar la estabilidad. Nuevamente empleando artillería, Napoleón reprime la insurrección realista el 13 Vendémiaire en 1795.', ' Ridley Scott‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ', 'Drama', '157 min', 'R'),
(9, 'Five Nights at Freddy\'s‎ ‎ ‎ ‎ ‎ ', 'Una famosa pizzería llamada Freddy Fazbear\'s Pizza, era un centro de entretenimiento familiar que alguna vez fue exitoso en los años 1980, pero debido a un inexplicable incidente, provocó que esta famosa pizzería cerrara sus puertas al público y que esta fuese abandonada. En la actualidad, un guardia de seguridad nocturno intenta desesperadamente huir del edificio, pero en medio de su escape, es atacado y capturado por un zorro animatrónico rojo con temática pirata, donde momentos después, es atado a un dispositivo que le coloca la cabeza de un animatrónico vacía, donde este último intenta desesperadamente liberarse aflojando unos tornillos de la silla donde se encuentra atado, pero desafortunadamente no lo consigue a tiempo y su rostro termina siendo mutilado brutalmente y muere asesinado.', 'Emma Tammi', 'Terror Sobrenatural Suspe', '110 min', 'PG-13'),
(10, 'V/H/S/85', 'V/H/S/85 es una película de terror de antología y metraje encontrado coproducción estadounidense-mexicana de 2023 y la sexta entrega de la franquicia V/H/S. La película presenta segmentos de David Bruckner, Scott Derrickson, Gigi Saul Guerrero, Natasha Kermani y Mike P. Nelson.1​2​\r\n\r\nLa película recibió críticas positivas después de su estreno mundial en el Fantastic Fest en septiembre de 2023 y se lanzó el 6 de octubre de 2023 a través de Shudder.3​', 'David Bruckner (Total Cop)‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ', 'Terror', '111 min ', 'R'),
(11, 'The Mean One', 'The Mean One es una película de terror-cómica navideña estadounidense de 2022 dirigida por Steven LaMorte y escrita por Flip y Finn Kobler. La película es una parodia de terror del libro infantil de 1957 ¡Cómo el Grinch robó la Navidad! escrito por Dr. Seuss, y es protagonizada por David Howard Thornton como el personaje epónimo, con Krystle Martin, Chase Mullins, John Bigham, Erik Baker, Flip Kobler y Amy Schumacher en papeles secundarios. Sigue a una mujer joven en una misión para defender su ciudad de una criatura humanoide homicida verde que se desboca durante la temporada navideña. Debido a que la película es una parodia no autorizada, nunca usa el lenguaje del libro original.1​', 'Steven LaMorte', 'Cine navideño y terror‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ', '93 min', 'R'),
(12, 'Aquaman and the Lost King‎ ‎ ‎ ‎ ‎ ', 'Varios años después de convertirse en rey de la Atlántida, Arthur Curry se casó con Mera y tuvo un hijo, Arthur Jr., mientras dividía su vida entre la tierra y el mar. Mientras tanto, David Kane continúa buscando venganza contra Arthur por la muerte de su padre, trabajando con el biólogo marino Stephen Shin para encontrar artefactos atlantes. Él encuentra un tridente negro que lo posee y su creador promete darle el poder de destruir a Arthur.', 'James Wan', 'fantasía y cine de superheroes ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎', '124 min', 'PG-13'),
(13, 'Oppenheimer', 'En 1926, el estudiante en doctorado de 22 años J. Robert Oppenheimer sufre de nostalgia y ansiedad mientras estudia con el físico experimental Patrick Blackett en el Laboratorio Cavendish de la Universidad de Cambridge. Oppenheimer, molesto con Blackett, toma represalias dejándole una manzana envenenada, evitando posteriormente por poco que el científico visitante Niels Bohr se la coma.\r\n\r\nOppenheimer completa su PhD en física en la Universidad de Göttingen (en la República de Weimar), donde conoce al físico teórico Werner Heisenberg. Regresa a los Estados Unidos, con la esperanza de expandir la investigación de física cuántica allí, y comienza a enseñar en la Universidad de California en Berkeley, y en el Instituto de Tecnología de California. Conoce a su futura esposa, Katherine Puening, bióloga y excomunista. Tiene una aventura intermitente con la joven psiquiatra Jean Tatlock, miembro del Partido Comunista de los Estados Unidos, hasta que esta se suicida unos años después.', 'Christopher Nolan', 'Biográfico Suspenso drama‎ ‎ ‎ ‎ ‎ ‎ ', '180 min', 'R'),
(14, 'Barbie', 'La Barbie estereotipada (\"Barbie\") y sus compañeras residen en Barbieland, una sociedad matriarcal poblada por diferentes versiones de Barbies, Kens y un grupo de modelos descatalogadas, que son tratadas como raras debido a sus rasgos poco convencionales. Mientras los Kens se pasan el día jugando en la playa, considerándola su profesión, las Barbies desempeñan trabajos de prestigio como médico, abogado y político. Beach Ken (\"Ken\") sólo es feliz cuando está con Barbie y busca una relación más estrecha, pero Barbie le rechaza en favor de otras actividades y amistades femeninas.\r\n\r\nUna noche, en una fiesta de baile, Barbie se siente repentinamente preocupada por la muerte. De la noche a la mañana, desarrolla mal aliento, celulitis y pies planos, lo que altera sus rutinas habituales al día siguiente. La Barbie rara, marginada debido a su desfiguración, le dice que debe encontrar a la niña que juega con ella en el mundo real para curar sus aflicciones. Ken viaja de polizón en su convertible para acompañarla, a lo que Barbie accede a regañadientes.', 'Greta Gerwig', 'Comedia fantástica‎ ‎ ‎ ‎ ‎ ', '	114 min', 'PG-13'),
(15, 'Godzilla Minus One', 'En 1945, cerca del final de la Segunda Guerra Mundial, el piloto kamikaze Kōichi Shikishima aterriza en una base japonesa en la isla de Odo. El mecánico principal Tachibana deduce que Shikishima había huido de su deber fingiendo problemas técnicos. Esa noche, Godzilla, una criatura parecida a un dinosaurio, ataca. Shikishima no se atreve a dispararle al monstruo desde su avión y queda inconsciente. Tachibana, el único superviviente del ataque, culpa a Shikishima por no actuar.', 'Takashi Yamazaki', 'terror, cine de monstruos, drama, cine‎ ‎ ‎ ‎ ‎ ', '125 min', 'PG-13'),
(16, 'El niño y la garza‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ', 'En el año 1943, durante la Guerra del Pacífico, Hisako, la madre de Mahito Maki, de 12 años, muere en un incendio. El padre de Mahito, propietario de una fábrica de municiones aéreas, se vuelve a casar con la hermana menor de su difunta esposa, Natsuko, y se trasladan a su finca en el campo, donde viven con varias solteronas. Mahito lucha en la nueva ciudad mientras continúa lidiando con el dolor por la muerte de su madre, no encaja en la escuela y soporta una relación tensa con Natsuko, quien ahora está embarazada. Mahito también se encuentra con una misteriosa garza real en la finca que lo molesta con frecuencia.7​', ' Hayao Miyazaki ', 'Animación', '124 min', 'PG-13'),
(17, 'Twenty One Pilots Cinema Experience‎ ‎ ‎ ‎ ‎ ', 'Un viaje al interior de las mentes del dúo ganador del premio GRAMMY Twenty One Pilots, con la épica celebración del lanzamiento del álbum Scaled And Icyde 2021', 'Jason Zada', 'Documental | Musical', '65 min', 'G'),
(18, 'Titanic', 'Una joven de la alta sociedad abandona a su arrogante pretendiente por un artista humilde en el trasatlántico que se hundió durante su viaje inaugural.\r\n\r\n', 'James Cameron', 'Documental | Romance | Drama', '3h 14 min', 'G'),
(19, 'Taylor Swift: The Eras Tour‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ', '¡El fenómeno cultural continúa en la pantalla grande! Sumérgete en esta experiencia cinematográfica de este concierto único en la vida. Podrás disfrutarlo con una vista impresionante de la gira histórica desde la pantalla grande. ¡Se recomienda usar la vestimenta de Taylor Swift Eras y tus friendship bracelets!\r\n\r\n', 'Sam Wrench', 'Musical | Drama', '2h 49 min', 'PG-13'),
(20, 'Renaissance: A Film by Beyoncé‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ', 'RENAISSANCE: A FILM BY BEYONCÉ acentúa el viaje de RENAISSANCE WORLD TOUR, desde su inicio en la apertura en Estocolmo, Suecia, hasta el final en Kansas City, Missouri. Se trata de la intención, el trabajo duro, la participación de Beyoncé en cada aspecto de la producción, su mente creativa y su propósito de crear su legado y dominar su arte. El RENAISSANCE WORLD TOUR de Beyoncé creó un santuario para la libertad y la alegría compartida para más de 2,7 millones de fans.\r\n\r\n', 'Beyonce', 'Musical | Drama', '2h 48 min', 'PG-15'),
(21, 'El Lago de los Cisnes‎ ‎ ‎ ‎ ‎ ', 'La historia narra un amor imposible entre el príncipe Siegfried y Odette, una joven reina convertida en cisne junto a toda su corte por el hechizo del malvado brujo Rothbar. La joven sólo puede recuperar su forma humana por la noche y únicamente será liberada del maleficio por aquel que le prometa amor eterno.\r\n\r\n', 'Kevin O\'Hare', 'Musical | Ballet', '3h 50 min', 'G'),
(22, 'El Cascanueces‎ ‎ ‎ ‎ ‎ ‎ ‎ ', 'Es Nochebuena y el mago Drosselmeyer lleva a la joven Clara a una aventura de fantasía en la que el tiempo se detiene, la sala de estar de la familia se convierte en un gran campo de batalla y un viaje mágico les lleva a través de la tierra de las nieves hasta el Reino de los Dulces.\r\n\r\n', 'Peter Wright', 'Musical | Ballet', '2h 45 min', 'G'),
(23, 'Andrea Chenier', 'Andrea Chénier es una ópera verista de ambiente histórico con música de Umberto Giordano y libreto en italiano de Luigi Illica, basada libremente en la vida del poeta francés André Chénier (1762-1794), quien fue ejecutado durante la Revolución Francesa.\r\n', 'Sondra Radvanovsky', 'Musical | Ballet | Historico', '2h 50 min', 'G'),
(24, 'Carmen', 'La historia de Carmen está ambientada en Sevilla, alrededor de 1820, y la protagoniza una bella gitana de temperamento fiero. Carmen, libre con su amor, seduce al cabo don José, un soldado inexperto.\r\n\r\n', 'Aigul Akmetshina', 'Musical | Ballet | Drama', '2h 45 min', 'G');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
