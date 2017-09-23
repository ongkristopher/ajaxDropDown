-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2017 at 03:32 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_category` text NOT NULL,
  `product_name` text NOT NULL,
  `product_image` text NOT NULL,
  `product_price` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_category`, `product_name`, `product_image`, `product_price`) VALUES
(1, 'Basketball Shoes', 'Basketball Shoes 1', 'Basketball Shoes Image 1', 'Basketball Shoes Price 1'),
(2, 'Basketball Shoes', 'Basketball Shoes 2', 'Basketball Shoes image 2', 'Basketball Shoes price 2'),
(3, 'Running Shoes', 'Running Shoes 1', 'Running Shoes image 1', 'Running Shoes price 1'),
(4, 'Running Shoes', 'Running Shoes 2', 'Running Shoes image 2', 'Running Shoes price 2'),
(5, 'Nike Sportswear', 'Nike Sportswear 1', 'Nike Sportswear image 1', 'Nike Sportswear price 1'),
(6, 'Nike Sportswear', 'Nike Sportswear 2', 'Nike Sportswear image 2', 'Nike Sportswear price 2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
