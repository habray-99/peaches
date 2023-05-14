-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2023 at 06:35 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chothings`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `hashing_pw` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`order_id`, `product_id`, `quantity`, `hashing_pw`) VALUES
(NULL, 1, 5, '1'),
(2, 2, 2, 'khityureshdtyfcx'),
(2, 1, 4, 'jhgcfgv bjhyftgy6fdrftgv'),
(1, 4, 3, 'vbnjkhgf cdxsz'),
(3, 1, 2, 'jkloiuyt zsefghj'),
(4, 3, 4, 'qazwsx edcrfv'),
(5, 2, 1, 'mnbvcxz lkjhgfdsa'),
(6, 1, 3, 'poiuytrewq lkjhgfd');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `photo` varchar(500) DEFAULT NULL,
  `gender` int(1) DEFAULT NULL,
  `is_Admin` int(11) NOT NULL,
  `hash_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `address`, `contact`, `mail`, `photo`, `gender`, `is_Admin`, `hash_password`) VALUES
(1, 'dipseh ', 'pokhara ', '1234567890', 'WOHFEHWF@eqifvb.com', 'ihwvbd.png', 1, 1, ''),
(2, 'Siddhartha ', 'Syangja ', '33445566', 'WQJEJD@KSBD.com', 'iop.png', 1, 1, 'qwejyipxktqy'),
(3, 'Emily', 'Pokhara', '99887766', 'EMILY@XYZ.com', 'abc.png', 2, 2, 'hskdfjeow'),
(4, 'Jennifer', 'Kathmandu', '77788899', 'JENNIFER@GMAIL.com', 'xyz.png', 2, 4, 'dfgjkfhe'),
(5, 'Michael', 'Birgunj', '11223344', 'MICHAEL@OUTLOOK.com', 'pqr.png', 1, 2, 'tyuilkjh'),
(6, 'Emma', 'Nepalgunj', '66554433', 'EMMA@YAHOO.com', 'lmn.png', 2, 3, 'zxcvbnm');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `total_price` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `total_price`) VALUES
(1, 3, '3500'),
(2, 1, '2000'),
(3, 1, '2500'),
(4, 4, '2700'),
(5, 1, '430'),
(6, 2, '1200'),
(7, 3, '1850');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_ID` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `product_desc` varchar(1000) NOT NULL,
  `stock` int(11) DEFAULT NULL,
  `photo` varchar(1000) DEFAULT NULL,
  `product_category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_ID`, `product_name`, `price`, `product_desc`, `stock`, `photo`, `product_category_id`) VALUES
(1, 'Classic White T-Shirt', '20', 'A simple and comfortable white t-shirt made of 100% cotton  ', 100, NULL, 1),
(2, 'Blue Jeans ', '50', 'A classic pair of blue jeans made of durable denim material', 50, NULL, 6),
(3, 'Black Leather Jacket ', '150', 'A stylish and durable black leather jacket with a quilted interior lining', 25, NULL, 11),
(4, 'Striped Maxi Dress', '70', 'A fashionable and comfortable maxi dress with black and white stripes', 75, NULL, 16),
(5, 'Running Shoes', '90', 'A pair of lightweight and breathable running shoes with good support and traction', 30, NULL, 22),
(6, 'Yoga Mat', '30', 'A high-quality yoga mat made of non-slip material for improved stability during poses', 100, NULL, 27),
(7, 'polo shirt', '395', 'a close-fitting pullover often a knit shirt with short or long sleeves and a turnover collar or banded neck.', 25, 'polo.png', 1),
(8, 'Men\'s yoga ware', '35', 'We have developed ourselves as the most promising manufacturer and exporter of Men\'s Yoga Wear. Women\'s activewear yoga & workout legging with anti-chafing stitching, gusseted crotch for extended stretch & durability, and zippered utility pocket at the centre back of the waistband. Ankle length - 67 cm inseam for all sizes.', 25, 'asrfgbrnz.png', 27),
(9, 'Zara T-shirt', '400', 'Stylish and comfortable, the Zara t-shirt is a versatile essential for any wardrobe', 35, 'zara.png', 2),
(10, 'Armani shorts', '370', 'Sophisticated and stylish, Armani shorts offer a sleek and modern look', 40, 'armani.png', 8),
(11, 'Gucci Pant', '580', 'Gucci pants exude luxury and style with their impeccable design', 20, 'gucci.jpg', 6),
(12, 'Polo shirt', '280', 'Classic and timeless, the polo shirt is a versatile wardrobe staple', 50, 'polo.jpg', 1),
(13, 'Puma shorts', '180', 'Puma shorts are sporty and comfortable, perfect for active lifestyles', 70, 'puma.jpg', 8);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `product_category_id` int(11) NOT NULL,
  `product_category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`product_category_id`, `product_category_name`) VALUES
(1, 'Shirts'),
(2, 'T-Shirts'),
(3, 'Polo Shirts'),
(4, 'Hoodies'),
(5, 'Sweatshirts'),
(6, 'Pants'),
(7, 'Jeans'),
(8, 'Shorts'),
(9, 'Dresses'),
(10, 'Skirts'),
(11, 'Jackets'),
(12, 'Coats'),
(13, 'Blazers'),
(14, 'Suits'),
(15, 'Swimwear'),
(16, 'Lingerie'),
(17, 'Underwear'),
(18, 'Socks'),
(19, 'Hats'),
(20, 'Scarves'),
(21, 'Gloves'),
(22, 'Shoes'),
(23, 'Sneakers'),
(24, 'Boots'),
(25, 'Sandals'),
(26, 'Slippers'),
(27, 'yoga');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD KEY `product_id` (`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_ID`),
  ADD KEY `product_category_id` (`product_category_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`product_category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `product_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_ID`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`product_category_id`) REFERENCES `product_category` (`product_category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
