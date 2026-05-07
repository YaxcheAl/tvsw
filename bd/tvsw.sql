-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generaciÃ³n: 06-05-2026 a las 16:44:38
-- VersiÃ³n del servidor: 10.4.32-MariaDB
-- VersiÃ³n de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tvsw`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actor`
--

CREATE TABLE `actor` (
  `id_actor` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido1` varchar(100) DEFAULT NULL,
  `apellido2` varchar(100) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `nacionalidad` varchar(100) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `actor`
--

INSERT INTO `actor` (`id_actor`, `nombre`, `apellido1`, `apellido2`, `fecha_nacimiento`, `nacionalidad`, `foto`, `descripcion`) VALUES
(1, 'Jensen', 'Ackles', NULL, '1978-03-01', 'Estadounidense', 'jensen_ackles.jpg', 'Jensen Ackles es un actor estadounidense conocido por interpretar a Dean Winchester en Supernatural y a Soldier Boy en The Boys.'),
(2, 'Jared', 'Padalecki', NULL, '1982-07-19', 'Estadounidense', 'jared_padalecki.jpg', 'Jared Padalecki es un actor estadounidense conocido por sus papeles protagonistas en Supernatural y Walker.'),
(3, 'Misha', 'Collins', NULL, '1974-08-20', 'Estadounidense', 'misha_collins.jpg', 'Misha Collins es un actor, productor y escritor estadounidense conocido principalmente por interpretar a Castiel en Supernatural.'),
(4, 'Jim', 'Beaver', NULL, '1950-08-12', 'Estadounidense', 'jim_beaver.jpg', 'Jim Beaver es un actor y guionista estadounidense conocido por sus papeles en Supernatural, Deadwood y otras series de televisiÃ³n.'),
(5, 'Mark', 'Sheppard', NULL, '1964-05-30', 'BritÃ¡nico', 'mark_sheppard.jpg', 'Mark Sheppard es un actor britÃ¡nico conocido por interpretar personajes carismÃ¡ticos en series como Supernatural, Doctor Who y Battlestar Galactica.'),
(6, 'Mark', 'Pellegrino', NULL, '1965-04-09', 'Estadounidense', 'mark_pellegrino.jpg', 'Mark Pellegrino es un actor estadounidense conocido por interpretar a Lucifer en Supernatural y por sus papeles en Lost y Dexter.'),
(7, 'Katie', 'Cassidy', NULL, '1986-11-25', 'Estadounidense', 'katie_cassidy.jpg', 'Katie Cassidy es una actriz estadounidense conocida por sus trabajos en Supernatural, Arrow y otras series de televisiÃ³n.'),
(8, 'Genevieve', 'Padalecki', NULL, '1981-01-08', 'Estadounidense', 'genevieve_padalecki.jpg', 'Genevieve Padalecki es una actriz estadounidense conocida por interpretar a Ruby en Supernatural y por su trabajo en televisiÃ³n.'),
(9, 'Alexander', 'Calvert', NULL, '1990-07-15', 'Canadiense', 'alexander_calvert.jpg', 'Alexander Calvert es un actor canadiense conocido por interpretar a Jack Kline en Supernatural.'),
(10, 'Jeffrey', 'Dean', 'Morgan', '1966-04-22', 'Estadounidense', 'jeffrey_dean_morgan.jpg', 'Jeffrey Dean Morgan es un actor estadounidense conocido por interpretar a John Winchester en Supernatural y a Negan en The Walking Dead.'),
(11, 'Samantha', 'Smith', NULL, '1969-11-04', 'Estadounidense', 'samantha_smith.jpg', 'Samantha Smith es una actriz estadounidense conocida por interpretar a Mary Winchester en Supernatural.'),
(12, 'Michael', 'Hall', NULL, '1971-02-01', 'Estadounidense', 'michael_c_hall.jpg', 'Michael C. Hall es un actor estadounidense conocido mundialmente por interpretar a Dexter Morgan en Dexter y por su trabajo en Six Feet Under.'),
(13, 'Jennifer', 'Carpenter', NULL, '1979-12-07', 'Estadounidense', 'jennifer_carpenter.jpg', 'Jennifer Carpenter es una actriz estadounidense conocida por interpretar a Debra Morgan en Dexter.'),
(14, 'James', 'Remar', NULL, '1953-12-31', 'Estadounidense', 'james_remar.jpg', 'James Remar es un actor estadounidense con una larga carrera en cine y televisiÃ³n, conocido por sus papeles en Dexter y The Warriors.'),
(15, 'Julie', 'Benz', NULL, '1972-05-01', 'Estadounidense', 'julie_benz.jpg', 'Julie Benz es una actriz estadounidense conocida por sus trabajos en Dexter, Buffy the Vampire Slayer y Angel.'),
(16, 'David', 'Zayas', NULL, '1962-08-15', 'PuertorriqueÃ±o', 'david_zayas.jpg', 'David Zayas es un actor puertorriqueÃ±o-estadounidense conocido por interpretar a Angel Batista en Dexter.'),
(17, 'Lauren', 'VÃ©lez', NULL, '1964-11-02', 'Estadounidense', 'lauren_velez.jpg', 'Lauren VÃ©lez es una actriz estadounidense conocida por sus papeles en Dexter, Oz y varias producciones televisivas.'),
(18, 'Erik', 'King', NULL, '1963-04-21', 'Estadounidense', 'erik_king.jpg', 'Erik King es un actor estadounidense conocido por interpretar a James Doakes en Dexter.'),
(19, 'C. S.', 'Lee', NULL, '1971-12-30', 'Coreano-estadounidense', 'cs_lee.jpg', 'C. S. Lee es un actor coreano-estadounidense conocido por interpretar a Vince Masuka en Dexter.'),
(20, 'John', 'Lithgow', NULL, '1945-10-19', 'Estadounidense', 'john_lithgow.jpg', 'John Lithgow es un actor estadounidense de gran trayectoria conocido por sus trabajos en cine, teatro y televisiÃ³n.'),
(21, 'Christian', 'Camargo', NULL, '1971-07-07', 'Estadounidense', 'christian_camargo.jpg', 'Christian Camargo es un actor estadounidense conocido por sus papeles en Dexter, Penny Dreadful y otras producciones.'),
(22, 'KJ', 'Apa', NULL, '1997-06-17', 'NeozelandÃ©s', 'kj_apa.jpg', 'KJ Apa es un actor neozelandÃ©s conocido por interpretar a Archie Andrews en Riverdale.'),
(23, 'Lili', 'Reinhart', NULL, '1996-09-13', 'Estadounidense', 'lili_reinhart.jpg', 'Lili Reinhart es una actriz estadounidense conocida por interpretar a Betty Cooper en Riverdale.'),
(24, 'Camila', 'Mendes', NULL, '1994-06-29', 'Estadounidense', 'camila_mendes.jpg', 'Camila Mendes es una actriz estadounidense conocida por interpretar a Veronica Lodge en Riverdale.'),
(25, 'Cole', 'Sprouse', NULL, '1992-08-04', 'Estadounidense', 'cole_sprouse.jpg', 'Cole Sprouse es un actor estadounidense conocido por interpretar a Jughead Jones en Riverdale y por su carrera desde niÃ±o en televisiÃ³n.'),
(26, 'Madelaine', 'Petsch', NULL, '1994-08-18', 'Estadounidense', 'madelaine_petsch.jpg', 'Madelaine Petsch es una actriz estadounidense conocida por interpretar a Cheryl Blossom en Riverdale.'),
(27, 'Casey', 'Cott', NULL, '1992-08-08', 'Estadounidense', 'casey_cott.jpg', 'Casey Cott es un actor estadounidense conocido por interpretar a Kevin Keller en Riverdale.'),
(28, 'Vanessa', 'Morgan', NULL, '1992-03-23', 'Canadiense', 'vanessa_morgan.jpg', 'Vanessa Morgan es una actriz canadiense conocida por sus papeles en Riverdale y otras series juveniles.'),
(29, 'Mark', 'Consuelos', NULL, '1971-03-30', 'Estadounidense', 'mark_consuelos.jpg', 'Mark Consuelos es un actor estadounidense conocido por sus papeles en Riverdale y All My Children.'),
(30, 'Marisol', 'Nichols', NULL, '1973-11-02', 'Estadounidense', 'marisol_nichols.jpg', 'Marisol Nichols es una actriz estadounidense conocida por sus papeles en Riverdale, 24 y otras series de televisiÃ³n.'),
(31, 'MÃ¤dchen', 'Amick', NULL, '1970-12-12', 'Estadounidense', 'madchen_amick.jpg', 'MÃ¤dchen Amick es una actriz estadounidense conocida por Twin Peaks, Riverdale y varias producciones televisivas.'),
(32, 'Andrew', 'Lincoln', NULL, '1973-09-14', 'BritÃ¡nico', 'andrew_lincoln.jpg', 'Andrew Lincoln es un actor britÃ¡nico reconocido internacionalmente por su papel como Rick Grimes en The Walking Dead.'),
(33, 'Norman', 'Reedus', NULL, '1969-01-06', 'Estadounidense', 'norman_reedus.jpg', 'Norman Reedus es un actor y modelo estadounidense conocido por interpretar a Daryl Dixon en The Walking Dead.'),
(34, 'Danai', 'Gurira', NULL, '1978-02-14', 'Estadounidense', 'danai_gurira.jpg', 'Danai Gurira es una actriz y dramaturga estadounidense conocida por interpretar a Michonne en The Walking Dead y Okoye en Marvel.'),
(35, 'Melissa', 'McBride', NULL, '1965-05-23', 'Estadounidense', 'melissa_mcbride.jpg', 'Melissa McBride es una actriz estadounidense conocida por su papel de Carol Peletier en The Walking Dead.'),
(36, 'Steven', 'Yeun', NULL, '1983-12-21', 'Coreano-estadounidense', 'steven_yeun.jpg', 'Steven Yeun es un actor estadounidense conocido por sus trabajos en The Walking Dead, Beef e Invincible.'),
(37, 'Lauren', 'Cohan', NULL, '1982-01-07', 'Estadounidense', 'lauren_cohan.jpg', 'Lauren Cohan es una actriz estadounidense-britÃ¡nica conocida por interpretar a Maggie Greene en The Walking Dead.'),
(38, 'Chandler', 'Riggs', NULL, '1999-06-27', 'Estadounidense', 'chandler_riggs.jpg', 'Chandler Riggs es un actor estadounidense conocido por interpretar a Carl Grimes en The Walking Dead.'),
(39, 'Jon', 'Bernthal', NULL, '1976-09-20', 'Estadounidense', 'jon_bernthal.jpg', 'Jon Bernthal es un actor estadounidense conocido por sus papeles en The Walking Dead, The Punisher y Daredevil.'),
(40, 'Scott', 'Wilson', NULL, '1942-03-29', 'Estadounidense', 'scott_wilson.jpg', 'Scott Wilson fue un actor estadounidense reconocido por interpretar a Hershel Greene en The Walking Dead.'),
(41, 'Tom', 'Ellis', NULL, '1978-11-17', 'BritÃ¡nico', 'tom_ellis.jpg', 'Tom Ellis es un actor britÃ¡nico conocido internacionalmente por interpretar a Lucifer Morningstar en la serie Lucifer.'),
(42, 'Lauren', 'German', NULL, '1978-11-29', 'Estadounidense', 'lauren_german.jpg', 'Lauren German es una actriz estadounidense reconocida por sus papeles en series de televisiÃ³n como Lucifer y Chicago Fire.'),
(43, 'Lesley-Ann', 'Brandt', NULL, '1981-12-02', 'Sudafricana', 'lesley_ann_brandt.jpg', 'Lesley-Ann Brandt es una actriz sudafricana conocida por interpretar a Mazikeen en Lucifer.'),
(44, 'D. B.', 'Woodside', NULL, '1969-07-25', 'Estadounidense', 'db_woodside.jpg', 'D. B. Woodside es un actor estadounidense con una larga trayectoria en televisiÃ³n, conocido por sus papeles en Lucifer, 24 y Suits.'),
(45, 'Rachael', 'Harris', NULL, '1968-01-12', 'Estadounidense', 'rachael_harris.jpg', 'Rachael Harris es una actriz y comediante estadounidense conocida por su trabajo en cine y televisiÃ³n.'),
(46, 'Kevin', 'Alejandro', NULL, '1976-04-07', 'Estadounidense', 'kevin_alejandro.jpg', 'Kevin Alejandro es un actor y director estadounidense conocido por aparecer en series como Lucifer, True Blood y Arrow.'),
(47, 'Aimee', 'Garcia', NULL, '1978-11-28', 'Estadounidense', 'aimee_garcia.jpg', 'Aimee Garcia es una actriz estadounidense conocida por sus papeles en Lucifer, Dexter y otras producciones televisivas.'),
(48, 'Scarlett', 'Estevez', NULL, '2007-12-04', 'Estadounidense', 'scarlett_estevez.jpg', 'Scarlett Estevez es una actriz estadounidense que comenzÃ³ su carrera siendo niÃ±a y es conocida por sus papeles en Lucifer y otras producciones familiares.'),
(49, 'Tricia', 'Helfer', NULL, '1974-04-11', 'Canadiense', 'tricia_helfer.jpg', 'Tricia Helfer es una actriz y modelo canadiense conocida por su papel en Battlestar Galactica y por interpretar a Charlotte Richards en Lucifer.'),
(50, 'Tom', 'Welling', NULL, '1977-04-26', 'Estadounidense', 'tom_welling.jpg', 'Tom Welling es un actor estadounidense reconocido principalmente por interpretar a Clark Kent en Smallville y a Marcus Pierce en Lucifer.'),
(51, 'Eliza', 'Taylor', NULL, '1989-10-24', 'Australiana', 'eliza_taylor.jpg', 'Eliza Taylor es una actriz australiana conocida internacionalmente por interpretar a Clarke Griffin en The 100.'),
(52, 'Bob', 'Morley', NULL, '1984-12-20', 'Australiano', 'bob_morley.jpg', 'Bob Morley es un actor australiano reconocido por su papel de Bellamy Blake en The 100.'),
(53, 'Marie', 'Avgeropoulos', NULL, '1986-06-17', 'Canadiense', 'marie_avgeropoulos.jpg', 'Marie Avgeropoulos es una actriz canadiense conocida por interpretar a Octavia Blake en The 100.'),
(54, 'Lindsey', 'Morgan', NULL, '1990-02-27', 'Estadounidense', 'lindsey_morgan.jpg', 'Lindsey Morgan es una actriz estadounidense conocida por sus papeles en The 100 y Walker.'),
(55, 'Richard', 'Harmon', NULL, '1991-08-18', 'Canadiense', 'richard_harmon.jpg', 'Richard Harmon es un actor canadiense reconocido por interpretar a John Murphy en The 100.'),
(56, 'Alycia', 'Debnam-Carey', NULL, '1993-07-20', 'Australiana', 'alycia_debnam_carey.jpg', 'Alycia Debnam-Carey es una actriz australiana conocida por sus papeles en The 100 y Fear the Walking Dead.'),
(57, 'Paige', 'Turco', NULL, '1965-05-17', 'Estadounidense', 'paige_turco.jpg', 'Paige Turco es una actriz estadounidense con una amplia trayectoria en televisiÃ³n y cine.'),
(58, 'Henry', 'Ian', 'Cusick', '1967-04-17', 'Peruano-britÃ¡nico', 'henry_ian_cusick.jpg', 'Henry Ian Cusick es un actor conocido por sus papeles en Lost y The 100.'),
(59, 'Christopher', 'Larkin', NULL, '1987-10-02', 'Coreano-estadounidense', 'christopher_larkin.jpg', 'Christopher Larkin es un actor y mÃºsico conocido por interpretar a Monty Green en The 100.'),
(60, 'Devon', 'Bostick', NULL, '1991-11-13', 'Canadiense', 'devon_bostick.jpg', 'Devon Bostick es un actor canadiense conocido por sus papeles en The 100 y Diary of a Wimpy Kid.'),
(61, 'Bryan', 'Cranston', NULL, '1956-03-07', 'Estadounidense', 'bryan_cranston.jpg', 'Bryan Cranston es un actor estadounidense reconocido internacionalmente por interpretar a Walter White en Breaking Bad y por su trabajo en televisiÃ³n, cine y teatro.'),
(62, 'Aaron', 'Paul', NULL, '1979-08-27', 'Estadounidense', 'aaron_paul.jpg', 'Aaron Paul es un actor estadounidense conocido por su papel de Jesse Pinkman en Breaking Bad, interpretaciÃ³n que le dio gran reconocimiento internacional.'),
(63, 'Anna', 'Gunn', NULL, '1968-08-11', 'Estadounidense', 'anna_gunn.jpg', 'Anna Gunn es una actriz estadounidense conocida principalmente por interpretar a Skyler White en Breaking Bad.'),
(64, 'Dean', 'Norris', NULL, '1963-04-08', 'Estadounidense', 'dean_norris.jpg', 'Dean Norris es un actor estadounidense con una amplia trayectoria en televisiÃ³n y cine, reconocido por su papel de Hank Schrader en Breaking Bad.'),
(65, 'Giancarlo', 'Esposito', NULL, '1958-04-26', 'Estadounidense', 'giancarlo_esposito.jpg', 'Giancarlo Esposito es un actor estadounidense conocido por interpretar personajes intensos y carismÃ¡ticos en series como Breaking Bad, Better Call Saul y The Mandalorian.'),
(66, 'Bob', 'Odenkirk', NULL, '1962-10-22', 'Estadounidense', 'bob_odenkirk.jpg', 'Bob Odenkirk es un actor, guionista y comediante estadounidense conocido por interpretar a Saul Goodman en Breaking Bad y Better Call Saul.'),
(67, 'Jonathan', 'Banks', NULL, '1947-01-31', 'Estadounidense', 'jonathan_banks.jpg', 'Jonathan Banks es un actor estadounidense reconocido por sus papeles en cine y televisiÃ³n, especialmente como Mike Ehrmantraut en Breaking Bad y Better Call Saul.'),
(68, 'Betsy', 'Brandt', NULL, '1973-03-14', 'Estadounidense', 'betsy_brandt.jpg', 'Betsy Brandt es una actriz estadounidense conocida por interpretar a Marie Schrader en Breaking Bad.'),
(69, 'RJ', 'Mitte', NULL, '1992-08-21', 'Estadounidense', 'rj_mitte.jpg', 'RJ Mitte es un actor estadounidense conocido por interpretar a Walter White Jr. en Breaking Bad.'),
(70, 'Jesse', 'Plemons', NULL, '1988-04-02', 'Estadounidense', 'jesse_plemons.jpg', 'Jesse Plemons es un actor estadounidense reconocido por sus papeles en series y pelÃ­culas como Breaking Bad, Fargo y The Power of the Dog.'),
(71, 'Millie', 'Bobby', 'Brown', '2004-02-19', 'BritÃ¡nica', 'millie_bobby_brown.jpg', 'Millie Bobby Brown es una actriz britÃ¡nica conocida internacionalmente por interpretar a Eleven en Stranger Things y por su trabajo en cine y televisiÃ³n.'),
(72, 'Finn', 'Wolfhard', NULL, '2002-12-23', 'Canadiense', 'finn_wolfhard.jpg', 'Finn Wolfhard es un actor y mÃºsico canadiense conocido por sus papeles en Stranger Things y en adaptaciones cinematogrÃ¡ficas de terror.'),
(73, 'Gaten', 'Matarazzo', NULL, '2002-09-08', 'Estadounidense', 'gaten_matarazzo.jpg', 'Gaten Matarazzo es un actor estadounidense conocido por interpretar a Dustin Henderson en Stranger Things.'),
(74, 'Caleb', 'McLaughlin', NULL, '2001-10-13', 'Estadounidense', 'caleb_mclaughlin.jpg', 'Caleb McLaughlin es un actor estadounidense reconocido por su papel de Lucas Sinclair en Stranger Things.'),
(75, 'Noah', 'Schnapp', NULL, '2004-10-03', 'Estadounidense', 'noah_schnapp.jpg', 'Noah Schnapp es un actor estadounidense conocido por interpretar a Will Byers en Stranger Things.'),
(76, 'David', 'Harbour', NULL, '1975-04-10', 'Estadounidense', 'david_harbour.jpg', 'David Harbour es un actor estadounidense conocido por su papel de Jim Hopper en Stranger Things y por su trabajo en cine y televisiÃ³n.'),
(77, 'Winona', 'Ryder', NULL, '1971-10-29', 'Estadounidense', 'winona_ryder.jpg', 'Winona Ryder es una actriz estadounidense con una larga trayectoria en cine y televisiÃ³n, reconocida por pelÃ­culas de culto y por su papel en Stranger Things.'),
(78, 'Natalia', 'Dyer', NULL, '1995-01-13', 'Estadounidense', 'natalia_dyer.jpg', 'Natalia Dyer es una actriz estadounidense conocida por interpretar a Nancy Wheeler en Stranger Things.'),
(79, 'Joe', 'Keery', NULL, '1992-04-24', 'Estadounidense', 'joe_keery.jpg', 'Joe Keery es un actor y mÃºsico estadounidense conocido por interpretar a Steve Harrington en Stranger Things.'),
(80, 'Jamie', 'Campbell', 'Bower', '1988-11-22', 'BritÃ¡nico', 'jamie_campbell_bower.jpg', 'Jamie Campbell Bower es un actor y mÃºsico britÃ¡nico conocido por sus papeles en Stranger Things, The Twilight Saga y otras producciones fantÃ¡sticas.'),
(81, 'Ian', 'Cardoni', NULL, '1983-11-13', 'Estadounidense', 'ian_cardoni.jpg', 'Ian Cardoni es un actor de voz estadounidense conocido por convertirse en una de las voces principales de Rick and Morty.'),
(82, 'Harry', 'Belden', NULL, '1999-07-22', 'Estadounidense', 'harry_belden.jpg', 'Harry Belden es un actor de voz estadounidense conocido por interpretar a Morty Smith en temporadas recientes de Rick and Morty.'),
(83, 'Spencer', 'Grammer', NULL, '1983-10-09', 'Estadounidense', 'spencer_grammer.jpg', 'Spencer Grammer es una actriz estadounidense conocida por dar voz a Summer Smith en Rick and Morty.'),
(84, 'Sarah', 'Chalke', NULL, '1976-08-27', 'Canadiense', 'sarah_chalke.jpg', 'Sarah Chalke es una actriz canadiense reconocida por sus papeles en televisiÃ³n y por interpretar a Beth Smith en Rick and Morty.'),
(85, 'Chris', 'Parnell', NULL, '1967-02-05', 'Estadounidense', 'chris_parnell.jpg', 'Chris Parnell es un actor y comediante estadounidense conocido por su trabajo en Saturday Night Live y por dar voz a Jerry Smith en Rick and Morty.'),
(86, 'Dan', 'Harmon', NULL, '1973-01-03', 'Estadounidense', 'dan_harmon.jpg', 'Dan Harmon es un guionista, productor y actor estadounidense, creador de Community y cocreador de Rick and Morty.'),
(87, 'Justin', 'Roiland', NULL, '1980-02-21', 'Estadounidense', 'justin_roiland.jpg', 'Justin Roiland es un actor y productor estadounidense conocido por cocrear Rick and Morty y poner voz a mÃºltiples personajes de la serie.'),
(88, 'Scott', 'Marder', NULL, '1980-01-01', 'Estadounidense', 'scott_marder.jpg', 'Scott Marder es un productor y guionista estadounidense relacionado con el desarrollo moderno de Rick and Morty.'),
(89, 'Maurice', 'LaMarche', NULL, '1958-03-30', 'Canadiense', 'maurice_lamarche.jpg', 'Maurice LaMarche es un actor de voz canadiense reconocido por participar en numerosas series animadas y videojuegos.'),
(90, 'Christina', 'Hendricks', NULL, '1975-05-03', 'Estadounidense', 'christina_hendricks.jpg', 'Christina Hendricks es una actriz estadounidense conocida por sus trabajos en televisiÃ³n y por dar voz al personaje de Unity.'),
(91, 'Jennifer', 'Aniston', NULL, '1969-02-11', 'Estadounidense', 'jennifer_aniston.jpg', 'Jennifer Aniston es una actriz y productora estadounidense reconocida mundialmente por interpretar a Rachel Green en Friends.'),
(92, 'David', 'Schwimmer', NULL, '1966-11-02', 'Estadounidense', 'david_schwimmer.jpg', 'David Schwimmer es un actor y director estadounidense conocido principalmente por su papel de Ross Geller en Friends.'),
(93, 'Courteney', 'Cox', NULL, '1964-06-15', 'Estadounidense', 'courteney_cox.jpg', 'Courteney Cox es una actriz y productora estadounidense conocida por interpretar a Monica Geller en Friends y por la saga Scream.'),
(94, 'Matthew', 'Perry', NULL, '1969-08-19', 'Canadiense-estadounidense', 'matthew_perry.jpg', 'Matthew Perry fue un actor y guionista conocido internacionalmente por interpretar a Chandler Bing en Friends.'),
(95, 'Matt', 'LeBlanc', NULL, '1967-07-25', 'Estadounidense', 'matt_leblanc.jpg', 'Matt LeBlanc es un actor estadounidense reconocido por su papel de Joey Tribbiani en Friends y Joey.'),
(96, 'Lisa', 'Kudrow', NULL, '1963-07-30', 'Estadounidense', 'lisa_kudrow.jpg', 'Lisa Kudrow es una actriz y comediante estadounidense famosa por interpretar a Phoebe Buffay en Friends.'),
(97, 'James', 'Michael', 'Tyler', '1962-05-28', 'Estadounidense', 'james_michael_tyler.jpg', 'James Michael Tyler fue un actor estadounidense conocido por interpretar a Gunther en Friends.'),
(98, 'Maggie', 'Wheeler', NULL, '1961-08-07', 'Estadounidense', 'maggie_wheeler.jpg', 'Maggie Wheeler es una actriz estadounidense conocida por su icÃ³nico papel de Janice en Friends.'),
(99, 'Paul', 'Rudd', NULL, '1969-04-06', 'Estadounidense', 'paul_rudd.jpg', 'Paul Rudd es un actor estadounidense reconocido por sus trabajos en comedia y por interpretar a Ant-Man en Marvel.'),
(100, 'Tom', 'Selleck', NULL, '1945-01-29', 'Estadounidense', 'tom_selleck.jpg', 'Tom Selleck es un actor estadounidense famoso por sus papeles en Magnum P.I. y Friends.'),
(101, 'Karl', 'Urban', NULL, '1972-06-07', 'NeozelandÃ©s', 'karl_urban.jpg', 'Karl Urban es un actor neozelandÃ©s conocido por sus papeles en The Boys, Dredd y The Lord of the Rings.'),
(102, 'Jack', 'Quaid', NULL, '1992-04-24', 'Estadounidense', 'jack_quaid.jpg', 'Jack Quaid es un actor estadounidense reconocido por interpretar a Hughie Campbell en The Boys.'),
(103, 'Antony', 'Starr', NULL, '1975-10-25', 'NeozelandÃ©s', 'antony_starr.jpg', 'Antony Starr es un actor neozelandÃ©s conocido internacionalmente por su interpretaciÃ³n de Homelander en The Boys.'),
(104, 'Erin', 'Moriarty', NULL, '1994-06-24', 'Estadounidense', 'erin_moriarty.jpg', 'Erin Moriarty es una actriz estadounidense conocida por interpretar a Starlight en The Boys.'),
(105, 'Laz', 'Alonso', NULL, '1974-03-25', 'Estadounidense', 'laz_alonso.jpg', 'Laz Alonso es un actor estadounidense reconocido por sus trabajos en cine y televisiÃ³n, especialmente en The Boys.'),
(106, 'Tomer', 'Capone', NULL, '1985-07-15', 'IsraelÃ­', 'tomer_capone.jpg', 'Tomer Capone es un actor israelÃ­ conocido por interpretar a Frenchie en The Boys.'),
(107, 'Karen', 'Fukuhara', NULL, '1992-02-10', 'Estadounidense', 'karen_fukuhara.jpg', 'Karen Fukuhara es una actriz estadounidense conocida por sus papeles en The Boys y Suicide Squad.'),
(108, 'Jessie', 'Usher', NULL, '1992-02-29', 'Estadounidense', 'jessie_usher.jpg', 'Jessie Usher es un actor estadounidense conocido por interpretar a A-Train en The Boys.'),
(109, 'Dominique', 'McElligott', NULL, '1986-03-05', 'Irlandesa', 'dominique_mcelligott.jpg', 'Dominique McElligott es una actriz irlandesa reconocida por su papel de Queen Maeve en The Boys.'),
(110, 'J.K.', 'Simmons', NULL, '1955-01-09', 'Estadounidense', 'jk_simmons.jpg', 'J.K. Simmons es un actor estadounidense reconocido por su extensa carrera en cine y televisiÃ³n y por ganar un Ã“scar por Whiplash.'),
(111, 'Sandra', 'Oh', NULL, '1971-07-20', 'Canadiense', 'sandra_oh.jpg', 'Sandra Oh es una actriz canadiense conocida internacionalmente por sus papeles en Greyâ€™s Anatomy, Killing Eve e Invincible.'),
(112, 'Gillian', 'Jacobs', NULL, '1982-10-19', 'Estadounidense', 'gillian_jacobs.jpg', 'Gillian Jacobs es una actriz estadounidense conocida por sus trabajos en Community e Invincible.'),
(113, 'Seth', 'Rogen', NULL, '1982-04-15', 'Canadiense', 'seth_rogen.jpg', 'Seth Rogen es un actor, productor y guionista canadiense reconocido por sus trabajos en comedia y animaciÃ³n.'),
(114, 'Walton', 'Goggins', NULL, '1971-11-10', 'Estadounidense', 'walton_goggins.jpg', 'Walton Goggins es un actor estadounidense conocido por sus papeles en Justified, Fallout e Invincible.'),
(115, 'Zachary', 'Quinto', NULL, '1977-06-02', 'Estadounidense', 'zachary_quinto.jpg', 'Zachary Quinto es un actor estadounidense conocido por interpretar a Spock en Star Trek y por su trabajo en series y doblaje.'),
(116, 'Jason', 'Mantzoukas', NULL, '1972-12-18', 'Estadounidense', 'jason_mantzoukas.jpg', 'Jason Mantzoukas es un actor y comediante estadounidense conocido por sus papeles cÃ³micos y de voz.'),
(117, 'Ross', 'Marquand', NULL, '1981-08-22', 'Estadounidense', 'ross_marquand.jpg', 'Ross Marquand es un actor estadounidense conocido por The Walking Dead y por su trabajo en doblaje y animaciÃ³n.'),
(118, 'Sterling', 'Brown', NULL, '1976-04-05', 'Estadounidense', 'sterling_brown.jpg', 'Sterling K. Brown es un actor estadounidense reconocido por sus trabajos dramÃ¡ticos en televisiÃ³n y cine.'),
(119, 'Andy', 'Samberg', NULL, '1978-08-18', 'Estadounidense', 'andy_samberg.jpg', 'Andy Samberg es un actor, comediante y mÃºsico estadounidense conocido por Saturday Night Live y por interpretar a Jake Peralta en Brooklyn Nine-Nine.'),
(120, 'Melissa', 'Fumero', NULL, '1982-08-19', 'Estadounidense', 'melissa_fumero.jpg', 'Melissa Fumero es una actriz estadounidense conocida por interpretar a Amy Santiago en Brooklyn Nine-Nine.'),
(121, 'Andre', 'Braugher', NULL, '1962-07-01', 'Estadounidense', 'andre_braugher.jpg', 'Andre Braugher fue un actor estadounidense reconocido por sus papeles dramÃ¡ticos y por interpretar al CapitÃ¡n Holt en Brooklyn Nine-Nine.'),
(122, 'Stephanie', 'Beatriz', NULL, '1981-02-10', 'Argentina-estadounidense', 'stephanie_beatriz.jpg', 'Stephanie Beatriz es una actriz conocida por interpretar a Rosa Diaz en Brooklyn Nine-Nine y por dar voz a Mirabel en Encanto.'),
(123, 'Joe', 'Lo', 'Truglio', '1970-12-02', 'Estadounidense', 'joe_lo_truglio.jpg', 'Joe Lo Truglio es un actor y comediante estadounidense conocido por interpretar a Charles Boyle en Brooklyn Nine-Nine.'),
(124, 'Terry', 'Crews', NULL, '1968-07-30', 'Estadounidense', 'terry_crews.jpg', 'Terry Crews es un actor y exjugador profesional de fÃºtbol americano conocido por sus papeles en comedia y acciÃ³n.'),
(125, 'Chelsea', 'Peretti', NULL, '1978-02-20', 'Estadounidense', 'chelsea_peretti.jpg', 'Chelsea Peretti es una comediante y actriz estadounidense conocida por interpretar a Gina Linetti en Brooklyn Nine-Nine.'),
(126, 'Joel', 'McKinnon', 'Miller', '1960-02-21', 'Canadiense', 'joel_mckinnon_miller.jpg', 'Joel McKinnon Miller es un actor canadiense conocido por interpretar a Norm Scully en Brooklyn Nine-Nine.'),
(127, 'Dirk', 'Blocker', NULL, '1957-07-31', 'Estadounidense', 'dirk_blocker.jpg', 'Dirk Blocker es un actor estadounidense conocido por interpretar a Michael Hitchcock en Brooklyn Nine-Nine.'),
(128, 'Craig', 'Robinson', NULL, '1971-10-25', 'Estadounidense', 'craig_robinson.jpg', 'Craig Robinson es un actor y comediante estadounidense conocido por sus papeles en The Office y Brooklyn Nine-Nine.'),
(129, 'Ed', 'ONeill', NULL, '1946-04-12', 'Estadounidense', 'ed_oneill.jpg', 'Ed ONeill es un actor estadounidense conocido por sus papeles en Married... with Children y Modern Family.'),
(130, 'Sofia', 'Vergara', NULL, '1972-07-10', 'Colombiana', 'sofia_vergara.jpg', 'Sofia Vergara es una actriz y modelo colombiana reconocida mundialmente por interpretar a Gloria en Modern Family.'),
(131, 'Julie', 'Bowen', NULL, '1970-03-03', 'Estadounidense', 'julie_bowen.jpg', 'Julie Bowen es una actriz estadounidense conocida por interpretar a Claire Dunphy en Modern Family.'),
(132, 'Ty', 'Burrell', NULL, '1967-08-22', 'Estadounidense', 'ty_burrell.jpg', 'Ty Burrell es un actor y comediante estadounidense reconocido por su papel de Phil Dunphy en Modern Family.'),
(133, 'Jesse', 'Tyler', 'Ferguson', '1975-10-22', 'Estadounidense', 'jesse_tyler_ferguson.jpg', 'Jesse Tyler Ferguson es un actor estadounidense conocido por interpretar a Mitchell Pritchett en Modern Family.'),
(134, 'Eric', 'Stonestreet', NULL, '1971-09-09', 'Estadounidense', 'eric_stonestreet.jpg', 'Eric Stonestreet es un actor y comediante estadounidense famoso por su papel de Cameron Tucker en Modern Family.'),
(135, 'Sarah', 'Hyland', NULL, '1990-11-24', 'Estadounidense', 'sarah_hyland.jpg', 'Sarah Hyland es una actriz estadounidense conocida por interpretar a Haley Dunphy en Modern Family.'),
(136, 'Ariel', 'Winter', NULL, '1998-01-28', 'Estadounidense', 'ariel_winter.jpg', 'Ariel Winter es una actriz estadounidense conocida por su papel de Alex Dunphy en Modern Family.'),
(137, 'Nolan', 'Gould', NULL, '1998-10-28', 'Estadounidense', 'nolan_gould.jpg', 'Nolan Gould es un actor estadounidense reconocido por interpretar a Luke Dunphy en Modern Family.'),
(138, 'Rico', 'Rodriguez', NULL, '1998-07-31', 'Estadounidense', 'rico_rodriguez.jpg', 'Rico Rodriguez es un actor estadounidense conocido por interpretar a Manny Delgado en Modern Family.'),
(139, 'Jim', 'Parsons', NULL, '1973-03-24', 'Estadounidense', 'jim_parsons.jpg', 'Jim Parsons es un actor estadounidense reconocido mundialmente por interpretar a Sheldon Cooper en The Big Bang Theory.'),
(140, 'Johnny', 'Galecki', NULL, '1975-04-30', 'Estadounidense', 'johnny_galecki.jpg', 'Johnny Galecki es un actor estadounidense conocido por sus papeles en Roseanne y The Big Bang Theory.'),
(141, 'Kaley', 'Cuoco', NULL, '1985-11-30', 'Estadounidense', 'kaley_cuoco.jpg', 'Kaley Cuoco es una actriz estadounidense reconocida por interpretar a Penny en The Big Bang Theory y por su trabajo en televisiÃ³n.'),
(142, 'Simon', 'Helberg', NULL, '1980-12-09', 'Estadounidense', 'simon_helberg.jpg', 'Simon Helberg es un actor y comediante estadounidense conocido por interpretar a Howard Wolowitz en The Big Bang Theory.'),
(143, 'Kunal', 'Nayyar', NULL, '1981-04-30', 'BritÃ¡nico-indio', 'kunal_nayyar.jpg', 'Kunal Nayyar es un actor britÃ¡nico de origen indio conocido internacionalmente por interpretar a Raj Koothrappali.'),
(144, 'Mayim', 'Bialik', NULL, '1975-12-12', 'Estadounidense', 'mayim_bialik.jpg', 'Mayim Bialik es una actriz y neurocientÃ­fica estadounidense conocida por interpretar a Amy Farrah Fowler en The Big Bang Theory.'),
(145, 'Melissa', 'Rauch', NULL, '1980-06-23', 'Estadounidense', 'melissa_rauch.jpg', 'Melissa Rauch es una actriz estadounidense conocida por interpretar a Bernadette Rostenkowski en The Big Bang Theory.'),
(146, 'Kevin', 'Sussman', NULL, '1970-12-04', 'Estadounidense', 'kevin_sussman.jpg', 'Kevin Sussman es un actor estadounidense conocido por interpretar a Stuart Bloom en The Big Bang Theory.'),
(147, 'Sara', 'Gilbert', NULL, '1975-01-29', 'Estadounidense', 'sara_gilbert.jpg', 'Sara Gilbert es una actriz y productora estadounidense conocida por Roseanne y The Big Bang Theory.'),
(148, 'Wil', 'Wheaton', NULL, '1972-07-29', 'Estadounidense', 'wil_wheaton.jpg', 'Wil Wheaton es un actor y escritor estadounidense conocido por Star Trek: The Next Generation y sus apariciones en The Big Bang Theory.'),
(149, 'Freddie', 'Highmore', NULL, '1992-02-14', 'BritÃ¡nico', 'freddie_highmore.jpg', 'Freddie Highmore es un actor britÃ¡nico conocido por sus papeles en Bates Motel, Charlie y la fÃ¡brica de chocolate y The Good Doctor.'),
(150, 'Richard', 'Schiff', NULL, '1955-05-27', 'Estadounidense', 'richard_schiff.jpg', 'Richard Schiff es un actor estadounidense reconocido por su trabajo en The West Wing y The Good Doctor.'),
(151, 'Paige', 'Spara', NULL, '1989-08-09', 'Estadounidense', 'paige_spara.jpg', 'Paige Spara es una actriz estadounidense conocida por interpretar a Lea Dilallo en The Good Doctor.'),
(152, 'Antonia', 'Thomas', NULL, '1986-11-03', 'BritÃ¡nica', 'antonia_thomas.jpg', 'Antonia Thomas es una actriz britÃ¡nica conocida por sus papeles en Misfits, Lovesick y The Good Doctor.'),
(153, 'Nicholas', 'Gonzalez', NULL, '1976-01-03', 'Estadounidense', 'nicholas_gonzalez.jpg', 'Nicholas Gonzalez es un actor estadounidense conocido por sus trabajos en series mÃ©dicas y dramÃ¡ticas.'),
(154, 'Fiona', 'Gubelmann', NULL, '1980-03-30', 'Estadounidense', 'fiona_gubelmann.jpg', 'Fiona Gubelmann es una actriz estadounidense conocida por sus trabajos en televisiÃ³n, especialmente en The Good Doctor.'),
(155, 'Will', 'Yun', 'Lee', '1971-03-22', 'Estadounidense', 'will_yun_lee.jpg', 'Will Yun Lee es un actor estadounidense conocido por sus papeles en cine, televisiÃ³n y videojuegos.'),
(156, 'Christina', 'Chang', NULL, '1971-06-29', 'Estadounidense', 'christina_chang.jpg', 'Christina Chang es una actriz estadounidense conocida por interpretar a Audrey Lim en The Good Doctor.'),
(157, 'Hill', 'Harper', NULL, '1966-05-17', 'Estadounidense', 'hill_harper.jpg', 'Hill Harper es un actor y escritor estadounidense conocido por sus papeles en CSI: NY y The Good Doctor.'),
(158, 'Noah', 'Galvin', NULL, '1994-05-06', 'Estadounidense', 'noah_galvin.jpg', 'Noah Galvin es un actor estadounidense conocido por su trabajo en teatro musical y televisiÃ³n.'),
(159, 'Vera', 'Farmiga', NULL, '1973-08-06', 'Estadounidense', 'vera_farmiga.jpg', 'Vera Farmiga es una actriz estadounidense reconocida por sus papeles en Bates Motel, The Conjuring y numerosas producciones dramÃ¡ticas.'),
(160, 'Max', 'Thieriot', NULL, '1988-10-14', 'Estadounidense', 'max_thieriot.jpg', 'Max Thieriot es un actor estadounidense conocido por sus trabajos en Bates Motel y SEAL Team.'),
(161, 'Olivia', 'Cooke', NULL, '1993-12-27', 'BritÃ¡nica', 'olivia_cooke.jpg', 'Olivia Cooke es una actriz britÃ¡nica conocida por Bates Motel, Ready Player One y House of the Dragon.'),
(162, 'Nestor', 'Carbonell', NULL, '1967-12-01', 'Estadounidense', 'nestor_carbonell.jpg', 'Nestor Carbonell es un actor estadounidense reconocido por sus papeles en Bates Motel y Lost.'),
(163, 'Nicola', 'Peltz', NULL, '1995-01-09', 'Estadounidense', 'nicola_peltz.jpg', 'Nicola Peltz es una actriz estadounidense conocida por Bates Motel y Transformers: Age of Extinction.'),
(164, 'Kenny', 'Johnson', NULL, '1963-07-13', 'Estadounidense', 'kenny_johnson.jpg', 'Kenny Johnson es un actor estadounidense conocido por interpretar personajes intensos en series policiales y dramÃ¡ticas.'),
(165, 'Michael', 'Eklund', NULL, '1962-07-31', 'Canadiense', 'michael_eklund.jpg', 'Michael Eklund es un actor canadiense conocido por interpretar personajes oscuros y perturbadores en cine y televisiÃ³n.'),
(166, 'Ryan', 'Hurst', NULL, '1976-06-19', 'Estadounidense', 'ryan_hurst.jpg', 'Ryan Hurst es un actor estadounidense conocido por sus papeles en Sons of Anarchy, Bates Motel y The Walking Dead.'),
(167, 'Austin', 'Nichols', NULL, '1980-04-24', 'Estadounidense', 'austin_nichols.jpg', 'Austin Nichols es un actor estadounidense conocido por sus trabajos en Bates Motel y One Tree Hill.'),
(168, 'Junko', 'Takeuchi', NULL, '1972-04-05', 'Japonesa', 'junko_takeuchi.jpg', 'Junko Takeuchi es una actriz de voz japonesa conocida principalmente por dar voz a Naruto Uzumaki.'),
(169, 'Noriaki', 'Sugiyama', NULL, '1974-03-09', 'JaponÃ©s', 'noriaki_sugiyama.jpg', 'Noriaki Sugiyama es un actor de voz japonÃ©s conocido por interpretar a Sasuke Uchiha en Naruto.'),
(170, 'Chie', 'Nakamura', NULL, '1979-05-14', 'Japonesa', 'chie_nakamura.jpg', 'Chie Nakamura es una actriz de voz japonesa reconocida por dar voz a Sakura Haruno.'),
(171, 'Kazuhiko', 'Inoue', NULL, '1954-03-26', 'JaponÃ©s', 'kazuhiko_inoue.jpg', 'Kazuhiko Inoue es un veterano actor de voz japonÃ©s conocido por interpretar a Kakashi Hatake.'),
(172, 'Hideo', 'Ishikawa', NULL, '1969-12-13', 'JaponÃ©s', 'hideo_ishikawa.jpg', 'Hideo Ishikawa es un actor de voz japonÃ©s conocido por dar voz a Itachi Uchiha.'),
(173, 'Akira', 'Ishida', NULL, '1967-11-02', 'JaponÃ©s', 'akira_ishida.jpg', 'Akira Ishida es un actor de voz japonÃ©s reconocido por interpretar a Gaara en Naruto.'),
(174, 'Nana', 'Mizuki', NULL, '1980-01-21', 'Japonesa', 'nana_mizuki.jpg', 'Nana Mizuki es una actriz de voz y cantante japonesa conocida por interpretar a Hinata Hyuga.'),
(175, 'Hochu', 'Otsuka', NULL, '1954-05-19', 'JaponÃ©s', 'hochu_otsuka.jpg', 'Hochu Otsuka es un actor de voz japonÃ©s conocido por interpretar a Jiraiya.'),
(176, 'Kujira', 'Kujira', NULL, '1961-04-01', 'Japonesa', 'kujira.jpg', 'Kujira es una actriz de voz japonesa conocida por interpretar a Orochimaru en Naruto.'),
(177, 'Masako', 'Katsuki', NULL, '1958-10-15', 'Japonesa', 'masako_katsuki.jpg', 'Masako Katsuki es una actriz de voz japonesa conocida por interpretar a Tsunade.'),
(178, 'Masakazu', 'Morita', NULL, '1972-10-21', 'JaponÃ©s', 'masakazu_morita.jpg', 'Masakazu Morita es un actor de voz japonÃ©s conocido por interpretar a Ichigo Kurosaki en Bleach.'),
(179, 'Fumiko', 'Orikasa', NULL, '1974-12-27', 'Japonesa', 'fumiko_orikasa.jpg', 'Fumiko Orikasa es una actriz de voz japonesa conocida por interpretar a Rukia Kuchiki en Bleach.'),
(180, 'Yuki', 'Matsuoka', NULL, '1970-09-13', 'Japonesa', 'yuki_matsuoka.jpg', 'Yuki Matsuoka es una actriz de voz japonesa conocida por dar voz a Orihime Inoue.'),
(181, 'KentarÅ', 'ItÅ', NULL, '1974-01-03', 'JaponÃ©s', 'kentaro_ito.jpg', 'KentarÅ ItÅ es un actor de voz japonÃ©s conocido por interpretar a Renji Abarai en Bleach.'),
(182, 'Ryotaro', 'Okiayu', NULL, '1969-11-17', 'JaponÃ©s', 'ryotaro_okiayu.jpg', 'Ryotaro Okiayu es un actor de voz japonÃ©s con una amplia trayectoria en anime y videojuegos.'),
(183, 'ShÅ', 'Hayami', NULL, '1958-08-02', 'JaponÃ©s', 'sho_hayami.jpg', 'ShÅ Hayami es un actor de voz japonÃ©s conocido por interpretar personajes importantes en numerosas series de anime.'),
(184, 'Shinichiro', 'Miki', NULL, '1968-03-18', 'JaponÃ©s', 'shinichiro_miki.jpg', 'Shinichiro Miki es un actor de voz japonÃ©s conocido por su trabajo en anime, videojuegos y doblaje.'),
(185, 'Hiroki', 'Yasumoto', NULL, '1977-03-16', 'JaponÃ©s', 'hiroki_yasumoto.jpg', 'Hiroki Yasumoto es un actor de voz japonÃ©s reconocido por interpretar a Yasutora Sado en Bleach.'),
(186, 'Romi', 'Park', NULL, '1972-01-22', 'Japonesa', 'romi_park.jpg', 'Romi Park es una actriz de voz japonesa reconocida por sus papeles en animes como Bleach y Fullmetal Alchemist.'),
(187, 'Mamoru', 'Miyano', NULL, '1983-06-08', 'JaponÃ©s', 'mamoru_miyano.jpg', 'Mamoru Miyano es un actor de voz y cantante japonÃ©s conocido por interpretar a Light Yagami en Death Note y por numerosos papeles en anime.'),
(188, 'Kappei', 'Yamaguchi', NULL, '1965-05-23', 'JaponÃ©s', 'kappei_yamaguchi.jpg', 'Kappei Yamaguchi es un actor de voz japonÃ©s con una larga trayectoria en anime, conocido por interpretar a L Lawliet en Death Note.'),
(189, 'ShidÅ', 'Nakamura', NULL, '1972-09-14', 'JaponÃ©s', 'shido_nakamura.jpg', 'ShidÅ Nakamura es un actor japonÃ©s de cine, teatro kabuki y voz, conocido por dar voz a Ryuk en Death Note.'),
(190, 'Aya', 'Hirano', NULL, '1987-10-08', 'Japonesa', 'aya_hirano.jpg', 'Aya Hirano es una actriz de voz y cantante japonesa conocida por interpretar a Misa Amane en Death Note y por otros papeles populares en anime.'),
(191, 'Noriko', 'Hidaka', NULL, '1962-05-31', 'Japonesa', 'noriko_hidaka.jpg', 'Noriko Hidaka es una actriz de voz japonesa reconocida por una extensa carrera en anime y por interpretar a Near en Death Note.'),
(192, 'Nozomu', 'Sasaki', NULL, '1967-01-25', 'JaponÃ©s', 'nozomu_sasaki.jpg', 'Nozomu Sasaki es un actor de voz japonÃ©s conocido por interpretar a Mello en Death Note y por otros personajes destacados de anime.'),
(193, 'Naoya', 'Uchida', NULL, '1953-05-01', 'JaponÃ©s', 'naoya_uchida.jpg', 'Naoya Uchida es un actor y actor de voz japonÃ©s conocido por su trabajo en anime, cine y televisiÃ³n.'),
(194, 'Ryo', 'NaitÅ', NULL, '1974-06-22', 'JaponÃ©s', 'ryo_naito.jpg', 'Ryo NaitÅ es un actor de voz japonÃ©s conocido por interpretar a Touta Matsuda en Death Note.'),
(195, 'Masaya', 'Matsukaze', NULL, '1976-09-09', 'JaponÃ©s', 'masaya_matsukaze.jpg', 'Masaya Matsukaze es un actor de voz japonÃ©s conocido por interpretar a Teru Mikami en Death Note.'),
(196, 'Kimiko', 'SaitÅ', NULL, '1977-02-12', 'Japonesa', 'kimiko_saito.jpg', 'Kimiko SaitÅ es una actriz de voz japonesa conocida por interpretar a Rem en Death Note.'),
(197, 'Gakuto', 'Kajiwara', NULL, '1994-11-28', 'JaponÃ©s', 'gakuto_kajiwara.jpg', 'Gakuto Kajiwara es un actor de voz japonÃ©s conocido por interpretar a Asta en Black Clover.'),
(198, 'Nobunaga', 'Shimazaki', NULL, '1988-12-06', 'JaponÃ©s', 'nobunaga_shimazaki.jpg', 'Nobunaga Shimazaki es un actor de voz japonÃ©s reconocido por sus papeles en anime y videojuegos.'),
(199, 'Kana', 'Yuki', NULL, '1987-03-10', 'Japonesa', 'kana_yuki.jpg', 'Kana Yuki es una actriz de voz japonesa conocida por interpretar a Noelle Silva en Black Clover.'),
(200, 'Junichi', 'Suwabe', NULL, '1972-03-29', 'JaponÃ©s', 'junichi_suwabe.jpg', 'Junichi Suwabe es un actor de voz japonÃ©s con una larga trayectoria en anime, conocido por personajes de gran presencia.'),
(201, 'Toshiyuki', 'Morikawa', NULL, '1967-01-26', 'JaponÃ©s', 'toshiyuki_morikawa.jpg', 'Toshiyuki Morikawa es un actor de voz japonÃ©s reconocido por interpretar numerosos personajes importantes en anime.'),
(202, 'Asuka', 'Nishi', NULL, '1988-02-10', 'Japonesa', 'asuka_nishi.jpg', 'Asuka Nishi es una actriz de voz japonesa conocida por su trabajo en series de anime y videojuegos.'),
(203, 'Ayumu', 'Murase', NULL, '1988-12-14', 'JaponÃ©s', 'ayumu_murase.jpg', 'Ayumu Murase es un actor de voz japonÃ©s conocido por sus papeles en Black Clover, Haikyu!! y otros animes.'),
(204, 'Genki', 'Muro', NULL, '1989-07-31', 'JaponÃ©s', 'genki_muro.jpg', 'Genki Muro es un actor de voz japonÃ©s conocido por interpretar a Magna Swing en Black Clover.'),
(205, 'Jun', 'Fukuyama', NULL, '1978-11-26', 'JaponÃ©s', 'jun_fukuyama.jpg', 'Jun Fukuyama es un actor de voz japonÃ©s muy reconocido por sus papeles en anime, doblaje y videojuegos.'),
(206, 'Takahiro', 'Sakurai', NULL, '1974-06-13', 'JaponÃ©s', 'takahiro_sakurai.jpg', 'Takahiro Sakurai es un actor de voz japonÃ©s conocido por interpretar personajes destacados en numerosas series de anime.'),
(207, 'Mayumi', 'Tanaka', NULL, '1955-01-15', 'Japonesa', 'mayumi_tanaka.jpg', 'Mayumi Tanaka es una actriz de voz japonesa muy reconocida por interpretar a Monkey D. Luffy en One Piece.'),
(208, 'Kazuya', 'Nakai', NULL, '1967-11-25', 'JaponÃ©s', 'kazuya_nakai.jpg', 'Kazuya Nakai es un actor de voz japonÃ©s conocido por interpretar a Roronoa Zoro en One Piece.'),
(209, 'Akemi', 'Okamura', NULL, '1969-03-12', 'Japonesa', 'akemi_okamura.jpg', 'Akemi Okamura es una actriz de voz japonesa conocida por dar voz a Nami en One Piece.'),
(210, 'Hiroaki', 'Hirata', NULL, '1963-08-07', 'JaponÃ©s', 'hiroaki_hirata.jpg', 'Hiroaki Hirata es un actor de voz japonÃ©s conocido por interpretar a Sanji en One Piece.'),
(211, 'Ikue', 'Otani', NULL, '1965-08-18', 'Japonesa', 'ikue_otani.jpg', 'Ikue Otani es una actriz de voz japonesa famosa por interpretar a Tony Tony Chopper en One Piece y a Pikachu en PokÃ©mon.'),
(212, 'Yuriko', 'Yamaguchi', NULL, '1965-11-21', 'Japonesa', 'yuriko_yamaguchi.jpg', 'Yuriko Yamaguchi es una actriz de voz japonesa conocida por interpretar a Nico Robin en One Piece.'),
(213, 'Kazuki', 'Yao', NULL, '1959-06-17', 'JaponÃ©s', 'kazuki_yao.jpg', 'Kazuki Yao es un actor de voz japonÃ©s reconocido por interpretar a Franky en One Piece.'),
(214, 'Cho', 'Cho', NULL, '1957-12-15', 'JaponÃ©s', 'cho.jpg', 'Cho es un actor de voz japonÃ©s conocido por interpretar a Brook en One Piece.'),
(215, 'Katsuhisa', 'Hoki', NULL, '1946-10-30', 'JaponÃ©s', 'katsuhisa_hoki.jpg', 'Katsuhisa Hoki es un actor de voz japonÃ©s conocido por interpretar a Jinbe en One Piece.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actor_personaje`
--

CREATE TABLE `actor_personaje` (
  `id_actor` int(11) NOT NULL,
  `id_personaje` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `actor_personaje`
--

INSERT INTO `actor_personaje` (`id_actor`, `id_personaje`) VALUES
(1, 1),
(1, 110),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 7),
(9, 8),
(10, 9),
(10, 38),
(11, 10),
(12, 11),
(13, 12),
(14, 13),
(15, 14),
(16, 15),
(17, 16),
(18, 17),
(19, 18),
(20, 19),
(21, 20),
(22, 21),
(23, 22),
(24, 23),
(25, 24),
(26, 25),
(27, 26),
(28, 27),
(29, 28),
(30, 29),
(31, 30),
(32, 31),
(33, 32),
(34, 33),
(35, 34),
(36, 35),
(36, 111),
(37, 36),
(38, 37),
(39, 39),
(40, 40),
(41, 41),
(42, 42),
(43, 43),
(44, 44),
(45, 45),
(46, 46),
(47, 47),
(48, 48),
(49, 49),
(50, 50),
(51, 51),
(52, 52),
(53, 53),
(54, 54),
(55, 55),
(56, 56),
(57, 57),
(58, 58),
(59, 59),
(60, 60),
(61, 61),
(62, 62),
(63, 63),
(64, 64),
(65, 65),
(66, 66),
(67, 67),
(68, 68),
(69, 69),
(70, 70),
(71, 71),
(72, 72),
(73, 73),
(74, 74),
(75, 75),
(76, 76),
(77, 77),
(78, 78),
(79, 79),
(80, 80),
(81, 81),
(82, 82),
(83, 83),
(84, 84),
(85, 85),
(86, 86),
(87, 87),
(88, 88),
(89, 89),
(90, 90),
(91, 91),
(92, 92),
(93, 93),
(94, 94),
(95, 95),
(96, 96),
(97, 97),
(98, 98),
(99, 99),
(100, 100),
(101, 101),
(102, 102),
(103, 103),
(104, 104),
(105, 105),
(106, 106),
(107, 107),
(108, 108),
(109, 109),
(110, 112),
(111, 113),
(112, 114),
(113, 115),
(114, 116),
(115, 117),
(116, 118),
(117, 119),
(118, 120),
(119, 121),
(120, 122),
(121, 123),
(122, 124),
(123, 125),
(124, 126),
(125, 127),
(126, 128),
(127, 129),
(128, 130),
(129, 131),
(130, 132),
(131, 133),
(132, 134),
(133, 135),
(134, 136),
(135, 137),
(136, 138),
(137, 139),
(138, 140),
(139, 141),
(140, 142),
(141, 143),
(142, 144),
(143, 145),
(144, 146),
(145, 147),
(146, 148),
(147, 149),
(148, 150),
(149, 151),
(149, 161),
(150, 152),
(151, 153),
(152, 154),
(153, 155),
(154, 156),
(155, 157),
(156, 158),
(157, 159),
(158, 160),
(159, 162),
(160, 163),
(161, 164),
(162, 165),
(163, 166),
(164, 167),
(165, 168),
(166, 169),
(167, 170),
(168, 171),
(169, 172),
(169, 184),
(170, 173),
(171, 174),
(172, 175),
(173, 176),
(174, 177),
(175, 178),
(176, 179),
(177, 180),
(178, 181),
(179, 182),
(180, 183),
(181, 185),
(182, 186),
(183, 187),
(184, 188),
(185, 189),
(186, 190),
(187, 191),
(188, 192),
(188, 214),
(189, 193),
(190, 194),
(191, 195),
(192, 196),
(193, 197),
(194, 198),
(195, 199),
(196, 200),
(197, 201),
(198, 202),
(199, 203),
(200, 204),
(201, 205),
(202, 206),
(203, 207),
(204, 208),
(205, 209),
(206, 210),
(207, 211),
(208, 212),
(209, 213),
(210, 215),
(211, 216),
(212, 217),
(213, 218),
(214, 219),
(215, 220);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id_genero` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id_genero`, `nombre`) VALUES
(10, 'AcciÃ³n'),
(16, 'AnimaciÃ³n'),
(23, 'Anime'),
(9, 'ApocalÃ­ptica'),
(15, 'Aventura'),
(13, 'Ciencia ficciÃ³n'),
(12, 'Comedia'),
(5, 'Crimen'),
(3, 'Drama'),
(8, 'Drama adolescente'),
(21, 'Drama familiar'),
(22, 'Drama mÃ©dico'),
(7, 'Drama psicolÃ³gico'),
(1, 'FantasÃ­a'),
(11, 'FantasÃ­a urbana'),
(4, 'Misterio'),
(20, 'Policial'),
(14, 'PostapocalÃ­ptica'),
(18, 'Romance'),
(17, 'Sitcom'),
(19, 'SuperhÃ©roes'),
(6, 'Suspense'),
(2, 'Terror');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personaje`
--

CREATE TABLE `personaje` (
  `id_personaje` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `tipo_personaje` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personaje`
