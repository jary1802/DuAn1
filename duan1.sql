-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 19, 2025 at 08:21 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `duan1`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `bio` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `bio`, `created_at`, `updated_at`) VALUES
(1, 'Phạm Ngọc Hiếu', NULL, '2025-03-21 00:59:23', '2025-07-19 18:31:57'),
(2, 'Minh tít', NULL, '2025-03-21 00:59:23', '2025-07-19 18:32:09'),
(3, 'Đạt 2 lỗ', NULL, '2025-03-26 14:49:50', '2025-07-19 18:32:18');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `ID` int NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Description` text,
  `Image` varchar(255) DEFAULT NULL,
  `Position` int NOT NULL,
  `Status` tinyint(1) DEFAULT '1',
  `CreatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`ID`, `Title`, `Description`, `Image`, `Position`, `Status`, `CreatedAt`, `UpdatedAt`) VALUES
(1, 'Legacy Noir', 'Cuốn hút', '../uploads/banner/1752952200_baner 1.webp', 0, 1, '2025-04-08 08:29:07', '2025-07-19 19:10:00'),
(2, 'nisaaa', 'Thời thượng', '../uploads/banner/1752952222_baner 2.png', 0, 1, '2025-04-08 08:29:24', '2025-07-19 19:10:22'),
(3, 'Ngọt Ngào', 'sumer', '../uploads/banner/1752952249_baner 3.jpg', 0, 1, '2025-04-08 08:29:38', '2025-07-19 19:10:49');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `id` int NOT NULL,
  `cart_id` int DEFAULT NULL,
  `comic_id` int DEFAULT NULL,
  `quantity` int NOT NULL,
  `unit_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Bad Boy ', 'Mùi hương của chút tệ gây tê các nàng', '2025-03-19 01:39:14', '2025-07-19 18:19:00'),
(2, 'Cool Guy', 'lạnh lùng nhưng vô cùng phong cách\r\n', '2025-03-19 01:39:14', '2025-07-19 18:19:27'),
(3, 'Gentleman ', 'Quý ông của nàng', '2025-03-21 01:19:57', '2025-07-19 18:20:05'),
(4, 'Playboy ', 'Gợi cảm, nổi bật, dễ gây chú ý.\r\n\r\n', '2025-03-21 01:51:19', '2025-07-19 18:20:23'),
(6, 'Sporty ', 'Năng động, tích cực', '2025-03-25 14:34:22', '2025-07-19 18:20:49'),
(7, 'Romantic ', 'Dịu dàng lãng mạng', '2025-03-25 14:34:45', '2025-07-19 18:21:14'),
(8, 'Boss ', 'Sang trọng , quyền lực\r\n', '2025-03-25 14:36:26', '2025-07-19 18:21:32'),
(9, 'Fresh Boy', 'Sạch sẽ dễ gần', '2025-03-25 14:36:53', '2025-07-19 18:21:50'),
(10, 'Sweet Guy', 'Ngọt ngào đáng yêu', '2025-03-25 14:37:15', '2025-07-19 18:22:05'),
(11, 'Mysterious ', 'Bí ẩn cuốn hút', '2025-03-25 14:37:35', '2025-07-19 18:22:17');

-- --------------------------------------------------------

--
-- Table structure for table `comics`
--

CREATE TABLE `comics` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `author_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `description` text,
  `publication_date` date DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `original_price` decimal(10,2) DEFAULT NULL,
  `stock_quantity` int NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `comics`
--

