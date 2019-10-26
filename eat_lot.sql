-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 26, 2019 at 08:37 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eat_lot`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_details`
--

DROP TABLE IF EXISTS `admin_details`;
CREATE TABLE IF NOT EXISTS `admin_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_details`
--

INSERT INTO `admin_details` (`id`, `email`, `password`, `name`) VALUES
(2, 'Ragulan28@gmail.com', '12345678', 'ragulan');

-- --------------------------------------------------------

--
-- Table structure for table `cooker_details`
--

DROP TABLE IF EXISTS `cooker_details`;
CREATE TABLE IF NOT EXISTS `cooker_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cooker_details`
--

INSERT INTO `cooker_details` (`id`, `email`, `password`, `name`) VALUES
(96, 'cook11', '124324dev', 'dcsvs'),
(97, 'cook1', 'cook12345678', 'Cooker 2'),
(98, 'cook3', 'cook12345678', 'Cooker 3'),
(99, 'cook4', 'cook12345678', 'Cooker 4');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `email`, `password`, `name`) VALUES
(4, 'Ragulan28@gmail.com', '12345678q', 'Ragulan Gopalapillai'),
(5, 'Ragulan28@gmail.com', '12345678q', 'qqq'),
(6, 'chiranthajtk@gmail.com', '123456789qa', 'Chirantha');

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

DROP TABLE IF EXISTS `customer_order`;
CREATE TABLE IF NOT EXISTS `customer_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `cooker_id` int(11) NOT NULL DEFAULT '0',
  `seller_id` int(11) NOT NULL DEFAULT '0',
  `no` int(11) NOT NULL DEFAULT '1',
  `state` int(11) NOT NULL DEFAULT '0',
  `price` varchar(450) NOT NULL,
  `adress` varchar(450) NOT NULL,
  `details` varchar(450) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_order`
--

INSERT INTO `customer_order` (`id`, `name`, `customer_id`, `cooker_id`, `seller_id`, `no`, `state`, `price`, `adress`, `details`) VALUES
(13, 'Pizza 1', 4, 97, 6, 1, 4, '250', 'Ragulan Gopalapillai<br>Karainagar<br>Jaffna<br>s<br>East timor<br>', 'Paneer - 1<br>Olives - 1<br>Mushroom - 1<br>'),
(14, 'Pizza 1', 4, 97, 6, 1, 4, '250', 'Ragulan Gopalapillai<br>Karainagar<br>Jaffna<br>s<br>East timor<br>', 'Paneer - 1<br>Olives - 1<br>Mushroom - 1<br>'),
(15, 'Pizza 1', 4, 98, 7, 1, 4, '250', 'Ragulan Gopalapillai<br>Karainagar<br>Jaffna<br>n<br>Jamaica<br>', 'Paneer - 1<br>Olives - 1<br>Mushroom - 1<br>'),
(16, 'pizza 2', 4, 97, 7, 3, 3, '111', 'Ragulan Gopalapillai<br>Karainagar<br>Jaffna<br>v<br>Democratic republic of the congo<br>', 'Capsicum - 1<br>Olives - 1<br>'),
(17, 'Pizza 1', 4, 97, 6, 3, 4, '250', 'Ragulan Gopalapillai<br>Karainagar<br>Jaffna<br>v<br>Democratic republic of the congo<br>', 'Paneer - 1<br>Olives - 1<br>Mushroom - 1<br>'),
(18, 'Pizza 5', 4, 97, 0, 1, 2, '324', 'Ragulan Gopalapillai<br>Karainagar<br>Jaffna<br>f<br>Falkland islands<br>', 'Capsicum - 1<br>'),
(19, 'Pizza 4', 4, 0, 0, 1, 0, '323', 'Ragulan Gopalapillai<br>Karainagar<br>Jaffna<br>f<br>Falkland islands<br>', 'Mushroom - 1<br>'),
(20, 'Pizza 3', 4, 0, 0, 1, 0, '212', 'Ragulan Gopalapillai<br>Karainagar<br>Jaffna<br>f<br>Falkland islands<br>', 'Capsicum - 1<br>Paneer - 1<br>'),
(21, 'pizza 2', 4, 0, 0, 1, 0, '111', 'Ragulan Gopalapillai<br>Karainagar<br>Jaffna<br>f<br>Falkland islands<br>', 'Capsicum - 1<br>Olives - 1<br>'),
(22, 'fbgrh', 4, 0, 0, 1, 0, '5963', 'vas<br>agsd<br>gds<br>agre<br>agea<br>', 'aa - 1<br>'),
(23, 'Pizza 1', 6, 0, 0, 1, 0, '250', 'erty<br>tyuki<br>ghjk<br>ghjkkl<br>hgjhkjk<br>', 'Paneer - 1<br>Olives - 1<br>Mushroom - 1<br>');

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