--

INSERT INTO `personaje` (`id_personaje`, `nombre`, `descripcion`, `imagen`, `tipo_personaje`) VALUES
(1, 'Dean Winchester', 'Cazador de criaturas sobrenaturales. Hermano mayor de Sam Winchester.', 'dean_winchester.jpg', 'Protagonista'),
(2, 'Sam Winchester', 'Cazador de criaturas sobrenaturales. Hermano menor de Dean Winchester.', 'sam_winchester.jpg', 'Protagonista'),
(3, 'Castiel', 'Ãngel del cielo que ayuda a los hermanos Winchester.', 'castiel.jpg', 'Principal'),
(4, 'Bobby Singer', 'Cazador veterano y figura paterna para Sam y Dean.', 'bobby_singer.jpg', 'Secundario'),
(5, 'Crowley', 'Demonio poderoso y rey del Infierno.', 'crowley.jpg', 'Villano'),
(6, 'Lucifer', 'ArcÃ¡ngel caÃ­do y uno de los principales antagonistas.', 'lucifer.jpg', 'Villano'),
(7, 'Ruby', 'Demonio que tiene relaciÃ³n con Sam Winchester.', 'ruby.jpg', 'Secundario'),
(8, 'Jack Kline', 'Nefilim, hijo de Lucifer.', 'jack_kline.jpg', 'Principal'),
(9, 'John Winchester', 'Padre de Sam y Dean, cazador de criaturas sobrenaturales.', 'john_winchester.jpg', 'Secundario'),
(10, 'Mary Winchester', 'Madre de Sam y Dean Winchester.', 'mary_winchester.jpg', 'Secundario'),
(11, 'Dexter Morgan', 'Analista forense de la policÃ­a de Miami que lleva una doble vida como asesino en serie siguiendo el cÃ³digo de Harry.', 'dexter_morgan.jpg', 'Protagonista'),
(12, 'Debra Morgan', 'Hermana adoptiva de Dexter y detective de la policÃ­a de Miami.', 'debra_morgan.jpg', 'Principal'),
(13, 'Harry Morgan', 'Padre adoptivo de Dexter y creador del cÃ³digo que guÃ­a sus asesinatos.', 'harry_morgan.jpg', 'Principal'),
(14, 'Rita Bennett', 'Pareja de Dexter durante las primeras temporadas.', 'rita_bennett.jpg', 'Principal'),
(15, 'Angel Batista', 'Detective de homicidios de Miami Metro y compaÃ±ero de Dexter.', 'angel_batista.jpg', 'Principal'),
(16, 'Maria LaGuerta', 'Teniente de Miami Metro, ambiciosa y con gran peso dentro del departamento.', 'maria_laguerta.jpg', 'Principal'),
(17, 'James Doakes', 'Sargento de Miami Metro que sospecha del comportamiento de Dexter.', 'james_doakes.jpg', 'Principal'),
(18, 'Vince Masuka', 'Forense de Miami Metro, compaÃ±ero de laboratorio de Dexter.', 'vince_masuka.jpg', 'Secundario'),
(19, 'Arthur Mitchell', 'Asesino conocido como Trinity Killer.', 'arthur_mitchell.jpg', 'Villano'),
(20, 'Brian Moser', 'Hermano biolÃ³gico de Dexter y asesino conocido como Ice Truck Killer.', 'brian_moser.jpg', 'Villano'),
(21, 'Archie Andrews', 'Estudiante de Riverdale apasionado por la mÃºsica, el deporte y sus amigos.', 'archie_andrews.jpg', 'Protagonista'),
(22, 'Betty Cooper', 'Estudiante inteligente y determinada, interesada en resolver los misterios de Riverdale.', 'betty_cooper.jpg', 'Protagonista'),
(23, 'Veronica Lodge', 'Joven sofisticada que llega a Riverdale desde Nueva York.', 'veronica_lodge.jpg', 'Protagonista'),
(24, 'Jughead Jones', 'Narrador de la historia, escritor y amigo cercano de Archie, Betty y Veronica.', 'jughead_jones.jpg', 'Protagonista'),
(25, 'Cheryl Blossom', 'Miembro de la poderosa familia Blossom, con una personalidad intensa y dominante.', 'cheryl_blossom.jpg', 'Principal'),
(26, 'Kevin Keller', 'Amigo del grupo principal y estudiante de Riverdale High.', 'kevin_keller.jpg', 'Principal'),
(27, 'Toni Topaz', 'Miembro de los Southside Serpents y pareja de Cheryl Blossom.', 'toni_topaz.jpg', 'Principal'),
(28, 'Hiram Lodge', 'Padre de Veronica Lodge, empresario poderoso y manipulador.', 'hiram_lodge.jpg', 'Villano'),
(29, 'Hermione Lodge', 'Madre de Veronica Lodge y figura influyente en Riverdale.', 'hermione_lodge.jpg', 'Principal'),
(30, 'Alice Cooper', 'Madre de Betty Cooper y periodista del pueblo.', 'alice_cooper.jpg', 'Principal'),
(31, 'Rick Grimes', 'Ex sheriff que despierta en medio de un apocalipsis zombi y se convierte en lÃ­der de un grupo de supervivientes.', 'rick_grimes.jpg', 'Protagonista'),
(32, 'Daryl Dixon', 'Superviviente experto en rastreo y combate, conocido por su ballesta y su carÃ¡cter solitario.', 'daryl_dixon.jpg', 'Protagonista'),
(33, 'Michonne', 'Superviviente fuerte y hÃ¡bil con la katana, que acaba formando parte esencial del grupo.', 'michonne.jpg', 'Principal'),
(34, 'Carol Peletier', 'Superviviente que evoluciona de una persona vulnerable a una de las mÃ¡s fuertes del grupo.', 'carol_peletier.jpg', 'Principal'),
(35, 'Glenn Rhee', 'Superviviente rÃ¡pido, valiente y leal, fundamental para el grupo en las primeras temporadas.', 'glenn_rhee.jpg', 'Principal'),
(36, 'Maggie Greene', 'Superviviente de la granja Greene que se convierte en una lÃ­der importante.', 'maggie_greene.jpg', 'Principal'),
(37, 'Carl Grimes', 'Hijo de Rick Grimes, crece dentro del apocalipsis y madura entre la violencia y la supervivencia.', 'carl_grimes.jpg', 'Principal'),
(38, 'Negan Smith', 'LÃ­der de los Salvadores, carismÃ¡tico, brutal y uno de los antagonistas mÃ¡s importantes.', 'negan_smith.jpg', 'Villano'),
(39, 'Shane Walsh', 'Mejor amigo de Rick y antiguo compaÃ±ero de policÃ­a, marcado por sus conflictos internos.', 'shane_walsh.jpg', 'Villano'),
(40, 'Hershel Greene', 'Granjero, padre de Maggie y figura moral para el grupo.', 'hershel_greene.jpg', 'Secundario'),
(41, 'Lucifer Morningstar', 'Ãngel caÃ­do y antiguo seÃ±or del Infierno que decide vivir en Los Ãngeles y colaborar con la policÃ­a.', 'lucifer_morningstar.jpg', 'Protagonista'),
(42, 'Chloe Decker', 'Detective de homicidios de Los Ãngeles que trabaja junto a Lucifer en varios casos criminales.', 'chloe_decker.jpg', 'Protagonista'),
(43, 'Mazikeen', 'Demonio leal a Lucifer, experta en combate y con una personalidad fuerte e independiente.', 'mazikeen.jpg', 'Principal'),
(44, 'Amenadiel', 'Ãngel y hermano de Lucifer, enviado inicialmente para hacerle regresar al Infierno.', 'amenadiel.jpg', 'Principal'),
(45, 'Linda Martin', 'PsicÃ³loga de Lucifer, que termina conociendo su verdadera naturaleza y formando parte de su cÃ­rculo cercano.', 'linda_martin.jpg', 'Principal'),
(46, 'Dan Espinoza', 'Detective de Los Ãngeles, exmarido de Chloe y compaÃ±ero dentro del departamento de policÃ­a.', 'dan_espinoza.jpg', 'Principal'),
(47, 'Ella Lopez', 'Forense del LAPD, optimista, inteligente y con una gran fe personal.', 'ella_lopez.jpg', 'Principal'),
(48, 'Trixie Espinoza', 'Hija de Chloe y Dan, con una relaciÃ³n cercana y divertida con Lucifer y Maze.', 'trixie_espinoza.jpg', 'Secundario'),
(49, 'Charlotte Richards', 'Abogada que se ve envuelta en acontecimientos sobrenaturales relacionados con Lucifer y su familia.', 'charlotte_richards.jpg', 'Principal'),
(50, 'Marcus Pierce', 'Teniente de policÃ­a con un pasado sobrenatural oculto.', 'marcus_pierce.jpg', 'Villano'),
(51, 'Clarke Griffin', 'Joven enviada a la Tierra que se convierte en una de las lÃ­deres principales del grupo.', 'clarke_griffin.jpg', 'Protagonista'),
(52, 'Bellamy Blake', 'Superviviente impulsivo y protector que evoluciona hasta convertirse en un lÃ­der importante.', 'bellamy_blake.jpg', 'Protagonista'),
(53, 'Octavia Blake', 'Hermana de Bellamy, criada en secreto en el Arca y marcada por su evoluciÃ³n como guerrera.', 'octavia_blake.jpg', 'Principal'),
(54, 'Raven Reyes', 'MecÃ¡nica e ingeniera brillante, fundamental para la supervivencia del grupo.', 'raven_reyes.jpg', 'Principal'),
(55, 'John Murphy', 'Superviviente conflictivo e impredecible que evoluciona a lo largo de la serie.', 'john_murphy.jpg', 'Principal'),
(56, 'Lexa', 'Comandante de los clanes terrestres y una de las lÃ­deres mÃ¡s influyentes de la serie.', 'lexa.jpg', 'Principal'),
(57, 'Abby Griffin', 'MÃ©dica del Arca y madre de Clarke, con gran peso en las decisiones de supervivencia.', 'abby_griffin.jpg', 'Principal'),
(58, 'Marcus Kane', 'Miembro del consejo del Arca que evoluciona hacia una figura mÃ¡s Ã©tica y diplomÃ¡tica.', 'marcus_kane.jpg', 'Principal'),
(59, 'Monty Green', 'Joven inteligente y leal, experto en tecnologÃ­a y supervivencia.', 'monty_green.jpg', 'Principal'),
(60, 'Jasper Jordan', 'Amigo de Monty y uno de los primeros jÃ³venes enviados a la Tierra.', 'jasper_jordan.jpg', 'Secundario'),
(61, 'Walter White', 'Profesor de quÃ­mica que, tras ser diagnosticado con cÃ¡ncer, entra en el mundo del narcotrÃ¡fico bajo el alias de Heisenberg.', 'walter_white.jpg', 'Protagonista'),
(62, 'Jesse Pinkman', 'Antiguo alumno de Walter White y socio en la fabricaciÃ³n de metanfetamina.', 'jesse_pinkman.jpg', 'Protagonista'),
(63, 'Skyler White', 'Esposa de Walter White, que poco a poco descubre la doble vida de su marido.', 'skyler_white.jpg', 'Principal'),
(64, 'Hank Schrader', 'Agente de la DEA y cuÃ±ado de Walter, dedicado a investigar el trÃ¡fico de drogas en Albuquerque.', 'hank_schrader.jpg', 'Principal'),
(65, 'Gustavo Fring', 'Empresario y narcotraficante que opera bajo una imagen pÃºblica respetable.', 'gustavo_fring.jpg', 'Villano'),
(66, 'Saul Goodman', 'Abogado criminalista extravagante que ayuda a Walter y Jesse en sus negocios ilegales.', 'saul_goodman.jpg', 'Principal'),
(67, 'Mike Ehrmantraut', 'Ex policÃ­a y hombre de confianza de Gustavo Fring, experto en seguridad y trabajos delicados.', 'mike_ehrmantraut.jpg', 'Principal'),
(68, 'Marie Schrader', 'Hermana de Skyler y esposa de Hank, muy presente en la vida familiar de los White.', 'marie_schrader.jpg', 'Secundario'),
(69, 'Walter White Jr.', 'Hijo de Walter y Skyler White.', 'walter_white_jr.jpg', 'Secundario'),
(70, 'Todd Alquist', 'Joven criminal aparentemente tranquilo, pero extremadamente peligroso.', 'todd_alquist.jpg', 'Villano'),
(71, 'Eleven', 'NiÃ±a con habilidades telequinÃ©ticas que escapa de un laboratorio secreto y se une al grupo de Hawkins.', 'eleven.jpg', 'Protagonista'),
(72, 'Mike Wheeler', 'Uno de los lÃ­deres del grupo de amigos, valiente y muy unido a Eleven.', 'mike_wheeler.jpg', 'Protagonista'),
(73, 'Dustin Henderson', 'Miembro del grupo, inteligente, divertido y muy hÃ¡bil resolviendo problemas.', 'dustin_henderson.jpg', 'Principal'),
(74, 'Lucas Sinclair', 'Amigo de Mike, Dustin y Will, con carÃ¡cter prudente y decidido.', 'lucas_sinclair.jpg', 'Principal'),
(75, 'Will Byers', 'NiÃ±o cuya desapariciÃ³n desencadena los primeros acontecimientos sobrenaturales en Hawkins.', 'will_byers.jpg', 'Principal'),
(76, 'Jim Hopper', 'Jefe de policÃ­a de Hawkins, marcado por su pasado y protector con Eleven.', 'jim_hopper.jpg', 'Principal'),
(77, 'Joyce Byers', 'Madre de Will y Jonathan, decidida a descubrir la verdad detrÃ¡s de los sucesos de Hawkins.', 'joyce_byers.jpg', 'Principal'),
(78, 'Nancy Wheeler', 'Hermana de Mike, estudiante decidida que investiga los misterios de Hawkins.', 'nancy_wheeler.jpg', 'Principal'),
(79, 'Steve Harrington', 'Estudiante popular que evoluciona hasta convertirse en un aliado clave del grupo.', 'steve_harrington.jpg', 'Principal'),
(80, 'Vecna', 'Entidad poderosa vinculada al Mundo del RevÃ©s y una de las mayores amenazas de Hawkins.', 'vecna.jpg', 'Villano'),
(81, 'Rick Sanchez', 'CientÃ­fico extremadamente inteligente, excÃ©ntrico y alcohÃ³lico que viaja entre dimensiones.', 'rick_sanchez.jpg', 'Protagonista'),
(82, 'Morty Smith', 'Nieto de Rick, inseguro pero con buen corazÃ³n, que le acompaÃ±a en sus aventuras.', 'morty_smith.jpg', 'Protagonista'),
(83, 'Summer Smith', 'Hermana mayor de Morty, sarcÃ¡stica y cada vez mÃ¡s involucrada en las aventuras familiares.', 'summer_smith.jpg', 'Principal'),
(84, 'Beth Smith', 'Madre de Morty y Summer, cirujana veterinaria e hija de Rick.', 'beth_smith.jpg', 'Principal'),
(85, 'Jerry Smith', 'Padre de Morty y Summer, torpe e inseguro, frecuentemente ignorado por Rick.', 'jerry_smith.jpg', 'Principal'),
(86, 'Birdperson', 'Aliado y amigo cercano de Rick, guerrero intergalÃ¡ctico.', 'birdperson.jpg', 'Secundario'),
(87, 'Mr. Meeseeks', 'Criatura azul creada para cumplir una Ãºnica tarea antes de desaparecer.', 'mr_meeseeks.jpg', 'Secundario'),
(88, 'Evil Morty', 'VersiÃ³n alternativa de Morty extremadamente inteligente y manipuladora.', 'evil_morty.jpg', 'Villano'),
(89, 'Squanchy', 'Extraterrestre felino y amigo de Rick conocido por su personalidad salvaje.', 'squanchy.jpg', 'Secundario'),
(90, 'Unity', 'Entidad colectiva capaz de controlar mÃºltiples cuerpos y antigua pareja de Rick.', 'unity.jpg', 'Secundario'),
(91, 'Rachel Green', 'Joven acostumbrada a una vida acomodada que comienza una nueva etapa independiente en Nueva York.', 'rachel_green.jpg', 'Protagonista'),
(92, 'Ross Geller', 'PaleontÃ³logo apasionado por los dinosaurios y hermano de Monica.', 'ross_geller.jpg', 'Protagonista'),
(93, 'Monica Geller', 'Chef perfeccionista y organizada, pieza clave del grupo de amigos.', 'monica_geller.jpg', 'Protagonista'),
(94, 'Chandler Bing', 'Amigo sarcÃ¡stico y divertido conocido por su humor constante.', 'chandler_bing.jpg', 'Protagonista'),
(95, 'Joey Tribbiani', 'Actor carismÃ¡tico y despreocupado con gran pasiÃ³n por la comida y la interpretaciÃ³n.', 'joey_tribbiani.jpg', 'Protagonista'),
(96, 'Phoebe Buffay', 'MÃºsico excÃ©ntrica y espiritual con una personalidad Ãºnica.', 'phoebe_buffay.jpg', 'Protagonista'),
(97, 'Gunther', 'Empleado de Central Perk enamorado de Rachel.', 'gunther.jpg', 'Secundario'),
(98, 'Janice Hosenstein', 'Ex pareja de Chandler reconocida por su personalidad extravagante.', 'janice_hosenstein.jpg', 'Secundario'),
(99, 'Mike Hannigan', 'MÃºsico y pareja de Phoebe en las Ãºltimas temporadas.', 'mike_hannigan.jpg', 'Principal'),
(100, 'Richard Burke', 'OftalmÃ³logo y antigua pareja de Monica.', 'richard_burke.jpg', 'Secundario'),
(101, 'Billy Butcher', 'LÃ­der de The Boys, decidido a destruir a los superhÃ©roes corruptos y especialmente a Homelander.', 'billy_butcher.jpg', 'Protagonista'),
(102, 'Hughie Campbell', 'Joven que se une a The Boys tras sufrir una tragedia causada por un superhÃ©roe.', 'hughie_campbell.jpg', 'Protagonista'),
(103, 'Homelander', 'LÃ­der de Los Siete, poderoso, carismÃ¡tico y extremadamente peligroso.', 'homelander.jpg', 'Villano'),
(104, 'Starlight', 'SuperheroÃ­na con fuertes valores morales que descubre la corrupciÃ³n dentro de Los Siete.', 'starlight.jpg', 'Principal'),
(105, 'Mothers Milk', 'Miembro estratÃ©gico y disciplinado de The Boys.', 'mothers_milk.jpg', 'Principal'),
(106, 'Frenchie', 'Experto en armas y tecnologÃ­a dentro de The Boys.', 'frenchie.jpg', 'Principal'),
(107, 'Kimiko Miyashiro', 'Mujer con habilidades sobrehumanas y pasado traumÃ¡tico que se une al grupo.', 'kimiko_miyashiro.jpg', 'Principal'),
(108, 'A-Train', 'SuperhÃ©roe velocista miembro de Los Siete.', 'a_train.jpg', 'Principal'),
(109, 'Queen Maeve', 'SuperheroÃ­na veterana que comienza a cuestionar a Vought y a Homelander.', 'queen_maeve.jpg', 'Principal'),
(110, 'Soldier Boy', 'Antiguo hÃ©roe legendario con enorme poder y una personalidad violenta.', 'soldier_boy.jpg', 'Villano'),
(111, 'Mark Grayson', 'Joven que desarrolla poderes viltrumitas y adopta la identidad de Invincible.', 'mark_grayson.jpg', 'Protagonista'),
(112, 'Nolan Grayson', 'Padre de Mark y hÃ©roe conocido como Omni-Man, considerado el protector mÃ¡s poderoso de la Tierra.', 'nolan_grayson.jpg', 'Principal'),
(113, 'Debbie Grayson', 'Madre de Mark y figura emocional clave dentro de la familia Grayson.', 'debbie_grayson.jpg', 'Principal'),
(114, 'Atom Eve', 'HeroÃ­na capaz de manipular materia y una de las aliadas mÃ¡s cercanas de Mark.', 'atom_eve.jpg', 'Principal'),
(115, 'Allen the Alien', 'Extraterrestre guerrero que se convierte en aliado de Mark.', 'allen_the_alien.jpg', 'Secundario'),
(116, 'Cecil Stedman', 'Director de la Agencia Global de Defensa encargado de proteger la Tierra.', 'cecil_stedman.jpg', 'Principal'),
(117, 'Robot', 'LÃ­der estratÃ©gico de los Guardianes de la Tierra con una personalidad reservada.', 'robot.jpg', 'Principal'),
(118, 'Rex Splode', 'SuperhÃ©roe impulsivo con habilidades explosivas.', 'rex_splode.jpg', 'Secundario'),
(119, 'Immortal', 'Poderoso hÃ©roe veterano y lÃ­der de los Guardianes de la Tierra.', 'immortal.jpg', 'Secundario'),
(120, 'Angstrom Levy', 'CientÃ­fico capaz de viajar entre dimensiones y uno de los enemigos mÃ¡s peligrosos de Mark.', 'angstrom_levy.jpg', 'Villano'),
(121, 'Jake Peralta', 'Detective talentoso e inmaduro conocido por su humor y creatividad resolviendo casos.', 'jake_peralta.jpg', 'Protagonista'),
(122, 'Amy Santiago', 'Detective extremadamente organizada, competitiva y apasionada por su trabajo.', 'amy_santiago.jpg', 'Principal'),
(123, 'Raymond Holt', 'CapitÃ¡n serio, inteligente y disciplinado de la comisarÃ­a.', 'raymond_holt.jpg', 'Principal'),
(124, 'Rosa Diaz', 'Detective reservada y temida por su personalidad dura.', 'rosa_diaz.jpg', 'Principal'),
(125, 'Charles Boyle', 'Detective leal y mejor amigo de Jake, apasionado por la cocina y su trabajo.', 'charles_boyle.jpg', 'Principal'),
(126, 'Terry Jeffords', 'Sargento fuerte y responsable que protege a su equipo y a su familia.', 'terry_jeffords.jpg', 'Principal'),
(127, 'Gina Linetti', 'Administrativa excÃ©ntrica y segura de sÃ­ misma con una personalidad Ãºnica.', 'gina_linetti.jpg', 'Principal'),
(128, 'Norm Scully', 'Detective veterano relajado y obsesionado con la comida.', 'norm_scully.jpg', 'Secundario'),
(129, 'Michael Hitchcock', 'CompaÃ±ero inseparable de Scully, conocido por su comportamiento extraÃ±o y perezoso.', 'michael_hitchcock.jpg', 'Secundario'),
(130, 'Doug Judy', 'Delincuente carismÃ¡tico conocido como el Bandido del Pontiac y aliado ocasional de Jake.', 'doug_judy.jpg', 'Secundario'),
(131, 'Jay Pritchett', 'Empresario veterano y patriarca de la familia Pritchett.', 'jay_pritchett.jpg', 'Protagonista'),
(132, 'Gloria Delgado-Pritchett', 'Esposa de Jay, carismÃ¡tica y muy protectora con su familia.', 'gloria_delgado_pritchett.jpg', 'Principal'),
(133, 'Claire Dunphy', 'Hija de Jay, madre organizada y competitiva.', 'claire_dunphy.jpg', 'Principal'),
(134, 'Phil Dunphy', 'Marido de Claire, agente inmobiliario optimista y divertido.', 'phil_dunphy.jpg', 'Principal'),
(135, 'Mitchell Pritchett', 'Abogado perfeccionista e hijo de Jay.', 'mitchell_pritchett.jpg', 'Principal'),
(136, 'Cameron Tucker', 'Pareja de Mitchell, expresivo y apasionado por el teatro y la mÃºsica.', 'cameron_tucker.jpg', 'Principal'),
(137, 'Haley Dunphy', 'Hija mayor de Claire y Phil, popular y despreocupada.', 'haley_dunphy.jpg', 'Principal'),
(138, 'Alex Dunphy', 'Hija inteligente y aplicada de Claire y Phil.', 'alex_dunphy.jpg', 'Principal'),
(139, 'Luke Dunphy', 'Hijo menor de Claire y Phil, inocente y muy creativo.', 'luke_dunphy.jpg', 'Secundario'),
(140, 'Manny Delgado', 'Hijo de Gloria, maduro y sensible para su edad.', 'manny_delgado.jpg', 'Principal'),
(141, 'Sheldon Cooper', 'FÃ­sico teÃ³rico brillante, extremadamente lÃ³gico y con grandes dificultades sociales.', 'sheldon_cooper.jpg', 'Protagonista'),
(142, 'Leonard Hofstadter', 'FÃ­sico experimental, compaÃ±ero de piso de Sheldon y uno de los miembros principales del grupo.', 'leonard_hofstadter.jpg', 'Protagonista'),
(143, 'Penny', 'Vecina de Sheldon y Leonard, aspirante a actriz y camarera al inicio de la serie.', 'penny.jpg', 'Protagonista'),
(144, 'Howard Wolowitz', 'Ingeniero aeroespacial con una personalidad extravagante y gran confianza en sÃ­ mismo.', 'howard_wolowitz.jpg', 'Principal'),
(145, 'Raj Koothrappali', 'AstrofÃ­sico de origen indio, tÃ­mido y sensible, con dificultades para hablar con mujeres al inicio.', 'raj_koothrappali.jpg', 'Principal'),
(146, 'Amy Farrah Fowler', 'NeurocientÃ­fica inteligente y peculiar que desarrolla una relaciÃ³n con Sheldon.', 'amy_farrah_fowler.jpg', 'Principal'),
(147, 'Bernadette Rostenkowski', 'MicrobiÃ³loga de carÃ¡cter fuerte y pareja de Howard.', 'bernadette_rostenkowski.jpg', 'Principal'),
(148, 'Stuart Bloom', 'DueÃ±o de una tienda de cÃ³mics frecuentada por el grupo.', 'stuart_bloom.jpg', 'Secundario'),
(149, 'Leslie Winkle', 'FÃ­sica experimental compaÃ±era de Leonard y rival intelectual de Sheldon.', 'leslie_winkle.jpg', 'Secundario'),
(150, 'Wil Wheaton', 'VersiÃ³n ficticia del actor Wil Wheaton, inicialmente rival de Sheldon.', 'wil_wheaton.jpg', 'Secundario'),
(151, 'Shaun Murphy', 'Joven cirujano con autismo y sÃ­ndrome de Savant que trabaja en el hospital San Jose St. Bonaventure.', 'shaun_murphy.jpg', 'Protagonista'),
(152, 'Aaron Glassman', 'MÃ©dico veterano y mentor de Shaun Murphy.', 'aaron_glassman.jpg', 'Principal'),
(153, 'Lea Dilallo', 'Vecina, amiga y pareja de Shaun a lo largo de la serie.', 'lea_dilallo.jpg', 'Principal'),
(154, 'Claire Browne', 'Cirujana residente empÃ¡tica y compaÃ±era cercana de Shaun.', 'claire_browne.jpg', 'Principal'),
(155, 'Neil Melendez', 'Cirujano cardiotorÃ¡cico exigente y supervisor de los residentes.', 'neil_melendez.jpg', 'Principal'),
(156, 'Morgan Reznick', 'Residente competitiva y ambiciosa con gran capacidad mÃ©dica.', 'morgan_reznick.jpg', 'Principal'),
(157, 'Alex Park', 'Ex policÃ­a convertido en mÃ©dico residente.', 'alex_park.jpg', 'Principal'),
(158, 'Audrey Lim', 'Cirujana y jefa del departamento quirÃºrgico del hospital.', 'audrey_lim.jpg', 'Principal'),
(159, 'Marcus Andrews', 'Cirujano y directivo del hospital con gran ambiciÃ³n profesional.', 'marcus_andrews.jpg', 'Principal'),
(160, 'Asher Wolke', 'Residente de cirugÃ­a con una personalidad directa y sensible.', 'asher_wolke.jpg', 'Secundario'),
(161, 'Norman Bates', 'Joven introvertido y emocionalmente inestable que desarrolla una peligrosa dependencia hacia su madre.', 'norman_bates.jpg', 'Protagonista'),
(162, 'Norma Bates', 'Madre protectora y compleja de Norman, decidida a mantener a su familia unida.', 'norma_bates.jpg', 'Protagonista'),
(163, 'Dylan Massett', 'Hermano mayor de Norman que intenta encontrar su lugar lejos de los conflictos familiares.', 'dylan_massett.jpg', 'Principal'),
(164, 'Emma Decody', 'Amiga cercana de Norman que sufre fibrosis quÃ­stica.', 'emma_decody.jpg', 'Principal'),
(165, 'Alex Romero', 'Sheriff del pueblo de White Pine Bay, involucrado en la vida de los Bates.', 'alex_romero.jpg', 'Principal'),
(166, 'Bradley Martin', 'CompaÃ±era de instituto de Norman con una vida familiar complicada.', 'bradley_martin.jpg', 'Secundario'),
(167, 'Caleb Calhoun', 'Hermano de Norma con un pasado oscuro y conflictivo.', 'caleb_calhoun.jpg', 'Secundario'),
(168, 'Zane Carpenter', 'Peligroso narcotraficante relacionado con Dylan.', 'zane_carpenter.jpg', 'Villano'),
(169, 'Chick Hogan', 'Personaje excÃ©ntrico y manipulador que se involucra con los Bates.', 'chick_hogan.jpg', 'Secundario'),
(170, 'Sam Loomis', 'Marido de Norma cuya relaciÃ³n genera tensiÃ³n y problemas.', 'sam_loomis.jpg', 'Secundario'),
(171, 'Naruto Uzumaki', 'Joven ninja de la Aldea Oculta de la Hoja que sueÃ±a con convertirse en Hokage.', 'naruto_uzumaki.jpg', 'Protagonista'),
(172, 'Sasuke Uchiha', 'Ãšltimo superviviente del clan Uchiha, marcado por la venganza contra su hermano Itachi.', 'sasuke_uchiha.jpg', 'Protagonista'),
(173, 'Sakura Haruno', 'Ninja del Equipo 7, inteligente y con gran evoluciÃ³n mÃ©dica y de combate.', 'sakura_haruno.jpg', 'Principal'),
(174, 'Kakashi Hatake', 'Maestro del Equipo 7, conocido como el ninja copia por su Sharingan.', 'kakashi_hatake.jpg', 'Principal'),
(175, 'Itachi Uchiha', 'Hermano mayor de Sasuke y miembro de Akatsuki, con un pasado complejo.', 'itachi_uchiha.jpg', 'Principal'),
(176, 'Gaara', 'Ninja de la Aldea de la Arena que porta al Shukaku en su interior.', 'gaara.jpg', 'Principal'),
(177, 'Hinata Hyuga', 'Ninja del clan Hyuga, tÃ­mida pero valiente, con gran admiraciÃ³n por Naruto.', 'hinata_hyuga.jpg', 'Principal'),
(178, 'Jiraiya', 'Uno de los tres sannin legendarios y maestro de Naruto.', 'jiraiya.jpg', 'Principal'),
(179, 'Orochimaru', 'Antiguo ninja de la Hoja obsesionado con la inmortalidad y los jutsus prohibidos.', 'orochimaru.jpg', 'Villano'),
(180, 'Tsunade', 'Una de los tres sannin legendarios y experta ninja mÃ©dica.', 'tsunade.jpg', 'Principal'),
(181, 'Ichigo Kurosaki', 'Joven con la capacidad de ver espÃ­ritus que obtiene poderes de shinigami y protege a los vivos de amenazas sobrenaturales.', 'ichigo_kurosaki.jpg', 'Protagonista'),
(182, 'Rukia Kuchiki', 'Shinigami de la Sociedad de Almas que entrega sus poderes a Ichigo y cambia su destino.', 'rukia_kuchiki.jpg', 'Protagonista'),
(183, 'Orihime Inoue', 'CompaÃ±era de Ichigo con habilidades espirituales defensivas y curativas.', 'orihime_inoue.jpg', 'Principal'),
(184, 'Uryu Ishida', 'Quincy y compaÃ±ero de Ichigo, inicialmente rival de los shinigami.', 'uryu_ishida.jpg', 'Principal'),
(185, 'Renji Abarai', 'Shinigami del Gotei 13 y amigo de la infancia de Rukia.', 'renji_abarai.jpg', 'Principal'),
(186, 'Byakuya Kuchiki', 'CapitÃ¡n del Gotei 13 y hermano adoptivo de Rukia, serio y disciplinado.', 'byakuya_kuchiki.jpg', 'Principal'),
(187, 'Sosuke Aizen', 'Antiguo capitÃ¡n del Gotei 13 que se convierte en uno de los mayores enemigos de la Sociedad de Almas.', 'sosuke_aizen.jpg', 'Villano'),
(188, 'Kisuke Urahara', 'Ex capitÃ¡n shinigami y dueÃ±o de una tienda en el mundo humano, experto en tecnologÃ­a espiritual.', 'kisuke_urahara.jpg', 'Principal'),
(189, 'Yasutora Sado', 'Amigo de Ichigo conocido como Chad, con una gran fuerza fÃ­sica y poderes espirituales.', 'yasutora_sado.jpg', 'Principal'),
(190, 'Toshiro Hitsugaya', 'Joven capitÃ¡n del Gotei 13 con gran dominio del hielo.', 'toshiro_hitsugaya.jpg', 'Principal'),
(191, 'Light Yagami', 'Estudiante brillante que encuentra la Death Note y decide usarla para crear un nuevo mundo bajo el alias de Kira.', 'light_yagami.jpg', 'Protagonista'),
(192, 'L Lawliet', 'Detective mundialmente famoso que investiga el caso Kira mediante deducciÃ³n, lÃ³gica y estrategias poco convencionales.', 'l_lawliet.jpg', 'Protagonista'),
(193, 'Ryuk', 'Shinigami que deja caer la Death Note en el mundo humano por aburrimiento y observa las acciones de Light.', 'ryuk.jpg', 'Principal'),
(194, 'Misa Amane', 'Modelo y actriz que obtiene una Death Note y se convierte en una aliada obsesionada con Kira.', 'misa_amane.jpg', 'Principal'),
(195, 'Near', 'Sucesor de L y miembro de la SPK, con una mente analÃ­tica y frÃ­a.', 'near.jpg', 'Principal'),
(196, 'Mello', 'Otro sucesor potencial de L, mÃ¡s impulsivo y dispuesto a usar mÃ©todos extremos.', 'mello.jpg', 'Principal'),
(197, 'Soichiro Yagami', 'Padre de Light y jefe del equipo japonÃ©s que investiga el caso Kira.', 'soichiro_yagami.jpg', 'Principal'),
(198, 'Touta Matsuda', 'Miembro joven del equipo de investigaciÃ³n, impulsivo pero leal.', 'touta_matsuda.jpg', 'Secundario'),
(199, 'Teru Mikami', 'Fiscal fanÃ¡tico de Kira que se convierte en uno de sus seguidores mÃ¡s importantes.', 'teru_mikami.jpg', 'Villano'),
(200, 'Rem', 'Shinigami vinculada a Misa Amane que desarrolla una fuerte preocupaciÃ³n por su bienestar.', 'rem.jpg', 'Principal'),
(201, 'Asta', 'Joven huÃ©rfano sin poder mÃ¡gico que compensa su falta de magia con fuerza fÃ­sica y una enorme determinaciÃ³n.', 'asta.jpg', 'Protagonista'),
(202, 'Yuno', 'Amigo y rival de Asta, un prodigio mÃ¡gico con gran talento y aspiraciones de convertirse en Rey Mago.', 'yuno.jpg', 'Protagonista'),
(203, 'Noelle Silva', 'Noble del Reino del TrÃ©bol que lucha por controlar su enorme poder mÃ¡gico.', 'noelle_silva.jpg', 'Principal'),
(204, 'Yami Sukehiro', 'CapitÃ¡n de los Toros Negros, fuerte, directo y con un gran sentido de la lealtad.', 'yami_sukehiro.jpg', 'Principal'),
(205, 'Julius Novachrono', 'Rey Mago del Reino del TrÃ©bol, admirado por su poder y curiosidad hacia la magia.', 'julius_novachrono.jpg', 'Principal'),
(206, 'Mimosa Vermillion', 'Caballera mÃ¡gica noble especializada en magia de curaciÃ³n y apoyo.', 'mimosa_vermillion.jpg', 'Principal'),
(207, 'Luck Voltia', 'Miembro de los Toros Negros obsesionado con pelear contra rivales fuertes.', 'luck_voltia.jpg', 'Secundario'),
(208, 'Magna Swing', 'Caballero mÃ¡gico de los Toros Negros con una personalidad ruda y leal.', 'magna_swing.jpg', 'Secundario'),
(209, 'Finral Roulacase', 'Miembro de los Toros Negros especializado en magia espacial.', 'finral_roulacase.jpg', 'Secundario'),
(210, 'Licht', 'LÃ­der de los elfos y figura central en los conflictos del pasado del Reino del TrÃ©bol.', 'licht.jpg', 'Villano'),
(211, 'Monkey D. Luffy', 'Joven pirata con cuerpo de goma que sueÃ±a con encontrar el One Piece y convertirse en Rey de los Piratas.', 'monkey_d_luffy.jpg', 'Protagonista'),
(212, 'Roronoa Zoro', 'EspadachÃ­n de los Sombrero de Paja que aspira a convertirse en el mejor espadachÃ­n del mundo.', 'roronoa_zoro.jpg', 'Principal'),
(213, 'Nami', 'Navegante de los Sombrero de Paja, experta en cartografÃ­a y clima.', 'nami.jpg', 'Principal'),
(214, 'Usopp', 'Francotirador del grupo, creativo, mentiroso y valiente cuando mÃ¡s importa.', 'usopp.jpg', 'Principal'),
(215, 'Sanji', 'Cocinero de la tripulaciÃ³n y experto luchador que usa principalmente sus piernas.', 'sanji.jpg', 'Principal'),
(216, 'Tony Tony Chopper', 'Reno mÃ©dico que obtuvo forma humana tras comer una fruta del diablo.', 'tony_tony_chopper.jpg', 'Principal'),
(217, 'Nico Robin', 'ArqueÃ³loga perseguida por el Gobierno Mundial debido a su capacidad para leer poneglyphs.', 'nico_robin.jpg', 'Principal'),
(218, 'Franky', 'Cyborg y carpintero naval de los Sombrero de Paja.', 'franky.jpg', 'Principal'),
(219, 'Brook', 'MÃºsico esqueleto de la tripulaciÃ³n que volviÃ³ a la vida gracias a una fruta del diablo.', 'brook.jpg', 'Principal'),
(220, 'Jinbe', 'Gyojin experto en karate gyojin y timonel de los Sombrero de Paja.', 'jinbe.jpg', 'Principal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resena`
--

CREATE TABLE `resena` (
  `id_resena` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_serie` int(11) NOT NULL,
  `puntuacion` decimal(2,1) DEFAULT NULL,
  `comentario` text DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `serie`
--

CREATE TABLE `serie` (
  `id_serie` int(11) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `sinopsis` text DEFAULT NULL,
  `fecha_estreno` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `temporadas` int(11) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `pais_origen` varchar(100) DEFAULT NULL,
  `idioma_original` varchar(100) DEFAULT NULL,
  `portada` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `puntuacion_media` decimal(3,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `serie`
--

INSERT INTO `serie` (`id_serie`, `titulo`, `sinopsis`, `fecha_estreno`, `fecha_fin`, `temporadas`, `estado`, `pais_origen`, `idioma_original`, `portada`, `banner`, `puntuacion_media`) VALUES
(1, 'Supernatural', 'Dos hermanos recorren Estados Unidos cazando demonios, fantasmas, monstruos y otras criaturas sobrenaturales.', '2005-09-13', '2020-11-19', 15, 'Finalizada', 'Estados Unidos', 'InglÃ©s', 'supernatural_portada.jpg', 'supernatural_banner.jpg', 9.0),
(2, 'Dexter', 'Dexter Morgan trabaja como analista forense especializado en sangre en Miami, mientras oculta una doble vida como asesino en serie que sigue un cÃ³digo moral.', '2006-10-01', '2013-09-22', 8, 'Finalizada', 'Estados Unidos', 'InglÃ©s', 'dexter_portada.jpg', 'dexter_banner.jpg', 9.0),
(3, 'Riverdale', 'Un grupo de adolescentes del pueblo de Riverdale se ve envuelto en misterios, secretos familiares, crÃ­menes y dramas personales.', '2017-01-26', '2023-08-23', 7, 'Finalizada', 'Estados Unidos', 'InglÃ©s', 'riverdale_portada.jpg', 'riverdale_banner.jpg', 7.0),
(4, 'The Walking Dead', 'Un grupo de supervivientes intenta mantenerse con vida en un mundo devastado por un apocalipsis zombi, enfrentÃ¡ndose tanto a los caminantes como a otros humanos.', '2010-10-31', '2022-11-20', 11, 'Finalizada', 'Estados Unidos', 'InglÃ©s', 'the_walking_dead_portada.jpg', 'the_walking_dead_banner.jpg', 8.5),
(5, 'Lucifer', 'Lucifer Morningstar, aburrido de su vida en el Infierno, abandona su trono y se instala en Los Ãngeles, donde dirige un club nocturno y colabora con la policÃ­a resolviendo crÃ­menes.', '2016-01-25', '2021-09-10', 6, 'Finalizada', 'Estados Unidos', 'InglÃ©s', 'lucifer_portada.jpg', 'lucifer_banner.jpg', 8.3),
(6, 'The 100', 'Tras un apocalipsis nuclear, un grupo de jÃ³venes es enviado desde una estaciÃ³n espacial a la Tierra para comprobar si el planeta vuelve a ser habitable.', '2014-03-19', '2020-09-30', 7, 'Finalizada', 'Estados Unidos', 'InglÃ©s', 'the_100_portada.jpg', 'the_100_banner.jpg', 8.0),
(7, 'Breaking Bad', 'Un profesor de quÃ­mica diagnosticado con cÃ¡ncer comienza a fabricar metanfetamina junto a un antiguo alumno para asegurar el futuro econÃ³mico de su familia.', '2008-01-20', '2013-09-29', 5, 'Finalizada', 'Estados Unidos', 'InglÃ©s', 'breaking_bad_portada.jpg', 'breaking_bad_banner.jpg', 9.5),
(8, 'Stranger Things', 'Un grupo de niÃ±os de Hawkins se enfrenta a desapariciones, experimentos secretos y amenazas sobrenaturales conectadas con una dimensiÃ³n paralela.', '2016-07-15', NULL, 5, 'En emisiÃ³n', 'Estados Unidos', 'InglÃ©s', 'stranger_things_portada.jpg', 'stranger_things_banner.jpg', 8.7),
(9, 'Rick and Morty', 'Rick SÃ¡nchez, un cientÃ­fico brillante y alcohÃ³lico, arrastra a su nieto Morty a peligrosas aventuras interdimensionales por todo el universo.', '2013-12-02', NULL, 7, 'En emisiÃ³n', 'Estados Unidos', 'InglÃ©s', 'rick_and_morty_portada.jpg', 'rick_and_morty_banner.jpg', 9.1),
(10, 'Friends', 'Seis amigos viven en Nueva York mientras afrontan relaciones, trabajo y situaciones cotidianas marcadas por el humor y la amistad.', '1994-09-22', '2004-05-06', 10, 'Finalizada', 'Estados Unidos', 'InglÃ©s', 'friends_portada.jpg', 'friends_banner.jpg', 8.9),
(11, 'The Boys', 'Un grupo de vigilantes intenta detener a unos superhÃ©roes corruptos que abusan de su fama y poder bajo el control de una poderosa corporaciÃ³n.', '2019-07-26', NULL, 4, 'En emisiÃ³n', 'Estados Unidos', 'InglÃ©s', 'the_boys_portada.jpg', 'the_boys_banner.jpg', 8.7),
(12, 'Invincible', 'Mark Grayson descubre que ha heredado los poderes de su padre, el superhÃ©roe mÃ¡s poderoso de la Tierra, mientras descubre secretos oscuros sobre su familia y el mundo.', '2021-03-25', NULL, 3, 'En emisiÃ³n', 'Estados Unidos', 'InglÃ©s', 'invincible_portada.jpg', 'invincible_banner.jpg', 8.8),
(13, 'Brooklyn Nine-Nine', 'Un grupo de detectives de una comisarÃ­a de Brooklyn vive situaciones absurdas, investigaciones policiales y problemas personales marcados por el humor.', '2013-09-17', '2021-09-16', 8, 'Finalizada', 'Estados Unidos', 'InglÃ©s', 'brooklyn_nine_nine_portada.jpg', 'brooklyn_nine_nine_banner.jpg', 8.4),
(14, 'Modern Family', 'Tres familias conectadas entre sÃ­ afrontan situaciones cotidianas, conflictos y momentos emotivos desde una perspectiva cÃ³mica y moderna.', '2009-09-23', '2020-04-08', 11, 'Finalizada', 'Estados Unidos', 'InglÃ©s', 'modern_family_portada.jpg', 'modern_family_banner.jpg', 8.5),
(15, 'The Big Bang Theory', 'Un grupo de cientÃ­ficos socialmente torpes ve cÃ³mo su vida cambia con la llegada de Penny, una vecina extrovertida que se convierte en parte fundamental del grupo.', '2007-09-24', '2019-05-16', 12, 'Finalizada', 'Estados Unidos', 'InglÃ©s', 'the_big_bang_theory_portada.jpg', 'the_big_bang_theory_banner.jpg', 8.2),
(16, 'The Good Doctor', 'Shaun Murphy, un joven cirujano con autismo y sÃ­ndrome de Savant, comienza a trabajar en un prestigioso hospital donde debe demostrar su talento mÃ©dico y personal.', '2017-09-25', '2024-05-21', 7, 'Finalizada', 'Estados Unidos', 'InglÃ©s', 'the_good_doctor_portada.jpg', 'the_good_doctor_banner.jpg', 8.0),
(17, 'Bates Motel', 'Norman Bates y su madre Norma comienzan una nueva vida en un pequeÃ±o pueblo costero mientras oscuros secretos y problemas mentales salen a la luz.', '2013-03-18', '2017-04-24', 5, 'Finalizada', 'Estados Unidos', 'InglÃ©s', 'bates_motel_portada.jpg', 'bates_motel_banner.jpg', 8.1),
(18, 'Naruto', 'Naruto Uzumaki, un joven ninja rechazado por su aldea, sueÃ±a con convertirse en Hokage mientras descubre el poder que guarda en su interior.', '2002-10-03', '2007-02-08', 5, 'Finalizada', 'JapÃ³n', 'JaponÃ©s', 'naruto_portada.jpg', 'naruto_banner.jpg', 8.4),
(19, 'Bleach', 'Ichigo Kurosaki obtiene poderes de shinigami y se ve obligado a proteger a los humanos de espÃ­ritus malignos mientras descubre conflictos dentro de la Sociedad de Almas.', '2004-10-05', '2012-03-27', 16, 'Finalizada', 'JapÃ³n', 'JaponÃ©s', 'bleach_portada.jpg', 'bleach_banner.jpg', 8.2),
(20, 'Death Note', 'Light Yagami encuentra un cuaderno sobrenatural capaz de matar a cualquier persona cuyo nombre sea escrito en Ã©l, iniciando una guerra intelectual contra el detective L.', '2006-10-04', '2007-06-27', 1, 'Finalizada', 'JapÃ³n', 'JaponÃ©s', 'death_note_portada.jpg', 'death_note_banner.jpg', 9.0),
(21, 'Black Clover', 'Asta, un joven sin poder mÃ¡gico en un mundo donde la magia lo es todo, sueÃ±a con convertirse en Rey Mago junto a su rival y amigo Yuno.', '2017-10-03', '2021-03-30', 4, 'Finalizada', 'JapÃ³n', 'JaponÃ©s', 'black_clover_portada.jpg', 'black_clover_banner.jpg', 8.3),
(22, 'One Piece', 'Monkey D. Luffy emprende un viaje por los mares para encontrar el legendario tesoro One Piece y convertirse en el Rey de los Piratas.', '1999-10-20', NULL, 21, 'En emisiÃ³n', 'JapÃ³n', 'JaponÃ©s', 'one_piece_portada.jpg', 'one_piece_banner.jpg', 9.0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `serie_genero`
--

CREATE TABLE `serie_genero` (
  `id_serie` int(11) NOT NULL,
  `id_genero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `serie_genero`
--

INSERT INTO `serie_genero` (`id_serie`, `id_genero`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 5),
(2, 6),
(2, 7),
(3, 4),
(3, 5),
(3, 8),
(4, 2),
(4, 3),
(4, 9),
(4, 10),
(5, 3),
(5, 5),
(5, 11),
(5, 12),
(6, 3),
(6, 13),
(6, 14),
(6, 15),
(7, 3),
(7, 5),
(7, 6),
(8, 2),
(8, 3),
(8, 4),
(8, 13),
(9, 12),
(9, 13),
(9, 15),
(9, 16),
(10, 12),
(10, 17),
(10, 18),
(11, 3),
(11, 10),
(11, 13),
(11, 19),
(12, 10),
(12, 13),
(12, 16),
(12, 19),
(13, 12),
(13, 17),
(13, 20),
(14, 12),
(14, 17),
(14, 21),
(15, 12),
(15, 17),
(15, 18),
(16, 3),
(16, 22),
(17, 2),
(17, 6),
(17, 7),
(18, 1),
(18, 10),
(18, 15),
(18, 23),
(19, 1),
(19, 10),
(19, 15),
(19, 23),
(20, 4),
(20, 6),
(20, 7),
(20, 23),
(21, 1),
(21, 10),
(21, 15),
(21, 23),
(22, 1),
(22, 10),
(22, 15),
(22, 23);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `serie_personaje`
--

CREATE TABLE `serie_personaje` (
  `id_serie` int(11) NOT NULL,
  `id_personaje` int(11) NOT NULL,
  `rol` varchar(50) DEFAULT NULL,
  `temporadas_aparece` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `serie_personaje`
--

INSERT INTO `serie_personaje` (`id_serie`, `id_personaje`, `rol`, `temporadas_aparece`) VALUES
(1, 1, 'Protagonista', 'Varias'),
(1, 2, 'Protagonista', 'Varias'),
(1, 3, 'Principal', 'Varias'),
(1, 4, 'Secundario', 'Varias'),
(1, 5, 'Villano', 'Varias'),
(1, 6, 'Villano', 'Varias'),
(1, 7, 'Secundario', 'Varias'),
(1, 8, 'Principal', 'Varias'),
(1, 9, 'Secundario', 'Varias'),
(1, 10, 'Secundario', 'Varias'),
(2, 11, 'Protagonista', 'Varias'),
(2, 12, 'Principal', 'Varias'),
(2, 13, 'Principal', 'Varias'),
(2, 14, 'Principal', 'Varias'),
(2, 15, 'Principal', 'Varias'),
(2, 16, 'Principal', 'Varias'),
(2, 17, 'Principal', 'Varias'),
(2, 18, 'Secundario', 'Varias'),
(2, 19, 'Villano', 'Varias'),
(2, 20, 'Villano', 'Varias'),
(3, 21, 'Protagonista', 'Varias'),
(3, 22, 'Protagonista', 'Varias'),
(3, 23, 'Protagonista', 'Varias'),
(3, 24, 'Protagonista', 'Varias'),
(3, 25, 'Principal', 'Varias'),
(3, 26, 'Principal', 'Varias'),
(3, 27, 'Principal', 'Varias'),
(3, 28, 'Villano', 'Varias'),
(3, 29, 'Principal', 'Varias'),
(3, 30, 'Principal', 'Varias'),
(4, 31, 'Protagonista', 'Varias'),
(4, 32, 'Protagonista', 'Varias'),
(4, 33, 'Principal', 'Varias'),
(4, 34, 'Principal', 'Varias'),
(4, 35, 'Principal', 'Varias'),
(4, 36, 'Principal', 'Varias'),
(4, 37, 'Principal', 'Varias'),
(4, 38, 'Villano', 'Varias'),
(4, 39, 'Villano', 'Varias'),
(4, 40, 'Secundario', 'Varias'),
(5, 41, 'Protagonista', 'Varias'),
(5, 42, 'Protagonista', 'Varias'),
(5, 43, 'Principal', 'Varias'),
(5, 44, 'Principal', 'Varias'),
(5, 45, 'Principal', 'Varias'),
(5, 46, 'Principal', 'Varias'),
(5, 47, 'Principal', 'Varias'),
(5, 48, 'Secundario', 'Varias'),
(5, 49, 'Principal', 'Varias'),
(5, 50, 'Villano', 'Varias'),
(6, 51, 'Protagonista', 'Varias'),
(6, 52, 'Protagonista', 'Varias'),
(6, 53, 'Principal', 'Varias'),
(6, 54, 'Principal', 'Varias'),
(6, 55, 'Principal', 'Varias'),
(6, 56, 'Principal', 'Varias'),
(6, 57, 'Principal', 'Varias'),
(6, 58, 'Principal', 'Varias'),
(6, 59, 'Principal', 'Varias'),
(6, 60, 'Secundario', 'Varias'),
(7, 61, 'Protagonista', 'Varias'),
(7, 62, 'Protagonista', 'Varias'),
(7, 63, 'Principal', 'Varias'),
(7, 64, 'Principal', 'Varias'),
(7, 65, 'Villano', 'Varias'),
(7, 66, 'Principal', 'Varias'),
(7, 67, 'Principal', 'Varias'),
(7, 68, 'Secundario', 'Varias'),
(7, 69, 'Secundario', 'Varias'),
(7, 70, 'Villano', 'Varias'),
(8, 71, 'Protagonista', 'Varias'),
(8, 72, 'Protagonista', 'Varias'),
(8, 73, 'Principal', 'Varias'),
(8, 74, 'Principal', 'Varias'),
(8, 75, 'Principal', 'Varias'),
(8, 76, 'Principal', 'Varias'),
(8, 77, 'Principal', 'Varias'),
(8, 78, 'Principal', 'Varias'),
(8, 79, 'Principal', 'Varias'),
(8, 80, 'Villano', 'Varias'),
(9, 81, 'Protagonista', 'Varias'),
(9, 82, 'Protagonista', 'Varias'),
(9, 83, 'Principal', 'Varias'),
(9, 84, 'Principal', 'Varias'),
(9, 85, 'Principal', 'Varias'),
(9, 86, 'Secundario', 'Varias'),
(9, 87, 'Secundario', 'Varias'),
(9, 88, 'Villano', 'Varias'),
(9, 89, 'Secundario', 'Varias'),
(9, 90, 'Secundario', 'Varias'),
(10, 91, 'Protagonista', 'Varias'),
(10, 92, 'Protagonista', 'Varias'),
(10, 93, 'Protagonista', 'Varias'),
(10, 94, 'Protagonista', 'Varias'),
(10, 95, 'Protagonista', 'Varias'),
(10, 96, 'Protagonista', 'Varias'),
(10, 97, 'Secundario', 'Varias'),
(10, 98, 'Secundario', 'Varias'),
(10, 99, 'Principal', 'Varias'),
(10, 100, 'Secundario', 'Varias'),
(11, 101, 'Protagonista', 'Varias'),
(11, 102, 'Protagonista', 'Varias'),
(11, 103, 'Villano', 'Varias'),
(11, 104, 'Principal', 'Varias'),
(11, 105, 'Principal', 'Varias'),
(11, 106, 'Principal', 'Varias'),
(11, 107, 'Principal', 'Varias'),
(11, 108, 'Principal', 'Varias'),
(11, 109, 'Principal', 'Varias'),
(11, 110, 'Villano', 'Varias'),
(12, 111, 'Protagonista', 'Varias'),
(12, 112, 'Principal', 'Varias'),
(12, 113, 'Principal', 'Varias'),
(12, 114, 'Principal', 'Varias'),
(12, 115, 'Secundario', 'Varias'),
(12, 116, 'Principal', 'Varias'),
(12, 117, 'Principal', 'Varias'),
(12, 118, 'Secundario', 'Varias'),
(12, 119, 'Secundario', 'Varias'),
(12, 120, 'Villano', 'Varias'),
(13, 121, 'Protagonista', 'Varias'),
(13, 122, 'Principal', 'Varias'),
(13, 123, 'Principal', 'Varias'),
(13, 124, 'Principal', 'Varias'),
(13, 125, 'Principal', 'Varias'),
(13, 126, 'Principal', 'Varias'),
(13, 127, 'Principal', 'Varias'),
(13, 128, 'Secundario', 'Varias'),
(13, 129, 'Secundario', 'Varias'),
(13, 130, 'Secundario', 'Varias'),
(14, 131, 'Protagonista', 'Varias'),
(14, 132, 'Principal', 'Varias'),
(14, 133, 'Principal', 'Varias'),
(14, 134, 'Principal', 'Varias'),
(14, 135, 'Principal', 'Varias'),
(14, 136, 'Principal', 'Varias'),
(14, 137, 'Principal', 'Varias'),
(14, 138, 'Principal', 'Varias'),
(14, 139, 'Secundario', 'Varias'),
(14, 140, 'Principal', 'Varias'),
(15, 141, 'Protagonista', 'Varias'),
(15, 142, 'Protagonista', 'Varias'),
(15, 143, 'Protagonista', 'Varias'),
(15, 144, 'Principal', 'Varias'),
(15, 145, 'Principal', 'Varias'),
(15, 146, 'Principal', 'Varias'),
(15, 147, 'Principal', 'Varias'),
(15, 148, 'Secundario', 'Varias'),
(15, 149, 'Secundario', 'Varias'),
(15, 150, 'Secundario', 'Varias'),
(16, 151, 'Protagonista', 'Varias'),
(16, 152, 'Principal', 'Varias'),
(16, 153, 'Principal', 'Varias'),
(16, 154, 'Principal', 'Varias'),
(16, 155, 'Principal', 'Varias'),
(16, 156, 'Principal', 'Varias'),
(16, 157, 'Principal', 'Varias'),
(16, 158, 'Principal', 'Varias'),
(16, 159, 'Principal', 'Varias'),
(16, 160, 'Secundario', 'Varias'),
(17, 161, 'Protagonista', 'Varias'),
(17, 162, 'Protagonista', 'Varias'),
(17, 163, 'Principal', 'Varias'),
(17, 164, 'Principal', 'Varias'),
(17, 165, 'Principal', 'Varias'),
(17, 166, 'Secundario', 'Varias'),
(17, 167, 'Secundario', 'Varias'),
(17, 168, 'Villano', 'Varias'),
(17, 169, 'Secundario', 'Varias'),
(17, 170, 'Secundario', 'Varias'),
(18, 171, 'Protagonista', 'Varias'),
(18, 172, 'Protagonista', 'Varias'),
(18, 173, 'Principal', 'Varias'),
(18, 174, 'Principal', 'Varias'),
(18, 175, 'Principal', 'Varias'),
(18, 176, 'Principal', 'Varias'),
(18, 177, 'Principal', 'Varias'),
(18, 178, 'Principal', 'Varias'),
(18, 179, 'Villano', 'Varias'),
(18, 180, 'Principal', 'Varias'),
(19, 181, 'Protagonista', 'Varias'),
(19, 182, 'Protagonista', 'Varias'),
(19, 183, 'Principal', 'Varias'),
(19, 184, 'Principal', 'Varias'),
(19, 185, 'Principal', 'Varias'),
(19, 186, 'Principal', 'Varias'),
(19, 187, 'Villano', 'Varias'),
(19, 188, 'Principal', 'Varias'),
(19, 189, 'Principal', 'Varias'),
(19, 190, 'Principal', 'Varias'),
(20, 191, 'Protagonista', 'Varias'),
(20, 192, 'Protagonista', 'Varias'),
(20, 193, 'Principal', 'Varias'),
(20, 194, 'Principal', 'Varias'),
(20, 195, 'Principal', 'Varias'),
(20, 196, 'Principal', 'Varias'),
(20, 197, 'Principal', 'Varias'),
(20, 198, 'Secundario', 'Varias'),
(20, 199, 'Villano', 'Varias'),
(20, 200, 'Principal', 'Varias'),
(21, 201, 'Protagonista', 'Varias'),
(21, 202, 'Protagonista', 'Varias'),
(21, 203, 'Principal', 'Varias'),
(21, 204, 'Principal', 'Varias'),
(21, 205, 'Principal', 'Varias'),
(21, 206, 'Principal', 'Varias'),
(21, 207, 'Secundario', 'Varias'),
(21, 208, 'Secundario', 'Varias'),
(21, 209, 'Secundario', 'Varias'),
(21, 210, 'Villano', 'Varias'),
(22, 211, 'Protagonista', 'Varias'),
(22, 212, 'Principal', 'Varias'),
(22, 213, 'Principal', 'Varias'),
(22, 214, 'Principal', 'Varias'),
(22, 215, 'Principal', 'Varias'),
(22, 216, 'Principal', 'Varias'),
(22, 217, 'Principal', 'Varias'),
(22, 218, 'Principal', 'Varias'),
(22, 219, 'Principal', 'Varias'),
(22, 220, 'Principal', 'Varias');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre_usuario` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto_perfil` varchar(255) DEFAULT NULL,
  `fecha_registro` date DEFAULT NULL,
  `rol` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Ãndices para tablas volcadas
--

--
-- Indices de la tabla `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`id_actor`),
  ADD KEY `idx_actor_nombre` (`nombre`,`apellido1`,`apellido2`);

--
-- Indices de la tabla `actor_personaje`
--
ALTER TABLE `actor_personaje`
  ADD PRIMARY KEY (`id_actor`,`id_personaje`),
  ADD KEY `fk_ap_personaje` (`id_personaje`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id_genero`),
  ADD UNIQUE KEY `uk_genero_nombre` (`nombre`);

--
-- Indices de la tabla `personaje`
--
ALTER TABLE `personaje`
  ADD PRIMARY KEY (`id_personaje`);

--
-- Indices de la tabla `resena`
--
ALTER TABLE `resena`
  ADD PRIMARY KEY (`id_resena`),
  ADD KEY `fk_resena_usuario` (`id_usuario`),
  ADD KEY `fk_resena_serie` (`id_serie`);

--
-- Indices de la tabla `serie`
--
ALTER TABLE `serie`
  ADD PRIMARY KEY (`id_serie`);

--
-- Indices de la tabla `serie_genero`
--
ALTER TABLE `serie_genero`
  ADD PRIMARY KEY (`id_serie`,`id_genero`),
  ADD KEY `fk_sg_genero` (`id_genero`);

--
-- Indices de la tabla `serie_personaje`
--
ALTER TABLE `serie_personaje`
  ADD PRIMARY KEY (`id_serie`,`id_personaje`),
  ADD KEY `fk_sp_personaje` (`id_personaje`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actor`
--
ALTER TABLE `actor`
  MODIFY `id_actor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id_genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `personaje`
--
ALTER TABLE `personaje`
  MODIFY `id_personaje` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT de la tabla `resena`
--
ALTER TABLE `resena`
  MODIFY `id_resena` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `serie`
--
ALTER TABLE `serie`
  MODIFY `id_serie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actor_personaje`
--
ALTER TABLE `actor_personaje`
  ADD CONSTRAINT `fk_ap_actor` FOREIGN KEY (`id_actor`) REFERENCES `actor` (`id_actor`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ap_personaje` FOREIGN KEY (`id_personaje`) REFERENCES `personaje` (`id_personaje`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `resena`
--
ALTER TABLE `resena`
  ADD CONSTRAINT `fk_resena_serie` FOREIGN KEY (`id_serie`) REFERENCES `serie` (`id_serie`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_resena_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `serie_genero`
--
ALTER TABLE `serie_genero`
  ADD CONSTRAINT `fk_sg_genero` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id_genero`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_sg_serie` FOREIGN KEY (`id_serie`) REFERENCES `serie` (`id_serie`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `serie_personaje`
--
ALTER TABLE `serie_personaje`
  ADD CONSTRAINT `fk_sp_personaje` FOREIGN KEY (`id_personaje`) REFERENCES `personaje` (`id_personaje`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_sp_serie` FOREIGN KEY (`id_serie`) REFERENCES `serie` (`id_serie`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


