-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 05 2020 г., 15:57
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `promo`
--

-- --------------------------------------------------------

--
-- Структура таблицы `adverts`
--

CREATE TABLE `adverts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `imagesId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `adverts`
--

INSERT INTO `adverts` (`id`, `title`, `description`, `price`, `imagesId`, `createdAt`, `updatedAt`) VALUES
(119, 'A ARTLINE Gaming X51 v12 (X51v12)', 'Intel Core i5-9400F (2.9 - 4.1 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 480 ГБ / nVidia GeForce GTX 1660 Super, 6 ГБ / без ОД / LAN / без ОС\nIntel Core i5-9400F (2.9 - 4.1 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 480 ГБ / nVidia GeForce GTX 1660 Super, 6 ГБ / без ОД / LAN / без ОС\nIntel Core i5-9400F (2.9 - 4.1 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 480 ГБ / nVidia GeForce GTX 1660 Super, 6 ГБ / без ОД / LAN / без ОС', 1000, '[451,452,453,454]', '2020-11-04 15:14:36', '2020-11-04 15:14:36'),
(120, 'B ARTLINE Gaming X51 v12 (X51v12)', 'Intel Core i5-9400F (2.9 - 4.1 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 480 ГБ / nVidia GeForce GTX 1660 Super, 6 ГБ / без ОД / LAN / без ОС\nIntel Core i5-9400F (2.9 - 4.1 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 480 ГБ / nVidia GeForce GTX 1660 Super, 6 ГБ / без ОД / LAN / без ОС\nIntel Core i5-9400F (2.9 - 4.1 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 480 ГБ / nVidia GeForce GTX 1660 Super, 6 ГБ / без ОД / LAN / без ОС', 2000, '[455,456,457]', '2020-11-04 15:14:49', '2020-11-05 12:45:24'),
(121, 'C ARTLINE Gaming X51 v12 (X51v12)', 'Intel Core i5-9400F (2.9 - 4.1 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 480 ГБ / nVidia GeForce GTX 1660 Super, 6 ГБ / без ОД / LAN / без ОС\nIntel Core i5-9400F (2.9 - 4.1 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 480 ГБ / nVidia GeForce GTX 1660 Super, 6 ГБ / без ОД / LAN / без ОС\nIntel Core i5-9400F (2.9 - 4.1 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 480 ГБ / nVidia GeForce GTX 1660 Super, 6 ГБ / без ОД / LAN / без ОС', 3000, '[459,460,461,462]', '2020-11-04 15:14:57', '2020-11-04 15:14:57'),
(122, 'D ARTLINE Gaming X51 v12 (X51v12)', 'Intel Core i5-9400F (2.9 - 4.1 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 480 ГБ / nVidia GeForce GTX 1660 Super, 6 ГБ / без ОД / LAN / без ОС\nIntel Core i5-9400F (2.9 - 4.1 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 480 ГБ / nVidia GeForce GTX 1660 Super, 6 ГБ / без ОД / LAN / без ОС\nIntel Core i5-9400F (2.9 - 4.1 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 480 ГБ / nVidia GeForce GTX 1660 Super, 6 ГБ / без ОД / LAN / без ОС', 4000, '[463,464,465,466]', '2020-11-04 15:15:03', '2020-11-04 15:15:03'),
(123, 'F ARTLINE Gaming X51 v12 (X51v12)', 'Intel Core i5-9400F (2.9 - 4.1 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 480 ГБ / nVidia GeForce GTX 1660 Super, 6 ГБ / без ОД / LAN / без ОС\nIntel Core i5-9400F (2.9 - 4.1 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 480 ГБ / nVidia GeForce GTX 1660 Super, 6 ГБ / без ОД / LAN / без ОС\nIntel Core i5-9400F (2.9 - 4.1 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 480 ГБ / nVidia GeForce GTX 1660 Super, 6 ГБ / без ОД / LAN / без ОС', 5000, '[467,468,469,470]', '2020-11-04 15:15:09', '2020-11-04 15:15:09'),
(124, 'G ARTLINE Gaming X51 v12 (X51v12)', 'Intel Core i5-9400F (2.9 - 4.1 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 480 ГБ / nVidia GeForce GTX 1660 Super, 6 ГБ / без ОД / LAN / без ОС\nIntel Core i5-9400F (2.9 - 4.1 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 480 ГБ / nVidia GeForce GTX 1660 Super, 6 ГБ / без ОД / LAN / без ОС\nIntel Core i5-9400F (2.9 - 4.1 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 480 ГБ / nVidia GeForce GTX 1660 Super, 6 ГБ / без ОД / LAN / без ОС', 6000, '[471,472,473,474]', '2020-11-04 15:15:15', '2020-11-04 15:15:15'),
(125, 'K ARTLINE Gaming X51 v12 (X51v12)', 'Intel Core i5-9400F (2.9 - 4.1 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 480 ГБ / nVidia GeForce GTX 1660 Super, 6 ГБ / без ОД / LAN / без ОС\nIntel Core i5-9400F (2.9 - 4.1 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 480 ГБ / nVidia GeForce GTX 1660 Super, 6 ГБ / без ОД / LAN / без ОС\nIntel Core i5-9400F (2.9 - 4.1 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 480 ГБ / nVidia GeForce GTX 1660 Super, 6 ГБ / без ОД / LAN / без ОС', 7000, '[475,476,477,478]', '2020-11-04 15:15:24', '2020-11-04 15:15:24'),
(126, 'L ARTLINE Gaming X51 v12 (X51v12)', 'Intel Core i5-9400F (2.9 - 4.1 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 480 ГБ / nVidia GeForce GTX 1660 Super, 6 ГБ / без ОД / LAN / без ОС\nIntel Core i5-9400F (2.9 - 4.1 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 480 ГБ / nVidia GeForce GTX 1660 Super, 6 ГБ / без ОД / LAN / без ОС\nIntel Core i5-9400F (2.9 - 4.1 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 480 ГБ / nVidia GeForce GTX 1660 Super, 6 ГБ / без ОД / LAN / без ОС', 8000, '[479,480,481,482]', '2020-11-04 15:15:31', '2020-11-05 11:53:32'),
(127, 'M ARTLINE Gaming X51 v12 (X51v12)', 'Intel Core i5-9400F (2.9 - 4.1 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 480 ГБ / nVidia GeForce GTX 1660 Super, 6 ГБ / без ОД / LAN / без ОС\nIntel Core i5-9400F (2.9 - 4.1 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 480 ГБ / nVidia GeForce GTX 1660 Super, 6 ГБ / без ОД / LAN / без ОС\nIntel Core i5-9400F (2.9 - 4.1 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 480 ГБ / nVidia GeForce GTX 1660 Super, 6 ГБ / без ОД / LAN / без ОС', 9000, '[483,484,485,486]', '2020-11-04 15:15:36', '2020-11-05 11:53:21'),
(128, 'O ARTLINE Gaming X51 v12 (X51v12)', 'Intel Core i5-9400F (2.9 - 4.1 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 480 ГБ / nVidia GeForce GTX 1660 Super, 6 ГБ / без ОД / LAN / без ОС\nIntel Core i5-9400F (2.9 - 4.1 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 480 ГБ / nVidia GeForce GTX 1660 Super, 6 ГБ / без ОД / LAN / без ОС\nIntel Core i5-9400F (2.9 - 4.1 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 480 ГБ / nVidia GeForce GTX 1660 Super, 6 ГБ / без ОД / LAN / без ОС', 6, '[487,488,489,490]', '2020-11-04 15:15:47', '2020-11-05 11:53:15'),
(129, 'P ARTLINE Gaming X51 v12 (X51v12)', 'Intel Core i5-9400F (2.9 - 4.1 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 480 ГБ / nVidia GeForce GTX 1660 Super, 6 ГБ / без ОД / LAN / без ОС\nIntel Core i5-9400F (2.9 - 4.1 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 480 ГБ / nVidia GeForce GTX 1660 Super, 6 ГБ / без ОД / LAN / без ОС\nIntel Core i5-9400F (2.9 - 4.1 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 480 ГБ / nVidia GeForce GTX 1660 Super, 6 ГБ / без ОД / LAN / без ОС', 11000, '[491,492,493,494]', '2020-11-04 15:15:53', '2020-11-04 15:15:53'),
(130, 'Q ARTLINE Gaming X51 v12 (X51v12)', 'Intel Core i5-9400F (2.9 - 4.1 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 480 ГБ / nVidia GeForce GTX 1660 Super, 6 ГБ / без ОД / LAN / без ОС\nIntel Core i5-9400F (2.9 - 4.1 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 480 ГБ / nVidia GeForce GTX 1660 Super, 6 ГБ / без ОД / LAN / без ОС\nIntel Core i5-9400F (2.9 - 4.1 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 480 ГБ / nVidia GeForce GTX 1660 Super, 6 ГБ / без ОД / LAN / без ОС', 12000, '[495,496,497,498]', '2020-11-04 15:15:58', '2020-11-04 15:15:58'),
(131, 'S ARTLINE Gaming X51 v12 (X51v12)', 'Intel Core i5-9400F (2.9 - 4.1 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 480 ГБ / nVidia GeForce GTX 1660 Super, 6 ГБ / без ОД / LAN / без ОС\nIntel Core i5-9400F (2.9 - 4.1 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 480 ГБ / nVidia GeForce GTX 1660 Super, 6 ГБ / без ОД / LAN / без ОС\nIntel Core i5-9400F (2.9 - 4.1 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 480 ГБ / nVidia GeForce GTX 1660 Super, 6 ГБ / без ОД / LAN / без ОС', 13000, '[499,500,501,502]', '2020-11-04 15:16:06', '2020-11-04 15:16:06'),
(132, 'T ARTLINE Gaming X51 v12 (X51v12)', 'Intel Core i5-9400F (2.9 - 4.1 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 480 ГБ / nVidia GeForce GTX 1660 Super, 6 ГБ / без ОД / LAN / без ОС\nIntel Core i5-9400F (2.9 - 4.1 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 480 ГБ / nVidia GeForce GTX 1660 Super, 6 ГБ / без ОД / LAN / без ОС\nIntel Core i5-9400F (2.9 - 4.1 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 480 ГБ / nVidia GeForce GTX 1660 Super, 6 ГБ / без ОД / LAN / без ОС', 14000, '[503,504,505,506]', '2020-11-04 15:16:12', '2020-11-04 15:16:12'),
(133, 'Y ARTLINE Gaming X51 v12 (X51v12)', 'Intel Core i5-9400F (2.9 - 4.1 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 480 ГБ / nVidia GeForce GTX 1660 Super, 6 ГБ / без ОД / LAN / без ОС\nIntel Core i5-9400F (2.9 - 4.1 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 480 ГБ / nVidia GeForce GTX 1660 Super, 6 ГБ / без ОД / LAN / без ОС\nIntel Core i5-9400F (2.9 - 4.1 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 480 ГБ / nVidia GeForce GTX 1660 Super, 6 ГБ / без ОД / LAN / без ОС', 15000, '[507,508,509,510]', '2020-11-04 15:16:19', '2020-11-04 15:16:19'),
(134, 'Test', 'Test', 500, '[511]', '2020-11-04 15:50:06', '2020-11-04 15:50:06'),
(135, 'Test 2', 'Lorem .....', 1000, '[512]', '2020-11-05 11:09:13', '2020-11-05 11:09:13'),
(136, 'Test 2', 'Lorem .....', 1000, '[513]', '2020-11-05 11:09:40', '2020-11-05 11:09:40'),
(137, 'Test 3', 'wqeqweweqqwe', 1239, '[514]', '2020-11-05 11:10:50', '2020-11-05 11:10:50'),
(138, 'Tetst 4', 'wqewqe crwqer cwqe', 2000, '[515]', '2020-11-05 11:12:20', '2020-11-05 11:12:20'),
(139, 'Test 4', 'wqewq ewq', 12312, '[516]', '2020-11-05 11:14:12', '2020-11-05 11:14:12'),
(140, '23423', 'wqeqweqwqwre', 321234, '[517]', '2020-11-05 11:18:14', '2020-11-05 11:52:42'),
(141, '123123', '2wqeqweqw', 123123, '[518,519]', '2020-11-05 12:44:37', '2020-11-05 12:44:37');