INSERT INTO `comics` (`id`, `title`, `author_id`, `category_id`, `description`, `publication_date`, `price`, `original_price`, `stock_quantity`, `image`, `created_at`, `updated_at`) VALUES
(53, 'Dark Instinct', 1, 1, 'Cuốn hút', '2025-07-01', '100000.00', '100000.00', 122, '../uploads/product/1752950552_pexels-valeriya-1961795.jpg', '2025-07-19 18:42:32', '2025-07-19 18:42:45'),
(54, 'No Mercy', 1, 1, 'Rực nồng', '2025-07-01', '200000.00', '400000.00', 435, '../uploads/product/1752950635_pexels-peg1997-12580619.jpg', '2025-07-19 18:43:55', '2025-07-19 18:43:55'),
(55, 'Rebel Soul', 1, 1, 'Lôi cuốn', '2025-07-01', '600000.00', '1000000.00', 45, '../uploads/product/1752950676_pexels-mart-production-8450248.jpg', '2025-07-19 18:44:36', '2025-07-19 18:44:36'),
(56, 'Nightfall', 1, 1, 'QUyến rũ', '2025-07-01', '350000.00', '550000.00', 454, '../uploads/product/1752950724_pexels-valeri-mak-2319397-3989394.jpg', '2025-07-19 18:45:24', '2025-07-19 18:45:24'),
(57, 'Sinister', 2, 2, 'Ngầu', '2025-06-30', '250000.00', '400000.00', 67, '../uploads/product/1752950758_pexels-peg1997-12563411.jpg', '2025-07-19 18:45:58', '2025-07-19 18:45:58'),
(58, 'Black Venom', 2, 2, 'Kì dị', '2025-06-30', '200000.00', '250000.00', 67, '../uploads/product/1752950793_pexels-vitalina-8793476.jpg', '2025-07-19 18:46:33', '2025-07-19 18:46:33'),
(59, 'Untamed', 2, 2, 'Lạnh lùng', '2025-07-05', '670000.00', '1500000.00', 54, '../uploads/product/1752950832_pexels-ron-lach-10534010.jpg', '2025-07-19 18:47:12', '2025-07-19 18:47:12'),
(60, 'Wicked Flame', 2, 2, 'Nhẹ dịu nhưng lạnh ', '2025-06-17', '150000.00', '200000.00', 565, '../uploads/product/1752950889_pexels-valeriya-1961784.jpg', '2025-07-19 18:48:09', '2025-07-19 19:36:07'),
(62, 'Phantom Heat', 3, 3, 'mÙI HƯƠNG Mĩ tho', '2025-07-02', '600000.00', '750000.00', 67, '../uploads/product/1752951003_pexels-peg1997-12580619.jpg', '2025-07-19 18:50:03', '2025-07-19 18:50:03'),
(63, 'Ocean Code', 3, 3, 'nam tính ', '2025-07-04', '450000.00', '600000.00', 90, '../uploads/product/1752951046_pexels-mart-production-8450248.jpg', '2025-07-19 18:50:46', '2025-07-19 18:50:46'),
(64, 'Frosted Sky', 3, 3, 'Lịch lãm', '2025-07-01', '1000000.00', '1500000.00', 15, '../uploads/product/1752951084_pexels-peg1997-12563411.jpg', '2025-07-19 18:51:24', '2025-07-19 18:51:24'),
(65, 'Blue Vibe', 1, 4, 'Boy phố', '2025-07-10', '150000.00', '250000.00', 45, '../uploads/product/1752951129_pexels-mart-production-8450248.jpg', '2025-07-19 18:52:09', '2025-07-19 18:52:09'),
(66, 'Cool Edge', 2, 4, 'Trai thanh', '2025-07-12', '250000.00', '400000.00', 56, '../uploads/product/1752951156_pexels-peg1997-12563411.jpg', '2025-07-19 18:52:36', '2025-07-19 18:52:36'),
(69, 'Silver Horizon', 2, 6, 'Tích cực', '2025-07-09', '500000.00', '566000.00', 56, '../uploads/product/1752951266_pexels-kpaukshtite-3615229.jpg', '2025-07-19 18:54:26', '2025-07-19 18:54:26'),
(70, 'Moonwave', 2, 6, 'trẻ trung', '2025-07-09', '150000.00', '400000.00', 60, '../uploads/product/1752951466_pexels-daria-liudnaya-8166566.jpg', '2025-07-19 18:57:46', '2025-07-19 18:57:46'),
(71, 'Arctic Pulse', 1, 7, 'Chất lượng từ roma', '2025-07-11', '500000.00', '700000.00', 34, '../uploads/product/1752951525_pexels-alesiakozik-7796498.jpg', '2025-07-19 18:58:45', '2025-07-19 18:58:45'),
(73, 'Crimson Bloom', 1, 8, 'Sếp ', '2025-07-02', '500000.00', '600000.00', 17, '../uploads/product/1752951662_pexels-felipepelaquim-1895015.jpg', '2025-07-19 19:01:02', '2025-07-19 19:01:02'),
(75, 'Amber Dream', 3, 8, 'Hương lâu mạnh mẽ', '2025-07-04', '800000.00', '1500000.00', 56, '../uploads/product/1752951766_pexels-daria-liudnaya-8166566.jpg', '2025-07-19 19:02:46', '2025-07-19 19:02:46'),
(76, 'Serenade', 3, 9, 'Sạch sẽ ', '2025-07-03', '150000.00', '300000.00', 14, '../uploads/product/1752951803_pexels-felipepelaquim-1895015.jpg', '2025-07-19 19:03:23', '2025-07-19 19:03:23'),
(77, 'Misty Rose', 3, 9, 'Mát mẻ', '2025-07-14', '450000.00', '500000.00', 42, '../uploads/product/1752951836_pexels-didsss-2508558.jpg', '2025-07-19 19:03:56', '2025-07-19 19:03:56'),
(78, 'Saffron Kiss', 1, 10, 'Ngon rẻ', '2025-07-01', '50000.00', '150000.00', 122, '../uploads/product/1752951894_pexels-cottonbro-4612154.jpg', '2025-07-19 19:04:54', '2025-07-19 19:34:54'),
(79, 'Sweet Mirage', 2, 10, 'Ngọt ngào', '2025-07-04', '120000.00', '250000.00', 21, '../uploads/product/1752951927_pexels-alesiakozik-7796322.jpg', '2025-07-19 19:05:27', '2025-07-19 19:05:27'),
(80, 'Poetry in Scent', 3, 10, 'TÌnh yêu', '2025-07-15', '450000.00', '600000.00', 20, '../uploads/product/1752951973_pexels-alesiakozik-7796317.jpg', '2025-07-19 19:06:13', '2025-07-19 19:15:59'),
(81, 'Opal Garden', 3, 11, 'Cô đơn', '2025-07-10', '450000.00', '800000.00', 44, '../uploads/product/1752952016_pexels-69816215-8365693.jpg', '2025-07-19 19:06:56', '2025-07-19 19:40:17'),
(82, 'Imperium', 2, 11, 'Sang trọng quý phái', '2025-07-02', '560000.00', '900000.00', 43, '../uploads/product/1752952046_pexels-cottonbro-4659794.jpg', '2025-07-19 19:07:26', '2025-07-19 19:07:26');

