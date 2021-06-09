-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 09, 2021 at 05:18 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ks`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(5000) DEFAULT NULL,
  `store_id` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `store_id`, `date`) VALUES
(2, 'Laptops', 'https://res-1.cloudinary.com/grover/image/upload/e_trim/c_limit,f_auto,fl_png8.lossy,h_1600,q_auto,w_1600/v1570781677/suuirmdgannerzx0se5q.png', 10, '2021-06-09 15:35:07'),
(3, 'Desktops', 'https://c.s-microsoft.com/en-us/CMSImages/1920_Panel1_Hero_Desktop.jpg?version=e7d0925b-ff2a-6710-645d-8b37f62d4b29', 10, '2021-06-09 15:36:24'),
(4, 'Hardware', 'https://image.freepik.com/free-vector/computer-cartoon-icon-set-computer-hardware_158626-84.jpg', 10, '2021-06-09 15:37:07'),
(5, 'Software', 'https://www.freeiconspng.com/uploads/software-icon-30.png', 10, '2021-06-09 15:38:52'),
(6, 'laptop', 'https://res-1.cloudinary.com/grover/image/upload/e_trim/c_limit,f_auto,fl_png8.lossy,h_1600,q_auto,w_1600/v1570781677/suuirmdgannerzx0se5q.png', 9, '2021-06-09 15:39:32'),
(7, 'Desktop', 'https://c.s-microsoft.com/en-us/CMSImages/1920_Panel1_Hero_Desktop.jpg?version=e7d0925b-ff2a-6710-645d-8b37f62d4b29', 9, '2021-06-09 15:39:42'),
(8, 'Hardware', 'https://image.freepik.com/free-vector/computer-cartoon-icon-set-computer-hardware_158626-84.jpg', 9, '2021-06-09 15:39:52'),
(9, 'Software', 'https://www.freeiconspng.com/uploads/software-icon-30.png', 9, '2021-06-09 15:40:03'),
(10, 'Laptop', 'https://res-1.cloudinary.com/grover/image/upload/e_trim/c_limit,f_auto,fl_png8.lossy,h_1600,q_auto,w_1600/v1570781677/suuirmdgannerzx0se5q.png', 8, '2021-06-09 15:41:25'),
(11, 'Desktop', 'https://c.s-microsoft.com/en-us/CMSImages/1920_Panel1_Hero_Desktop.jpg?version=e7d0925b-ff2a-6710-645d-8b37f62d4b29', 8, '2021-06-09 15:41:33'),
(12, 'Hardware', 'https://image.freepik.com/free-vector/computer-cartoon-icon-set-computer-hardware_158626-84.jpg', 8, '2021-06-09 15:41:40'),
(13, 'Software', 'https://www.freeiconspng.com/uploads/software-icon-30.png', 8, '2021-06-09 15:41:52'),
(14, 'laptop', 'https://res-1.cloudinary.com/grover/image/upload/e_trim/c_limit,f_auto,fl_png8.lossy,h_1600,q_auto,w_1600/v1570781677/suuirmdgannerzx0se5q.png', 7, '2021-06-09 15:43:33'),
(15, 'desktop', 'https://c.s-microsoft.com/en-us/CMSImages/1920_Panel1_Hero_Desktop.jpg?version=e7d0925b-ff2a-6710-645d-8b37f62d4b29', 7, '2021-06-09 15:43:42'),
(16, 'hardware', 'https://image.freepik.com/free-vector/computer-cartoon-icon-set-computer-hardware_158626-84.jpg', 7, '2021-06-09 15:43:51'),
(17, 'software', 'https://www.freeiconspng.com/uploads/software-icon-30.png', 7, '2021-06-09 15:44:01'),
(18, 'laptop', 'https://res-1.cloudinary.com/grover/image/upload/e_trim/c_limit,f_auto,fl_png8.lossy,h_1600,q_auto,w_1600/v1570781677/suuirmdgannerzx0se5q.png', 6, '2021-06-09 15:44:18'),
(19, 'desktop', 'https://c.s-microsoft.com/en-us/CMSImages/1920_Panel1_Hero_Desktop.jpg?version=e7d0925b-ff2a-6710-645d-8b37f62d4b29', 6, '2021-06-09 15:44:27'),
(20, 'hardware', 'https://image.freepik.com/free-vector/computer-cartoon-icon-set-computer-hardware_158626-84.jpg', 6, '2021-06-09 15:44:39'),
(21, 'software', 'https://www.freeiconspng.com/uploads/software-icon-30.png', 6, '2021-06-09 15:44:49'),
(22, 'laptop', 'https://res-1.cloudinary.com/grover/image/upload/e_trim/c_limit,f_auto,fl_png8.lossy,h_1600,q_auto,w_1600/v1570781677/suuirmdgannerzx0se5q.png', 5, '2021-06-09 15:45:07'),
(23, 'Desktop', 'https://c.s-microsoft.com/en-us/CMSImages/1920_Panel1_Hero_Desktop.jpg?version=e7d0925b-ff2a-6710-645d-8b37f62d4b29', 5, '2021-06-09 15:48:48'),
(24, 'hardware', 'https://image.freepik.com/free-vector/computer-cartoon-icon-set-computer-hardware_158626-84.jpg', 5, '2021-06-09 15:48:58'),
(25, 'software', 'https://www.freeiconspng.com/uploads/software-icon-30.png', 5, '2021-06-09 15:49:07'),
(26, 'laptop', 'https://res-1.cloudinary.com/grover/image/upload/e_trim/c_limit,f_auto,fl_png8.lossy,h_1600,q_auto,w_1600/v1570781677/suuirmdgannerzx0se5q.png', 4, '2021-06-09 15:49:22'),
(27, 'desktop', 'https://c.s-microsoft.com/en-us/CMSImages/1920_Panel1_Hero_Desktop.jpg?version=e7d0925b-ff2a-6710-645d-8b37f62d4b29', 4, '2021-06-09 15:49:30'),
(28, 'hardware', 'https://image.freepik.com/free-vector/computer-cartoon-icon-set-computer-hardware_158626-84.jpg', 4, '2021-06-09 15:49:37'),
(29, 'software', 'https://www.freeiconspng.com/uploads/software-icon-30.png', 4, '2021-06-09 15:49:50'),
(30, 'laptop', 'https://res-1.cloudinary.com/grover/image/upload/e_trim/c_limit,f_auto,fl_png8.lossy,h_1600,q_auto,w_1600/v1570781677/suuirmdgannerzx0se5q.png', 3, '2021-06-09 15:50:09'),
(31, 'desktop', 'https://c.s-microsoft.com/en-us/CMSImages/1920_Panel1_Hero_Desktop.jpg?version=e7d0925b-ff2a-6710-645d-8b37f62d4b29', 3, '2021-06-09 15:50:16'),
(32, 'hardware', 'https://image.freepik.com/free-vector/computer-cartoon-icon-set-computer-hardware_158626-84.jpg', 3, '2021-06-09 15:50:23'),
(33, 'software', 'https://www.freeiconspng.com/uploads/software-icon-30.png', 3, '2021-06-09 15:50:31');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `image` varchar(5000) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`, `category_id`, `date`) VALUES
(1, 'Adobe Photoshop', '200', 'https://upload.wikimedia.org/wikipedia/commons/a/af/Adobe_Photoshop_CC_icon.svg', 5, '2021-06-09 15:52:11'),
(2, 'Nord VPN', '50', 'https://pbs.twimg.com/profile_images/1008692863364943872/JUF1IBZv_400x400.jpg', 5, '2021-06-09 15:54:14'),
(3, 'Microsoft Office', '150', 'https://upload.wikimedia.org/wikipedia/commons/0/0c/Microsoft_Office_logo_(2013–2019).svg', 5, '2021-06-09 15:56:31'),
(4, 'Adobe After Effect CC', '400', 'https://upload.wikimedia.org/wikipedia/commons/c/cb/Adobe_After_Effects_CC_icon.svg', 5, '2021-06-09 15:57:32'),
(5, 'Adobe Photoshop', '100', 'https://upload.wikimedia.org/wikipedia/commons/a/af/Adobe_Photoshop_CC_icon.svg', 9, '2021-06-09 15:58:20'),
(6, 'Crucial RAM 8GB DDR4 2666 MHz CL19 Desktop Memory CT8G4DFRA266', '80', 'https://images-na.ssl-images-amazon.com/images/I/61lMJTGacmL._AC_SL1280_.jpg', 4, '2021-06-09 15:59:05'),
(7, '2020 Apple iMac with Retina 4K Display (21.5-inch, 8GB RAM, 256GB SSD Storage)', '1200', 'https://images-na.ssl-images-amazon.com/images/I/918idkuRlzL._AC_SL1500_.jpg', 3, '2021-06-09 16:00:37'),
(8, '2020 Apple MacBook Air with Apple M1 Chip (13-inch, 8GB RAM, 256GB SSD Storage) - Gold', '999', 'https://images-na.ssl-images-amazon.com/images/I/71vFKBpKakL._AC_SL1500_.jpg', 2, '2021-06-09 16:01:33');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `logo` varchar(5000) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `name`, `logo`, `date`) VALUES
(3, 'Store Three', 'https://img.etimg.com/thumb/msid-75214713,width-300,imgsize-122620,,resizemode-4,quality-100/1.jpg', '2021-06-09 15:28:58'),
(4, 'Store Four', 'https://img.etimg.com/thumb/msid-75214713,width-300,imgsize-122620,,resizemode-4,quality-100/1.jpg', '2021-06-09 15:29:01'),
(5, 'Store Five', 'https://img.etimg.com/thumb/msid-75214713,width-300,imgsize-122620,,resizemode-4,quality-100/1.jpg', '2021-06-09 15:29:05'),
(6, 'Store Six', 'https://img.etimg.com/thumb/msid-75214713,width-300,imgsize-122620,,resizemode-4,quality-100/1.jpg', '2021-06-09 15:29:12'),
(7, 'Store Seven', 'https://img.etimg.com/thumb/msid-75214713,width-300,imgsize-122620,,resizemode-4,quality-100/1.jpg', '2021-06-09 15:29:16'),
(8, 'Store Eight', 'https://img.etimg.com/thumb/msid-75214713,width-300,imgsize-122620,,resizemode-4,quality-100/1.jpg', '2021-06-09 15:29:20'),
(9, 'Store Nine', 'https://img.etimg.com/thumb/msid-75214713,width-300,imgsize-122620,,resizemode-4,quality-100/1.jpg', '2021-06-09 15:29:24'),
(10, 'Store Ten', 'https://img.etimg.com/thumb/msid-75214713,width-300,imgsize-122620,,resizemode-4,quality-100/1.jpg', '2021-06-09 15:29:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
