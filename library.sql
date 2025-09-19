-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Sze 19. 10:41
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `library`
--
CREATE DATABASE IF NOT EXISTS `library` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `library`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(30) DEFAULT NULL,
  `author` varchar(20) DEFAULT NULL,
  `releaseDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- A tábla adatainak kiíratása `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `releaseDate`) VALUES
(1, 'Korso', 'Thurston Stiegers', '2025-02-17'),
(2, 'Trouble in Paradise', 'Geoff Denman', '2024-12-08'),
(3, 'Soldier\'s Daughter Never Cries', 'Bobby Le Clercq', '2024-12-16'),
(4, 'It\'s Kind of a Funny Story', 'Tobey Hallgath', '2025-05-25'),
(5, 'Very Good Girls', 'Roby Rentz', '2025-08-09'),
(6, 'Happy Family', 'Briny Shergill', '2025-06-15'),
(7, 'Troy', 'Israel Doubrava', '2025-01-31'),
(8, 'Drunken Master (Jui kuen)', 'Harald Perren', '2025-03-26'),
(9, 'Downtown', 'Panchito McVanamy', '2025-01-12'),
(10, 'Street Fighter II: The Animate', 'Cleveland Nendick', '2024-09-20'),
(11, 'City of No Limits, The (la ciu', 'Virgil Borborough', '2024-12-14'),
(12, 'Chronicles of Narnia: Prince C', 'Obediah Filippi', '2025-07-08'),
(13, 'Charleston', 'Pooh Joul', '2024-11-20'),
(14, 'My Left Foot', 'Donnamarie de Zamora', '2025-06-03'),
(15, 'Trees Lounge', 'Deina MacSherry', '2025-09-04'),
(16, 'Munchies', 'Giustina Greader', '2024-10-06'),
(17, 'Police Story (Ging chaat goo s', 'Haslett MacSkeagan', '2025-03-08'),
(18, 'Vehicle 19', 'Meagan Lundie', '2025-02-22'),
(19, 'Behaving Badly', 'Shirlene Veljes', '2025-08-24'),
(20, 'Daybreakers', 'Kahaleel Sandall', '2025-01-25'),
(21, 'Wedding Singer, The', 'Becky Rummery', '2024-12-27'),
(22, '12th & Delaware', 'Christi Peers', '2024-12-16'),
(23, 'Haunted Echoes', 'Kitty McChruiter', '2025-02-20'),
(24, 'London - The Modern Babylon ', 'Glori Castri', '2025-05-07'),
(25, 'Evenings on a Farm near Dikank', 'Imogene Slessor', '2025-03-11'),
(26, 'Casper', 'Ethan Dunn', '2024-09-15'),
(27, 'For Sale (À Vendre)', 'Audrey Selvester', '2025-05-21'),
(28, 'You May Not Kiss the Bride', 'Raquela Leversuch', '2025-01-12'),
(29, 'Dark City', 'Bebe De Castri', '2024-10-15'),
(30, 'Otello', 'Felice Mixworthy', '2024-12-04'),
(31, 'Man Who Came to Dinner, The', 'Linda Shard', '2025-06-01'),
(32, 'Hail Caesar', 'Morlee Bleasdille', '2025-04-18'),
(33, 'Class Reunion', 'Hyacinthie Blinder', '2024-10-07'),
(34, 'Gentlemen Broncos', 'Antonietta Dohms', '2025-01-18'),
(35, 'Dreams on Spec', 'Nicolina Defrain', '2024-12-26'),
(36, 'Private Detective 62', 'Binky Cowser', '2025-05-23'),
(37, 'Sommersby', 'Jeremias Gulleford', '2024-12-18'),
(38, 'Skulls, The', 'Janessa Koppes', '2025-02-14'),
(39, 'Arabesque', 'Ly Nudds', '2024-11-05'),
(40, 'Bullfighter and the Lady', 'Blinni Lewinton', '2024-09-25'),
(41, 'Magic Man', 'Carolann Ida', '2025-01-28'),
(42, 'One Flew Over the Cuckoo\'s Nes', 'Abey Bentall', '2025-07-06'),
(43, 'Saludos Amigos', 'Tessi Cobb', '2025-04-01'),
(44, 'Breathing Room', 'Bartel Burner', '2025-03-21'),
(45, 'Mighty Ducks, The', 'Kyle Fegan', '2025-08-15'),
(46, 'Heart and Souls', 'Ritchie Klemencic', '2025-01-25'),
(47, 'Our Man Flint', 'Valina Raffan', '2025-03-31'),
(48, 'John Huston: The Man, the Movi', 'Row Costley', '2024-09-19'),
(49, 'Now You Know', 'Karisa Shearn', '2024-11-01'),
(50, 'Chan Is Missing', 'Kariotta Troctor', '2025-08-13'),
(51, 'Organizer, The (I compagni)', 'Brandice Folonin', '2025-03-06'),
(52, 'Superproduction (Superprodukcj', 'Piotr Wanek', '2025-01-08'),
(53, 'Reunion', 'Gilemette Lowder', '2025-02-02'),
(54, 'Eating Raoul', 'Conny Livesey', '2025-06-27'),
(55, 'First Love', 'Daisi Dulany', '2025-03-01'),
(56, 'Cartoon All-Stars to the Rescu', 'Bryana Poultney', '2024-11-06'),
(57, 'Rentun Ruusu', 'Cayla Gowrich', '2025-06-12'),
(58, 'Beautiful Mind, A', 'Anatol Hector', '2024-12-17'),
(59, 'Comet', 'Tudor Lepper', '2025-05-30'),
(60, 'Tonight and Every Night', 'Drake Craster', '2025-04-28'),
(61, 'Jamie and Jessie Are Not Toget', 'Judye Loosley', '2024-12-07'),
(62, 'Monsters', 'Chad Matzke', '2025-04-17'),
(63, 'Four Sons', 'Maximo Beare', '2025-03-25'),
(64, 'Mermaids', 'Kathe Carp', '2025-01-28'),
(65, 'Hard, Fast and Beautiful', 'Gary Moen', '2025-06-02'),
(66, 'Born to Dance', 'Korella MacFaul', '2025-05-14'),
(67, 'Dark Lurking, The', 'Abigale Mindenhall', '2025-04-20'),
(68, 'Tequila Sunrise', 'Bertrand Ilyunin', '2025-04-23'),
(69, 'Jesus Christ Superstar', 'Darill Mix', '2025-07-11'),
(70, 'Story of Yonosuke, A (Yokomich', 'Mollie Dunlea', '2025-05-03'),
(71, 'Kama Sutra: A Tale of Love', 'Annamaria Cressor', '2025-07-11'),
(72, 'Finding Bliss', 'Ambur Emilien', '2025-01-14'),
(73, 'Crawlspace', 'Teador Mannering', '2025-03-09'),
(74, 'Fever', 'Shalna Adrianello', '2025-09-02'),
(75, 'Dark House, The (Dom zly)', 'Russell Jeannin', '2025-06-25'),
(76, 'Legend of the Lost', 'Gabie Dodimead', '2025-06-07'),
(77, 'Bitter Rice (Riso amaro)', 'Gunner Richfield', '2025-02-12'),
(78, 'We the Party', 'Orland Frunks', '2025-06-29'),
(79, 'Japon (a.k.a. Japan) (Japón)', 'Renard Adamovitz', '2025-06-28'),
(80, 'Donkey Skin (Peau d\'âne)', 'Delano Cantor', '2025-09-08'),
(81, 'Brides (Nyfes)', 'Morse Ells', '2025-02-23'),
(82, 'Hollywood Shuffle', 'Ricardo Sudran', '2025-03-12'),
(83, 'Usual Suspects, The', 'Lyssa Carek', '2024-12-05'),
(84, 'Permanent Vacation', 'Wiatt Ettles', '2024-09-27'),
(85, 'The Woman in Black 2: Angel of', 'Saidee Lomen', '2024-10-17'),
(86, 'To Wong Foo, Thanks for Everyt', 'Kenon O\'Moylan', '2025-08-13'),
(87, 'Craigslist Killer, The ', 'Ozzie Delucia', '2025-04-08'),
(88, 'Shopworn Angel, The', 'Bobbee Bernhardt', '2024-10-24'),
(89, 'Ward, The', 'Jacky Kinchlea', '2025-06-14'),
(90, 'Once Upon a Time in Shanghai', 'Ara Hayles', '2024-12-25'),
(91, 'Reuben, Reuben', 'Daron Danahar', '2025-06-28'),
(92, 'Barbie in the Nutcracker', 'Rogerio Tripe', '2025-05-23'),
(93, 'Moonwalker', 'Carlina Shipcott', '2024-11-29'),
(94, 'Rosenstrasse', 'Georas Riddeough', '2025-05-18'),
(95, 'Lady Be Good', 'Yasmeen Paudin', '2025-07-27'),
(96, 'Hills Have Eyes, The', 'Egon Smickle', '2025-05-18'),
(97, 'Return to Paradise', 'Batsheva Sutherby', '2024-09-28'),
(98, 'Waterboy, The', 'Monroe Abbe', '2024-12-06'),
(99, 'Death Hunt', 'Felicle Enocksson', '2025-01-24'),
(100, 'P2', 'Carma Moles', '2025-07-28');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `brand` varchar(20) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `mDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- A tábla adatainak kiíratása `cars`
--

INSERT INTO `cars` (`id`, `brand`, `type`, `mDate`) VALUES
(1, 'Aston Martin', 'DBS', '2009-06-28'),
(2, 'Mercury', 'Mountainee', '2011-01-01'),
(3, 'Ford', 'Contour', '2008-07-28'),
(4, 'Audi', '5000S', '1992-10-18'),
(5, 'Ford', 'Explorer', '2004-05-22'),
(6, 'Saab', '9-3', '2017-01-27'),
(7, 'Mazda', '929', '2013-10-24'),
(8, 'Chevrolet', 'Beretta', '1998-02-05'),
(9, 'Ford', 'Mustang', '1996-06-14'),
(10, 'Jeep', 'Grand Cher', '2010-03-29'),
(11, 'Toyota', 'Prius', '2003-12-01'),
(12, 'Infiniti', 'M', '2000-10-25'),
(13, 'Porsche', '911', '2012-07-25'),
(14, 'BMW', 'M5', '2014-12-18'),
(15, 'Honda', 'Prelude', '2020-07-17'),
(16, 'Mercury', 'Milan', '2013-10-01'),
(17, 'Mercury', 'Sable', '2000-06-19'),
(18, 'Audi', 'A5', '2002-10-15'),
(19, 'Mazda', 'Mazdaspeed', '2000-03-17'),
(20, 'Acura', 'NSX', '1988-09-02'),
(21, 'Buick', 'Park Avenu', '2009-11-09'),
(22, 'Chevrolet', 'Avalanche', '2011-02-27'),
(23, 'Volvo', 'C70', '1990-08-23'),
(24, 'Nissan', 'Frontier', '2001-09-03'),
(25, 'Lexus', 'GX', '2023-12-09'),
(26, 'Chevrolet', 'Equinox', '2013-07-21'),
(27, 'Ford', 'E150', '2022-06-30'),
(28, 'Infiniti', 'G', '1983-12-20'),
(29, 'Chevrolet', 'Express 15', '2002-02-27'),
(30, 'Chrysler', 'Aspen', '2015-09-28'),
(31, 'Nissan', 'Frontier', '1987-12-28'),
(32, 'Volvo', 'S70', '2020-08-24'),
(33, 'Audi', 'A3', '2000-09-07'),
(34, 'Nissan', 'Altima', '2020-10-30'),
(35, 'Dodge', 'Ram 2500', '1989-03-24'),
(36, 'Mercury', 'Topaz', '1996-03-30'),
(37, 'Oldsmobile', 'Silhouette', '1991-07-27'),
(38, 'Volkswagen', 'Golf', '1989-01-22'),
(39, 'Dodge', 'Stratus', '2014-11-27'),
(40, 'Kia', 'Sportage', '2019-01-14'),
(41, 'Saab', '9000', '2020-11-21'),
(42, 'Suzuki', 'Aerio', '1995-01-13'),
(43, 'Subaru', 'Impreza', '2006-07-28'),
(44, 'Suzuki', 'Daewoo Lac', '2015-05-12'),
(45, 'Volkswagen', 'GTI', '1983-04-16'),
(46, 'Aston Martin', 'DB9', '1993-12-24'),
(47, 'Dodge', 'Grand Cara', '2015-01-09'),
(48, 'Mercedes-Benz', 'C-Class', '2009-10-09'),
(49, 'Oldsmobile', '88', '2025-01-05'),
(50, 'Mercedes-Benz', 'R-Class', '1983-11-25');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT a táblához `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