-- --------------------------------------------------------

--
-- Table structure for table `comic_sales`
--

CREATE TABLE `comic_sales` (
  `id` int NOT NULL,
  `comic_id` int DEFAULT NULL,
  `sale_type` enum('percent','fixed') NOT NULL,
  `sale_value` decimal(10,2) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `status` enum('active','inactive','pending') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `comic_sales`
--

INSERT INTO `comic_sales` (`id`, `comic_id`, `sale_type`, `sale_value`, `start_date`, `end_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 53, 'percent', '10.00', '2025-07-19 00:00:00', '2025-07-22 00:00:00', 'active', '2025-07-19 19:42:08', '2025-07-19 19:42:08');

-- --------------------------------------------------------

--
-- Table structure for table `comic_variants`
--

CREATE TABLE `comic_variants` (
  `id` int NOT NULL,
  `comic_id` int DEFAULT NULL,
  `format` enum('Bia cứng','Bia mềm') NOT NULL,
  `language` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `original_price` decimal(10,2) DEFAULT NULL,
  `stock_quantity` int NOT NULL,
  `publication_date` date DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isbn` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `ID` int NOT NULL,
  `user_id` int NOT NULL,
  `comics_id` int NOT NULL,
  `Content` text NOT NULL,
  `likes` int DEFAULT '0',
  `Dislike` int DEFAULT '0',
  `Create_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `Update_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`ID`, `user_id`, `comics_id`, `Content`, `likes`, `Dislike`, `Create_at`, `Update_at`, `status`) VALUES
(2, 3, 81, 'THơm lắm\r\n', 0, 0, '2025-07-20 02:41:35', '2025-07-20 02:41:35', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `order_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `total_amount` decimal(10,2) NOT NULL,
  `payment_status` enum('unpaid','paid','refunded','failed','processing') NOT NULL,
  `payment_method` enum('CREDIT','COD','BANKING','MOMO') NOT NULL,
  `shipping_status` enum('pending','delivering','delivered','returned','cancelled') NOT NULL,
  `shipping_address` text NOT NULL,
  `receiver_name` varchar(255) NOT NULL,
  `phone_car` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `order_date`, `total_amount`, `payment_status`, `payment_method`, `shipping_status`, `shipping_address`, `receiver_name`, `phone_car`) VALUES
(7, 3, '2025-07-19 19:11:44', '150000.00', 'paid', 'COD', 'returned', 'ghjghjhgjhg', 'Hiếu', '0364598280'),
(8, 3, '2025-07-19 19:15:59', '500000.00', 'processing', 'MOMO', 'pending', 'ftghfgh', 'Hiếu', '0364598280'),
(9, 3, '2025-07-19 19:34:54', '50000.00', 'paid', 'COD', 'returned', 'dfdf', 'Hiếu', '0364598280'),
(10, 3, '2025-07-19 19:36:07', '150000.00', 'unpaid', 'COD', 'cancelled', 'dfgdsg', 'Hiếu', '0364598280'),
(11, 3, '2025-07-19 19:40:17', '450000.00', 'paid', 'MOMO', 'delivering', 'fgfg', 'Hiếu', '0364598280');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int NOT NULL,
  `order_id` int DEFAULT NULL,
  `comic_id` int DEFAULT NULL,
  `quantity` int NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `comic_id`, `quantity`, `unit_price`, `title`, `image`, `subtotal`) VALUES
(9, 7, 60, 1, '150000.00', NULL, NULL, NULL),
(10, 8, 78, 1, '50000.00', NULL, NULL, NULL),
(11, 8, 80, 1, '450000.00', NULL, NULL, NULL),
(12, 9, 78, 1, '50000.00', NULL, NULL, NULL),
(13, 10, 60, 1, '150000.00', NULL, NULL, NULL),
(14, 11, 81, 1, '450000.00', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int NOT NULL,
  `comic_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `rating` enum('very_bad','bad','average','good','excellent') NOT NULL,
  `review_text` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('pending','approved','rejected') DEFAULT 'pending',
  `order_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `avatar`, `role`, `created_at`, `updated_at`) VALUES
(3, 'Hiếu', 'jaryjary180205@gmail.com', '$2y$10$8sB78RPZQPLrYG/hqTcw6OZmaA3ODuCrxWrf4WKBC4wVsTR2uq/xq', '0364598280', 'default.jpg', 'admin', '2025-07-19 13:36:48', '2025-07-19 13:37:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_id` (`cart_id`),
  ADD KEY `comic_id` (`comic_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comics`
--
ALTER TABLE `comics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `comic_sales`
--
ALTER TABLE `comic_sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comic_id` (`comic_id`);

--
-- Indexes for table `comic_variants`
--
ALTER TABLE `comic_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comic_id` (`comic_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `comics_id` (`comics_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `comic_id` (`comic_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comic_id` (`comic_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `comics`
--
ALTER TABLE `comics`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `comic_sales`
--
ALTER TABLE `comic_sales`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comic_variants`
--
ALTER TABLE `comic_variants`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `cart_items_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_items_ibfk_2` FOREIGN KEY (`comic_id`) REFERENCES `comics` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comics`
--
ALTER TABLE `comics`
  ADD CONSTRAINT `comics_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `comics_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `comic_sales`
--
ALTER TABLE `comic_sales`
  ADD CONSTRAINT `comic_sales_ibfk_1` FOREIGN KEY (`comic_id`) REFERENCES `comics` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comic_variants`
--
ALTER TABLE `comic_variants`
  ADD CONSTRAINT `comic_variants_ibfk_1` FOREIGN KEY (`comic_id`) REFERENCES `comics` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`comics_id`) REFERENCES `comics` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`comic_id`) REFERENCES `comics` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`comic_id`) REFERENCES `comics` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_ibfk_3` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
