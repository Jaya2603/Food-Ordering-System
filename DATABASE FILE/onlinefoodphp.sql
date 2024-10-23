-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3310
-- Generation Time: Oct 22, 2024 at 02:50 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinefoodphp2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(11) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'heli', 'e10adc3949ba59abbe56e057f20f883e', 'admin@gmail.com', '', '2024-10-16 09:18:17');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(11) NOT NULL,
  `rs_id` int(11) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(17, 5, 'Italian Sizzler', 'A hearty combination of pasta tossed in arabitta sauce served with Buttered veg., crunchy cheese ball & fries', 500.00, '671294204947d.png'),
(18, 7, 'Paneer Makhani Pizza', 'A great combination of makhani sauce topped with capsicum, paneer and corn.', 479.00, '671345328186e.png'),
(19, 7, 'Fresh Garden Pizza', 'Combinatioon Of Red Onion, Green Capsicum And Diced Tomato', 279.00, '671345c111a52.png'),
(20, 7, 'Mexican Veg Pizza', 'Flavorful Twist Loaded With Onion,Crisp Capsicum, Diced Tomatoes And Slice Jalapenoes', 269.00, '671346277dfc6.png'),
(21, 7, 'Fiery Pepper Pizza', 'A Special Pizza For Spicy Lovers Topped With Crisp Capsicum ,Red Pepper , Sliced Jalapenos , Red And Yellow Capsicum', 299.00, '671346d1f1897.png'),
(22, 5, ' Baked Lasagna', 'Spinach, Neapolitan Sauce with Exotic Veggies & béchamel Sauce layers topped With Cheese', 560.00, '671347d93a9c3.png'),
(23, 5, 'Alfredo Pasta', 'Fusilli pasta in classic cheese sauce.', 450.00, '671348553abd6.png'),
(24, 5, 'Gulaab jamun', 'Soft and spongy and delicious Indian dessert served with a generous helping of sugar syrup.', 75.00, '67134929c8ca3.png'),
(25, 6, 'Paneer Tikka Dry', 'fresh paneer with onion and green chutney', 179.00, '67134a3730696.png'),
(26, 6, ' Hyderabadi Veg Biryani', 'Rice with Palak gravy with Hot indian Masala and tadka', 489.00, '67134aa8c41c3.png'),
(27, 6, ' Veg Manchow Soup', 'Hot soup with green vegies and Indian Masala', 95.00, '67134b8839174.png'),
(28, 6, ' Cheese Combo', 'Cheese Butter Masala + 4 Butter Chapati + Buttermilk + Salad', 450.00, '67134bffe0ae2.png'),
(29, 8, 'Mexican Beans Burger', 'Aloo tikki with fresh burger', 185.00, '67134fd560e5d.png'),
(30, 8, 'Italian Wrap', 'Aloo tikki With mayo and fresh veggies', 178.00, '67135052a8662.png'),
(31, 8, 'Cheese Jalapeno Grill Sandwich', 'Jalapeno and aloo paneer tikki and fresh Bread', 139.00, '6713517190304.png'),
(32, 8, 'Blue Lagoon Moctail', 'A nonalcoholic version of the classic cocktail ', 189.00, '67135286a1ef2.png'),
(33, 1, '  Hot apple pie punch', 'Warm your hands around a mug of this hot apple drink, spiced with cinnamon, cloves and nutmeg', 80.00, '67179bd3f0e7c.png'),
(34, 1, 'baked hot chocolate', 'fresh liquid chocolate ', 189.00, '67179c8b87600.png'),
(35, 2, 'Dosha', 'fresh Dosha with potato and chutney', 180.00, '67179d6780cf1.png'),
(36, 2, 'Idli ', 'fresh Idli with sambhar and chutney', 95.00, '67179dd07215e.png'),
(37, 2, 'Appam ', 'fresh appam with chutney', 85.00, '67179e2d518b2.png'),
(38, 1, 'Choco Fudge', 'fresh baked chococlate ', 130.00, '67179f27c439b.png');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(1, 3, 'Wok On Fire ', 'wokonfire@gmail.com', '072030 66666', 'https://www.wokonfire.in/', '12pm', '12am', 'Mon-Sat', 'Shop no. 1 & 2, Zodiac Plaza Besides Nabard Officers Colony Opposite Kotak Mahindra Bank, H.L, Commerce College Rd, Nadiad, Gujarat 380009', 'wok.jpg', '2024-10-22 10:23:56'),
(2, 1, 'Sunrise Restaurant', 'sunrise@gmail.com', '9874563210', 'https://www.dineout.co.in/ahmedabad/sunrise-restaurant-kalupur-central-ahmedabad-28805/menu', '8am', '11pm', 'Mon-Sun', 'Opp Kalupur railway station, panchkuva road, Reid Rd, opp. DCP Zone 3 office, Kalupur, Nadiad, Gujarat 380002', 'sunrise.jpg', '2024-10-22 10:24:21'),
(5, 1, 'Blueberry ', 'blueberry@gmail.com', '90908763', 'https://www.zomato.com/nadiad/blueberrys-restaurant-nadiad-locality/order', '11am', '11pm', 'Mon-Sat', 'Blueberrys Restaurant & Banquet., Nadiad-Anand Rd, Nadiad, Gujarat 387003', '67129337de864.png', '2024-10-21 20:17:58'),
(6, 5, 'Bhagyoday', 'bhagyoday@gmail.com', '787674567', 'https://www.zomato.com/nadiad/bhagyoday-restaurant-nadiad-locality/order', '11am', '12am', 'Mon-Sat', '20, Piplag Rd, Gokul Dham Society, Indira Nagar, Nadiad, Gujarat 387002', '671295462aa9d.png', '2024-10-21 20:15:56'),
(7, 2, 'La Pinoz Pizza', 'lapi@gmail.com', '9876543210', 'https://www.zomato.com/nadiad/la-pinoz-pizza-1-nadiad-locality/order', '11am', '12am', 'Mon-Sat', 'Nadiad Nexus 1, Uttarsand, Road, Nadiad', '6712974d51500.png', '2024-10-18 17:13:49'),
(8, 6, 'Retro Bistro', 'retro@gmail.com', '898945672', 'https://retrobistro.in/', '6am', '12am', 'Mon-Sat', '4th Floor, Radhe Icon Complex, Nadiad - Petlad Rd, opposite Bandhan Party Plot, Piplag, Nadiad, Gujarat 387001', '671298f190fb2.png', '2024-10-18 17:20:49');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(1, 'Indian', '2024-10-18 16:47:12'),
(2, 'Italian', '2021-04-07 08:45:23'),
(3, 'Chinese', '2021-04-07 08:45:25'),
(5, 'Punjabi', '2024-10-18 16:47:33'),
(6, 'Thai', '2024-10-18 16:47:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(11) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(10, 'Heli_Shah', 'Shah', 'Vipulkumar', 'shahheli2611@gmail.com', '09898526727', 'fc19609b7c75f2a8bd6338a24a460b9b', '5 Chitrakut appartment, Behind Subham Baag Sahaj park society vaniyawad college road Nadiad', 1, '2024-10-16 09:27:27'),
(11, 'Sudha', 'sudha', 'mudaliyar', 'j@gmail.com', '9033226677', 'f5465422c5c73f66273df80f628440c8', 'ahemdabad', 1, '2024-10-16 19:20:20'),
(12, 'kartik', 'Kartik ', 'Shah', 'k@gmail.com', '9033363853', '9608c39c0697ec77595c294ca10845ac', 'Mahagujarat', 1, '2024-10-18 16:41:56'),
(13, 'Nikita', 'Nikita ', 'Shah', 'n@gmail.com', '9033226677', 'e10adc3949ba59abbe56e057f20f883e', 'Bhagith', 1, '2024-10-19 04:04:20'),
(14, 'siya', 'siya', 'kapoor', 's@gmail.com', '9638527410', 'e10adc3949ba59abbe56e057f20f883e', 'Mumbai', 1, '2024-10-21 17:58:43'),
(15, 'Heni', 'Heni', 'Shah', 'h@gmail.com', '9909429781', 'e10adc3949ba59abbe56e057f20f883e', 'sahaj park nadiad ', 1, '2024-10-22 11:10:24');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(23, 9, 'Yorkshire Lamb Patties', 1, 14.00, NULL, '2024-10-16 09:16:03'),
(24, 9, 'Lobster Thermidor', 1, 36.00, NULL, '2024-10-16 09:16:03'),
(31, 14, 'Gulaab jamun', 1, 75.00, NULL, '2024-10-21 17:59:25'),
(32, 15, 'Italian Sizzler', 1, 500.00, NULL, '2024-10-22 11:10:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
