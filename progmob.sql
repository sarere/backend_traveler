-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 04, 2017 at 07:41 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `progmob`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `place_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `place_id`, `created_at`, `updated_at`) VALUES
(1, 'outdoor', 1, NULL, NULL),
(2, 'outdoor', 2, NULL, NULL),
(3, 'outdoor', 3, NULL, NULL),
(4, 'culture', 4, NULL, NULL),
(5, 'outdoor', 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `find_travelers`
--

CREATE TABLE `find_travelers` (
  `id` int(10) UNSIGNED NOT NULL,
  `place_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(13, '2014_10_12_000000_create_users_table', 1),
(14, '2014_10_12_100000_create_password_resets_table', 1),
(15, '2017_12_03_073041_create_testings_table', 1),
(16, '2017_12_03_142555_create_places_table', 1),
(17, '2017_12_03_143952_add_category_to_places', 1),
(18, '2017_12_03_192322_create_categories_table', 1),
(19, '2017_12_03_192335_create_reviews_table', 1),
(20, '2017_12_03_193855_create_find_travelers_table', 1),
(21, '2017_12_03_213427_add_rating_to_reviews', 2),
(22, '2017_12_03_213853_add_rating_to_reviews', 3),
(23, '2017_12_03_214236_add_rating_to_testings', 4),
(24, '2017_12_03_214350_add_rating_to_reviews', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `id` int(10) UNSIGNED NOT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `picture_url` text COLLATE utf8mb4_unicode_ci,
  `name_place` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` double(8,2) NOT NULL DEFAULT '0.00',
  `about` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`id`, `latitude`, `longitude`, `picture_url`, `name_place`, `rating`, `about`, `created_at`, `updated_at`, `category`) VALUES
(1, NULL, NULL, '1.jpg', 'Jogja Bay Pirates Adventure Waterpark', 2.75, 'Jogja Bay merupakan tempat arena permainan air yang mengacu waterbom di Bali dan waterpark di Orlando AS. Wahana terlengkap juga berusaha dicapai oleh Jogja Bay dengan memiliki 19 jenis wahana dengan keunggulan ‘How to survive in tsunamy and earthquake’. Disini tidak sebatas wisata air saja. Melainkan ada wahana edukasinya.', NULL, NULL, 'Outdoor'),
(2, NULL, NULL, '2.jpg', 'Desa Wisata Kalibiru', 2.00, 'Desa Wisata Kalibiru terkenal dengan pemandangan dari ketinggian yang indah. Mulai dari pemandangan Waduk Sermo hingga flying fox di atas bukit. Tak kalah cantik dengan Tebing Keraton di Bandung.', NULL, NULL, 'Outdoor'),
(3, NULL, NULL, '3.jpg', 'Puncak Kosakora', 0.50, 'Kosakora merupakan puncak bukit yang menawarkan keindahan yang sangat menawan. Dari Puncak Kosakora Anda bisa melihat pemandangan perbukitan, pemandangan pantai, sunrise dan sunset diatas Puncak Kosakora.', NULL, NULL, 'Outdoor'),
(4, NULL, NULL, '4.jpg', 'De Mata Trick Eye Museum', 0.00, 'De Mata trick Eye Museum memiliki sekitar 120 koleksi gambar 3 dimensi. Wisatawan dapat melampiaskan hasrat ke-narsis-annya pada setiap koleksi di museum ini. Jangan lupa, pastikan baterai kamera Anda dalam kondisi penuh. Karena sudah barang pasti, Anda akan jeprat-jepret kamera puluhan sampai ratusan kali di museum ini.', NULL, NULL, 'Outdoor'),
(5, NULL, NULL, '5.jpg', 'Kebun Buah Mangunan', 0.00, 'Alamat dan lokasi Kebun Buah Mangunan terletak di Mangunan, Kecamatan Dlingo, Kabupaten Bantul. Lokasi ini berjarak sekitar 15 km dari ibukota Kabupaten Bantul, dan 35 km dari pusat Kota Yogyakarta. Traveler dapat melihat keindahan alam Bantul yang masih hijau.', NULL, NULL, 'Outdoor'),
(6, NULL, NULL, '6.jpg', 'Upside Down World Jogja', 3.25, 'Sama seperti Upside Down World Bali, disini juga masih mengusung tema / konsep rumah atau tempat tinggal. Ada delapan spot untuk hunting foto disini, yaitu living room atau ruang tamu, bath room atau kamar mandi/toilet, kitchen atau dapur, master bed room, kids rooms, dining room atau ruang makan, laundry room, dan ada juga ruang 3 D.', NULL, NULL, 'Culture'),
(7, NULL, NULL, '7.jpg', 'Taman Tebing Breksi', 0.00, 'Tebing Breksi yang terletak di Pedukuhan Nglengkong, Groyokan Sambirejo, Prambanan ini menawarkan spot foto yang keren dan unik. Anda akan menemukan bongkahan bebatuan yang sebagian sengaja dipahat dengan ukiran yang cantik. Salah satunya adalah pahatan berbentuk wayang yang cocok sekali dijadikan sebagai latar untuk berfoto.', NULL, NULL, 'Culture'),
(8, NULL, NULL, '8.jpg', 'Kebun Buah Langka Sedayu', 0.00, 'Disini Anda akan disuguhi aneka tanaman buah langka yang berasal dari Indonesia dan luar negeri. Kebun ini mempunyai koleksi sekitar 300 buah tanaman langka seperti Anggur Brasil Basil (Jaboticaba), Buah Tin, Blackberry, Kacang Amazon, Jeruk Nagami dan masih banyak yang lainnya.', NULL, NULL, 'Culture'),
(9, NULL, NULL, '9.jpg', 'Malioboro', 0.00, 'Malioboro adalah salah satu tempat wisata di Jogja yang merupakan favorit para wisatawan. Bahkan, hampir semua orang yang pernah berkunjung ke kota ini pasti pernah menyambangi Malioboro. Tempat ini merupakan sebuah kawasan yang menawarkan beragam daya tarik. Pengunjung bisa berbelanja batik, duduk santai di bangku-bangku yang tersedia di trotoar, atau memanjakan lidah dengan berwisata kuliner.', NULL, NULL, 'Souvenir');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `place_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rating_review` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `title`, `review`, `place_id`, `user_id`, `created_at`, `updated_at`, `rating_review`) VALUES
(18, 'as', 'a', 6, 4, NULL, NULL, 2.00),
(19, 'as', 'a', 6, 2, NULL, NULL, 4.50),
(20, 'hxhchhc', 'Hxhxhhx', 1, 4, NULL, NULL, 4.00),
(21, 'hsjsj', 'Hxjfjdj', 1, 2, NULL, NULL, 1.50),
(22, 'vh', 'Ndjjd', 2, 2, NULL, NULL, 2.00),
(23, 'bbb', 'Hxhxhxhhzhxhz', 3, 2, NULL, NULL, 0.50);

-- --------------------------------------------------------

--
-- Table structure for table `testings`
--

CREATE TABLE `testings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `status` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `rating_review` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testings`
--

INSERT INTO `testings` (`id`, `name`, `status`, `created_at`, `rating_review`) VALUES
(1, 'rere', 're', NULL, 0.00),
(2, 'kent', 'asd', NULL, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rere', 'squalray@gmail.com', '$2y$10$9e3r20FqyZl/JTB7KNyWYOrZUOyvSS8c3VUNexQPrupXGvC4J6XQW', NULL, NULL, NULL),
(2, 'Rere', 'rere@gmail.com', '$2y$10$9e3r20FqyZl/JTB7KNyWYOrZUOyvSS8c3VUNexQPrupXGvC4J6XQW', NULL, NULL, NULL),
(3, 'asd', 'asd@gmail.com', '$2y$10$g8eseYqJmF/3NVEguKgV5uhG.9EZz0R8cLVFoQSzS5WchUG80Li2W', NULL, NULL, NULL),
(4, 'r', 'r@r.com', '$2y$10$nK57X04EthETG8pS1yjNxuWNAVhbfDenGDkgbNC5GDitDuqK6zctW', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_place_id_foreign` (`place_id`);

--
-- Indexes for table `find_travelers`
--
ALTER TABLE `find_travelers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `find_travelers_place_id_foreign` (`place_id`),
  ADD KEY `find_travelers_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_place_id_foreign` (`place_id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`);

--
-- Indexes for table `testings`
--
ALTER TABLE `testings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `find_travelers`
--
ALTER TABLE `find_travelers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `testings`
--
ALTER TABLE `testings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_place_id_foreign` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`);

--
-- Constraints for table `find_travelers`
--
ALTER TABLE `find_travelers`
  ADD CONSTRAINT `find_travelers_place_id_foreign` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`),
  ADD CONSTRAINT `find_travelers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_place_id_foreign` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`),
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