DROP TABLE IF EXISTS `ingredients`;
CREATE TABLE IF NOT EXISTS `ingredients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `icon` text NOT NULL,
  `image` text NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`id`, `name`, `icon`, `image`, `price`) VALUES
(20, 'Onion', 'foods/ingredients/icon/toppingsOnion.jpg', 'foods/ingredients/customise-pizza-onion.png', 5),
(21, 'Capsicum', 'foods/ingredients/icon/toppingsCapsicum.jpg', 'foods/ingredients/customise-pizza-capsicum.png', 4),
(22, 'Mushroom', 'foods/ingredients/icon/toppingsMushroom.jpg', 'foods/ingredients/customise-pizza-mushroom.png', 3),
(23, 'Olives', 'foods/ingredients/icon/toppingsOlives.jpg', 'foods/ingredients/customise-pizza-greenOlives.png', 6),
(24, 'Paneer', 'foods/ingredients/icon/toppingsPaneer.jpg', 'foods/ingredients/customise-pizza-paneer.png', 6),
(25, 'aa', 'foods/ingredients/icon/toppingsJalapeno.jpg', 'foods/ingredients/customise-pizza-jalapeno.png', 24);

-- --------------------------------------------------------

--
-- Table structure for table `mainfood`
--

DROP TABLE IF EXISTS `mainfood`;
CREATE TABLE IF NOT EXISTS `mainfood` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `image` text NOT NULL,
  `ingredients` text NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mainfood`
--

INSERT INTO `mainfood` (`id`, `name`, `image`, `ingredients`, `price`) VALUES
(16, 'Pizza 1', 'foods/food/pizza1.png', 'Paneer - 1<br>Olives - 1<br>Mushroom - 1<br>', 250),
(17, 'pizza 2', 'foods/food/pizza2.png', 'Capsicum - 1<br>Olives - 1<br>', 111),
(18, 'Pizza 3', 'foods/food/pizza3.png', 'Capsicum - 1<br>Paneer - 1<br>', 212),
(19, 'Pizza 4', 'foods/food/pizza4.png', 'Mushroom - 1<br>', 323),
(20, 'Pizza 5', 'foods/food/pizza5.png', 'Capsicum - 1<br>', 324),
(21, 'Pizza 5', 'foods/food/pizza1.png', 'Olives - 1<br>Capsicum - 1<br>', 234),
(22, 'Pizza 8', 'foods/food/pizza5.png', 'Capsicum - 1<br>Paneer - 3<br>Olives - 1<br>', 2343),
(23, 'Pizza 7', 'foods/food/pizza2.png', 'Olives - 2<br>Mushroom - 1<br>Capsicum - 1<br>', 111),
(24, 'fbgrh', 'foods/food/pizza5.png', 'aa - 1<br>', 5963);

-- --------------------------------------------------------

--
-- Table structure for table `seller_details`
--

DROP TABLE IF EXISTS `seller_details`;
CREATE TABLE IF NOT EXISTS `seller_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seller_details`
--

INSERT INTO `seller_details` (`id`, `email`, `password`, `name`) VALUES
(6, 'dis 1', 'dis12345678', 'Distributor 1'),
(7, 'dis 2', 'dis12345678', 'Distributor 1'),
(8, 'dis 3', 'dis12345678', 'Distributor 3');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