-- --------------------------------------------------------

--
-- Структура таблицы `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `images`
--

INSERT INTO `images` (`id`, `url`, `title`, `createdAt`, `updatedAt`) VALUES
(451, 'upload/1604502876902-promo-artline_x51v12.jpg', '1', '2020-11-04 15:14:36', '2020-11-04 15:14:36'),
(452, 'upload/1604502876905-promo-artline_x51v12_2.jpg', '2', '2020-11-04 15:14:36', '2020-11-04 15:14:36'),
(453, 'upload/1604502876907-promo-artline_x51v12_images_19403468437.jpg', '3', '2020-11-04 15:14:36', '2020-11-04 15:14:36'),
(454, 'upload/1604502876911-promo-artline_x51v12_images_19403472565.jpg', '4', '2020-11-04 15:14:36', '2020-11-04 15:14:36'),
(455, 'upload/1604502889258-promo-artline_x51v12.jpg', '1', '2020-11-04 15:14:49', '2020-11-04 15:14:49'),
(456, 'upload/1604502889259-promo-artline_x51v12_2.jpg', '2', '2020-11-04 15:14:49', '2020-11-04 15:14:49'),
(457, 'upload/1604502889264-promo-artline_x51v12_images_19403468437.jpg', '3', '2020-11-04 15:14:49', '2020-11-04 15:14:49'),
(459, 'upload/1604502897089-promo-artline_x51v12.jpg', '1', '2020-11-04 15:14:57', '2020-11-04 15:14:57'),
(460, 'upload/1604502897090-promo-artline_x51v12_2.jpg', '2', '2020-11-04 15:14:57', '2020-11-04 15:14:57'),
(461, 'upload/1604502897092-promo-artline_x51v12_images_19403468437.jpg', '3', '2020-11-04 15:14:57', '2020-11-04 15:14:57'),
(462, 'upload/1604502897093-promo-artline_x51v12_images_19403472565.jpg', '4', '2020-11-04 15:14:57', '2020-11-04 15:14:57'),
(463, 'upload/1604502903061-promo-artline_x51v12.jpg', '1', '2020-11-04 15:15:03', '2020-11-04 15:15:03'),
(464, 'upload/1604502903063-promo-artline_x51v12_2.jpg', '2', '2020-11-04 15:15:03', '2020-11-04 15:15:03'),
(465, 'upload/1604502903064-promo-artline_x51v12_images_19403468437.jpg', '3', '2020-11-04 15:15:03', '2020-11-04 15:15:03'),
(466, 'upload/1604502903066-promo-artline_x51v12_images_19403472565.jpg', '4', '2020-11-04 15:15:03', '2020-11-04 15:15:03'),
(467, 'upload/1604502909443-promo-artline_x51v12.jpg', '1', '2020-11-04 15:15:09', '2020-11-04 15:15:09'),
(468, 'upload/1604502909444-promo-artline_x51v12_2.jpg', '2', '2020-11-04 15:15:09', '2020-11-04 15:15:09'),
(469, 'upload/1604502909446-promo-artline_x51v12_images_19403468437.jpg', '3', '2020-11-04 15:15:09', '2020-11-04 15:15:09'),
(470, 'upload/1604502909448-promo-artline_x51v12_images_19403472565.jpg', '4', '2020-11-04 15:15:09', '2020-11-04 15:15:09'),
(471, 'upload/1604502915865-promo-artline_x51v12.jpg', '1', '2020-11-04 15:15:15', '2020-11-04 15:15:15'),
(472, 'upload/1604502915866-promo-artline_x51v12_2.jpg', '2', '2020-11-04 15:15:15', '2020-11-04 15:15:15'),
(473, 'upload/1604502915867-promo-artline_x51v12_images_19403468437.jpg', '3', '2020-11-04 15:15:15', '2020-11-04 15:15:15'),
(474, 'upload/1604502915869-promo-artline_x51v12_images_19403472565.jpg', '4', '2020-11-04 15:15:15', '2020-11-04 15:15:15'),
(475, 'upload/1604502924430-promo-artline_x51v12.jpg', '1', '2020-11-04 15:15:24', '2020-11-04 15:15:24'),
(476, 'upload/1604502924431-promo-artline_x51v12_2.jpg', '2', '2020-11-04 15:15:24', '2020-11-04 15:15:24'),
(477, 'upload/1604502924433-promo-artline_x51v12_images_19403468437.jpg', '3', '2020-11-04 15:15:24', '2020-11-04 15:15:24'),
(478, 'upload/1604502924435-promo-artline_x51v12_images_19403472565.jpg', '4', '2020-11-04 15:15:24', '2020-11-04 15:15:24'),
(479, 'upload/1604502930990-promo-artline_x51v12.jpg', '1', '2020-11-04 15:15:30', '2020-11-04 15:15:30'),
(480, 'upload/1604502930991-promo-artline_x51v12_2.jpg', '2', '2020-11-04 15:15:31', '2020-11-04 15:15:31'),
(481, 'upload/1604502930993-promo-artline_x51v12_images_19403468437.jpg', '3', '2020-11-04 15:15:31', '2020-11-04 15:15:31'),
(482, 'upload/1604502930994-promo-artline_x51v12_images_19403472565.jpg', '4', '2020-11-04 15:15:31', '2020-11-04 15:15:31'),
(483, 'upload/1604502936895-promo-artline_x51v12.jpg', '1', '2020-11-04 15:15:36', '2020-11-04 15:15:36'),
(484, 'upload/1604502936897-promo-artline_x51v12_2.jpg', '2', '2020-11-04 15:15:36', '2020-11-04 15:15:36'),
(485, 'upload/1604502936898-promo-artline_x51v12_images_19403468437.jpg', '3', '2020-11-04 15:15:36', '2020-11-04 15:15:36'),
(486, 'upload/1604502936900-promo-artline_x51v12_images_19403472565.jpg', '4', '2020-11-04 15:15:36', '2020-11-04 15:15:36'),
(487, 'upload/1604502946985-promo-artline_x51v12.jpg', '1', '2020-11-04 15:15:46', '2020-11-04 15:15:46'),
(488, 'upload/1604502946987-promo-artline_x51v12_2.jpg', '2', '2020-11-04 15:15:47', '2020-11-04 15:15:47'),
(489, 'upload/1604502946992-promo-artline_x51v12_images_19403468437.jpg', '3', '2020-11-04 15:15:47', '2020-11-04 15:15:47'),
(490, 'upload/1604502946994-promo-artline_x51v12_images_19403472565.jpg', '4', '2020-11-04 15:15:47', '2020-11-04 15:15:47'),
(491, 'upload/1604502953485-promo-artline_x51v12.jpg', '1', '2020-11-04 15:15:53', '2020-11-04 15:15:53'),
(492, 'upload/1604502953486-promo-artline_x51v12_2.jpg', '2', '2020-11-04 15:15:53', '2020-11-04 15:15:53'),
(493, 'upload/1604502953490-promo-artline_x51v12_images_19403468437.jpg', '3', '2020-11-04 15:15:53', '2020-11-04 15:15:53'),
(494, 'upload/1604502953492-promo-artline_x51v12_images_19403472565.jpg', '4', '2020-11-04 15:15:53', '2020-11-04 15:15:53'),
(495, 'upload/1604502958890-promo-artline_x51v12.jpg', '1', '2020-11-04 15:15:58', '2020-11-04 15:15:58'),
(496, 'upload/1604502958892-promo-artline_x51v12_2.jpg', '2', '2020-11-04 15:15:58', '2020-11-04 15:15:58'),
(497, 'upload/1604502958893-promo-artline_x51v12_images_19403468437.jpg', '3', '2020-11-04 15:15:58', '2020-11-04 15:15:58'),
(498, 'upload/1604502958898-promo-artline_x51v12_images_19403472565.jpg', '4', '2020-11-04 15:15:58', '2020-11-04 15:15:58'),
(499, 'upload/1604502966619-promo-artline_x51v12.jpg', '1', '2020-11-04 15:16:06', '2020-11-04 15:16:06'),
(500, 'upload/1604502966620-promo-artline_x51v12_2.jpg', '2', '2020-11-04 15:16:06', '2020-11-04 15:16:06'),
(501, 'upload/1604502966621-promo-artline_x51v12_images_19403468437.jpg', '3', '2020-11-04 15:16:06', '2020-11-04 15:16:06'),
(502, 'upload/1604502966624-promo-artline_x51v12_images_19403472565.jpg', '4', '2020-11-04 15:16:06', '2020-11-04 15:16:06'),
(503, 'upload/1604502972383-promo-artline_x51v12.jpg', '1', '2020-11-04 15:16:12', '2020-11-04 15:16:12'),
(504, 'upload/1604502972384-promo-artline_x51v12_2.jpg', '2', '2020-11-04 15:16:12', '2020-11-04 15:16:12'),
(505, 'upload/1604502972385-promo-artline_x51v12_images_19403468437.jpg', '3', '2020-11-04 15:16:12', '2020-11-04 15:16:12'),
(506, 'upload/1604502972387-promo-artline_x51v12_images_19403472565.jpg', '4', '2020-11-04 15:16:12', '2020-11-04 15:16:12'),
(507, 'upload/1604502979572-promo-artline_x51v12.jpg', '1', '2020-11-04 15:16:19', '2020-11-04 15:16:19'),
(508, 'upload/1604502979573-promo-artline_x51v12_2.jpg', '2', '2020-11-04 15:16:19', '2020-11-04 15:16:19'),
(509, 'upload/1604502979574-promo-artline_x51v12_images_19403468437.jpg', '3', '2020-11-04 15:16:19', '2020-11-04 15:16:19'),
(510, 'upload/1604502979576-promo-artline_x51v12_images_19403472565.jpg', '4', '2020-11-04 15:16:19', '2020-11-04 15:16:19'),
(511, 'upload/1604505006430-promo-artline_x51v12.jpg', '1111', '2020-11-04 15:50:06', '2020-11-04 15:50:06'),
(512, 'upload/1604574553106-promo-19062020-101426_321-berlin.jpg', 'Німетчина', '2020-11-05 11:09:13', '2020-11-05 11:09:13'),
(513, 'upload/1604574580087-promo-19062020-101426_321-berlin.jpg', 'Німетчина', '2020-11-05 11:09:40', '2020-11-05 11:09:40'),
(514, 'upload/1604574650429-promo-19062020-095454_512-10-projets-de-voyage-a-PARIS.jpg', 'Венетція', '2020-11-05 11:10:50', '2020-11-05 11:10:50'),
(515, 'upload/1604574740584-promo-19062020-101942_928-Push_van_cat.jpg', '12312312', '2020-11-05 11:12:20', '2020-11-05 11:12:20'),
(516, 'upload/1604574852307-promo-19062020-101942_928-Push_van_cat.jpg', '', '2020-11-05 11:14:12', '2020-11-05 11:14:12'),
(517, 'upload/1604575094024-promo-19062020-101942_928-Push_van_cat.jpg', '1312', '2020-11-05 11:18:14', '2020-11-05 11:50:53'),
(518, 'upload/1604580276997-promo-19062020-101942_928-Push_van_cat.jpg', 'wqewe', '2020-11-05 12:44:37', '2020-11-05 12:44:37'),
(519, 'upload/1604580277003-promo-19062020-095454_512-10-projets-de-voyage-a-PARIS.jpg', '123131', '2020-11-05 12:44:37', '2020-11-05 12:44:37');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `adverts`
--
ALTER TABLE `adverts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `adverts`
--
ALTER TABLE `adverts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT для таблицы `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=520;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
