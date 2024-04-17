SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `admin` (
  `admin_id` int(20) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_password`) VALUES
(1, 'Walter', 'password');

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `cropname` varchar(50) NOT NULL,
  `quantity` int(50) NOT NULL,
  `price` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `contactus` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(100) NOT NULL,
  `c_mobile` varchar(100) NOT NULL,
  `c_email` varchar(100) NOT NULL,
  `c_address` varchar(500) NOT NULL,
  `c_message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `contactus` (`c_id`, `c_name`, `c_mobile`, `c_email`, `c_address`, `c_message`) VALUES
(6, 'Walter', '0710255677', 'wkimutai8@gmail.com', 'Baringo', 'its working');

CREATE TABLE `crops` (
  `Crop_id` int(255) NOT NULL,
  `Crop_name` varchar(255) NOT NULL,
  `N_value` double NOT NULL,
  `P_value` double NOT NULL,
  `K_value` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `crops` (`Crop_id`, `Crop_name`, `N_value`, `P_value`, `K_value`) VALUES
(1, 'Rice', 20, 25, 25),
(2, 'Bajra', 50, 25, 0),
(3, 'Maize', 135, 62.5, 50),
(4, 'Cotton', 50, 25, 25),
(5, 'Soya', 20, 80, 40),
(6, 'Moong', 12.5, 25, 12.5),
(7, 'Groundnut', 25, 50, 75),
(8, 'Sugarcane', 300, 100, 200);

CREATE TABLE `custlogin` (
  `cust_id` int(20) NOT NULL,
  `cust_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `phone_no` varchar(255) NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `custlogin` (`cust_id`, `cust_name`, `password`, `email`, `address`, `city`, `pincode`, `state`, `phone_no`, `otp`) VALUES
(1, 'customer', SHA2('password', 'wkimutai8@gmail.com', 'kapseret', 'Mysore', '576210', 'Eldoret', '0710255677', 0);


CREATE TABLE `district` (
  `DistCode` int(11) NOT NULL,
  `StCode` int(11) DEFAULT NULL,
  `DistrictName` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `district` (`DistCode`, `StCode`, `DistrictName`) VALUES
(1, 1, 'Baringo Central'),
(2, 1, 'Baringo North'),
(3, 1, 'Baringo South'),
(4, 1, 'Eldama Ravine'),
(5, 1, 'Mogotio'),
(6, 1, 'Tiaty'),
(7, 2, 'Bomet Central'),
(8, 2, 'Bomet East'),
(9, 2, 'Bomet West'),
(10, 2, 'Chepalungu'),
(11, 3, 'Bungoma East'),
(12, 3, 'Bungoma North'),
(13, 3, 'Bungoma South'),
(14, 3, 'Bungoma West'),
(15, 3, 'Webuye East'),
(16, 3, 'Webuye West'),
(17, 3, 'Mt. Elgon'),
(18, 4, 'Teso North'),
(19, 4, 'Teso South'),
(20, 4, 'Matayos'),
(21, 4, 'Butula'),
(22, 4, 'Funyula'),
(23, 4, 'Budalangi'),
(24, 4, 'Nambale'),
(25, 5, 'Marakwet East'),
(26, 5, 'Marakwet West'),
(27, 5, 'Keiyo North'),
(28, 5, 'Keiyo South'),
(29, 6, 'Embu East'),
(30, 6, 'Embu North'),
(31, 6, 'Embu South'),
(32, 7, 'Balambala'),
(33, 7, 'Fafi'),
(34, 7, 'Dadaab'),
(35, 7, 'Hulugho'),
(36, 7, 'Garissa Township'),
(37, 7, 'Ijara'),
(38, 8, 'Isiolo Central'),
(39, 8, 'Isiolo North'),
(40, 8, 'Isiolo South'),
(41, 9, 'Ainamoi'),
(42, 9, 'Belgut'),
(43, 9, 'Bureti'),
(44, 9, 'Kipkelion East'),
(45, 9, 'Kipkelion West'),
(46, 10, 'Juja'),
(47, 10, 'Kabete'),
(48, 10, 'Kiambaa'),
(49, 10, 'Kiambu Town'),
(50, 10, 'Kikuyu'),
(51, 10, 'Limuru'),
(52, 10, 'Ruiru'),
(53, 10, 'Thika'),
(54, 10, 'Gatundu North'),
(55, 10, 'Gatundu South'),
(56, 11, 'Kilifi North'),
(57, 11, 'Kilifi South'),
(58, 11, 'Kilifi Central'),
(59, 11, 'Malindi'),
(60, 11, 'Ganze'),
(61, 12, 'Kirinyaga Central'),
(62, 12, 'Kirinyaga North'),
(63, 12, 'Kirnyaga South'),
(64, 12, 'Mwea East'),
(65, 12, 'Mwea West'),
(66, 13, 'Kisii Central'),
(67, 13, 'Kisii East'),
(68, 13, 'Kitutu Chache North'),
(69, 13, 'Kitutu Chache South'),
(70, 13, 'Bobasi'),
(71, 13, 'Kisii South'),
(72, 14, 'Homabay Town'),
(73, 14, 'Mbita'),
(74, 14, 'Rangwe'),
(75, 14, 'Ndhiwa'),
(76, 14, 'Suba south'),
(77, 14, 'Suba North'),
(78, 15, 'Kajiado Central'),
(79, 15, 'Kajiado East'),
(80, 15, 'Kajiado North'),
(81, 15, 'Kajiado west'),
(82, 15, 'Mashururu'),
(83, 15, 'Loitoktok'),
(84, 16, 'Kakamega Central'),
(85, 16, 'Kakamega East'),
(86, 16, 'Kakamega South'),
(87, 16, 'Kakamega North'),
(88, 17, 'Kisumu Central'),
(89, 17, 'Kisumu East'),
(90, 17, 'Kisumu West'),
(91, 17, 'Same'),
(92, 17, 'Nyando'),
(93, 17, 'Muhoroni'),
(94, 18, 'Kitui Centra'),
(95, 18, 'Kitui East'),
(96, 18, 'Kitui West'),
(97, 18, 'Kitui South'),
(98, 18, 'Kitui Ruai'),
(99, 18, 'Mwingi Central'),
(100, 18, 'Mwingi North'),
(101, 18, 'Mwingi South'),
(102, 18, 'Mwingi west'),
(103, 19, 'Lunga Lunga'),
(104, 19, 'Msambweni'),
(105, 19, 'Kinango'),
(106, 19, 'Mutunga'),
(107, 20, 'Laikipia East'),
(108, 20, 'Laikipia North'),
(109, 20, 'Laikipia West'),
(110, 21, 'Lamu East'),
(111, 21, 'Lamu West'),
(112, 22, 'Machakos Town'),
(113, 22, 'Mavoko'),
(114, 22, 'Kangundo'),
(115, 22, 'Kathiani'),
(116, 22, 'Masinga'),
(117, 22, 'Yata'),
(118, 23, 'Makueni'),
(119, 23, 'Kilome'),
(120, 23, 'Kaitu'),
(121, 23, 'Makindu'),
(122, 23, 'Mboni'),
(123, 24, 'Mandera East'),
(124, 24, 'Mandera West'),
(125, 24, 'Mandera South'),
(126, 24, 'Mandera North'),
(127, 24, 'Banisa'),
(128, 24, 'Lafey'),
(129, 25, 'Moyale'),
(130, 25, 'Saku'),
(131, 25, 'Laisamis'),
(132, 26, 'Imenti North'),
(133, 26, 'Imenti South'),
(134, 26, 'Imenti Central'),
(135, 26, 'Buuri'),
(136, 26, 'Tigania East'),
(137, 26, 'Tigania West'),
(138, 27, 'Migori'),
(139, 27, 'Rongo'),
(140, 27, 'Awendo'),
(141, 27, 'Kuria West'),
(142, 27, 'Kuria East'),
(143, 28, 'Changamwe'),
(144, 28, 'Jomvu'),
(145, 28, 'Kisauni'),
(146, 28, 'Nyali'),
(147, 28, 'Likoni'),
(148, 28, 'Mvita'),
(149, 29, 'Gatanga'),
(150, 29, 'Kandara'),
(151, 29, 'Kagumo'),
(152, 29, 'Kiharu'),
(153, 29, 'Mathioya'),
(154, 29, 'Kangema'),
(155, 30, 'Dagoreti'),
(156, 30, 'Langata'),
(157, 30, 'Kibra'),
(158, 30, 'Roysambu'),
(159, 30, 'Kasarani'),
(160, 30, 'Ruaraka'),
(161, 30, 'Embakasi North'),
(162, 30, 'Embakasi Central'),
(163, 30, 'Embakasi South'),
(164, 30, 'Embakasi East'),
(165, 30, 'Embakasi West'),
(166, 30, 'Kamukunji'),
(167, 30, 'Makadhara'),
(168, 30, 'Starehe'),
(169, 31, 'Nakuru East'),
(170, 31, 'Nakuru North'),
(171, 31, 'Nakuru west'),
(172, 31, 'Naivasha'),
(173, 31, 'Gilgil'),
(174, 31, 'Kuresoi North'),
(175, 31, 'Kuresoi South'),
(176, 31, 'Molo'),
(177, 31, 'Njoro'),
(178, 31, 'Subukia'),
(179, 31, 'Rongai'),
(180, 31, 'Bahati'),
(181, 32, 'Tindiret'),
(182, 32, 'ALdai'),
(183, 32, 'Nandi Hills'),
(184, 32, 'Chesumei'),
(185, 33, 'Narok North'),
(186, 33, 'Narok South'),
(187, 33, 'Narok East'),
(188, 33, 'Narok West'),
(189, 33, 'Transmara East'),
(190, 33, 'Transmara West'),
(191, 34, 'Nyamira North'),
(192, 34, 'Nyamira South'),
(193, 35, 'Kinangop'),
(194, 35, 'Kipipiri'),
(195, 35, 'Ol Kalau'),
(196, 35, 'Ol Joro Orok'),
(197, 35, 'Ndaragwa'),
(198, 36, 'Tetu'),
(199, 36, 'Keni West'),
(200, 36, 'Kieni East'),
(202, 36, 'Mathira East'),
(203, 36, 'Mathira West'),
(204, 36, 'Othaya'),
(205, 36, 'Mukurweini'),
(206, 36, 'Nyeri South'),
(207, 37, 'Samburu West'),
(208, 37, 'Samburu North'),
(209, 37, 'Samburu East'),
(210, 38, 'Gem'),
(211, 38, 'Ugenya'),
(212, 38, 'Ugunja'),
(213, 38, 'Alego Usonga'),
(214, 38, 'Bondo'),
(215, 38, 'Rarieda'),
(216, 39, 'Taveta'),
(217, 39, 'Wundanyi'),
(218, 39, 'Mwatate'),
(219, 40, 'Garsen'),
(220, 40, 'Bura'),
(221, 41, 'Chuka'),
(222, 41, 'Igambangombe'),
(223, 41, 'Maara'),
(224, 42, 'Cherangany'),
(225, 42, 'Kiminini'),
(226, 41, 'Saboti'),
(227, 42, 'Endebes'),
(228, 43, 'Turkana North'),
(229, 43, 'Turkana West'),
(230, 43, 'Turkana Central'),
(231, 43, 'Turkana South'),
(232, 43, 'Loima'),
(233, 44, 'Ainabkoi'),
(234, 44, 'Kapseret'),
(235, 44, 'Keses'),
(236, 44, 'Moiben'),
(237, 44, 'Soy'),
(238, 44, 'Turbo'),
(239, 45, 'Emuhaya'),
(241, 45, 'Hamisi'),
(242, 45, 'Luanda'),
(243, 45, 'Sabatia'),
(244, 45, 'Vihiga'),
(245, 46, 'Wajir East'),
(246, 46, 'Wajir West'),
(247, 46, 'Wajir south'),
(248, 47, 'Kapenguria'),
(249, 47, 'Kacheliba'),
(250, 47, 'Pokot South');


CREATE TABLE `farmerlogin` (
  `farmer_id` int(11) NOT NULL,
  `farmer_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_no` varchar(50) NOT NULL,
  `F_gender` varchar(255) NOT NULL,
  `F_birthday` varchar(255) NOT NULL,
  `F_State` varchar(255) NOT NULL,
  `F_District` varchar(255) NOT NULL,
  `F_Location` varchar(255) NOT NULL,
  `otp` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `farmerlogin` (`farmer_id`, `farmer_name`, `password`, `email`, `phone_no`, `F_gender`, `F_birthday`, `F_State`, `F_District`, `F_Location`)
VALUES (44, 'Farmers Portal', SHA2('password', 256), 'wkimutai8@gmail.com', '0710255677', 'Male', '2001-09-22', 'Laikipia', 'Laikipia West', 'Chugor');


CREATE TABLE `farmer_crops_trade` (
  `trade_id` int(11) NOT NULL,
  `farmer_fkid` int(50) NOT NULL,
  `Trade_crop` varchar(255) NOT NULL,
  `Crop_quantity` double NOT NULL,
  `costperkg` int(11) NOT NULL,
  `msp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `farmer_crops_trade` (`trade_id`, `farmer_fkid`, `Trade_crop`, `Crop_quantity`, `costperkg`, `msp`) VALUES
(103, 44, 'maize', 8, 40, 60),
(104, 44, 'rice', 2, 39, 60),
(105, 44, 'gram', 2, 15, 23),
(106, 44, 'barley', 8, 1, 67);

CREATE TABLE `farmer_history` (
  `History_id` int(11) NOT NULL,
  `farmer_id` int(50) NOT NULL,
  `farmer_crop` varchar(255) NOT NULL,
  `farmer_quantity` int(50) NOT NULL,
  `farmer_price` int(50) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `farmer_history` (`History_id`, `farmer_id`, `farmer_crop`, `farmer_quantity`, `farmer_price`, `date`) VALUES
(25, 44, 'maize', 1, 23, '01/03/2024'),
(26, 44, 'rice', 1, 23, '13/03/2024'),
(27, 44, 'beans', 1, 2, '13/03/2024'),
(28, 44, 'millet', 1, 60, '23/03/2024'),
(29, 44, 'wheat', 1, 23, '23/03/2024'),
(30, 44, 'barley', 1, 2, '26/03/2024'),
(31, 44, 'gram', 1, 60, '27/03/2024');


CREATE TABLE `production_approx` (
  `crop` varchar(20) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `production_approx` (`crop`, `quantity`) VALUES
('gram', 0),
('lentil', 0),
('maize', 0),
('rice', 0),
('soyabean', 0),
('wheat', 0);


CREATE TABLE `state` (
  `StCode` int(11) NOT NULL,
  `StateName` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `state` (`StCode`, `StateName`) VALUES
(1, 'Baringo'),
(2, 'Bomet'),
(3, 'Bungoma'),
(4, 'Busia'),
(5, 'Elgeyo-Marakwet'),
(6, 'Embu'),
(7, 'Garissa'),
(8, 'Isiolo'),
(9, 'Kericho'),
(10, 'Kiambu'),
(11, 'Kilifi'),
(12, 'Kirinyaga'),
(13, 'Kisii'),
(14, 'Homabay'),
(15, 'Kajiado'),
(16, 'Kakamega'),
(17, 'Kisumu'),
(18, 'Kitui'),
(19, 'Kwale'),
(20, 'Laikipia'),
(21, 'Lamu'),
(22, 'Machakos'),
(23, 'Makueni'),
(24, 'Mandera'),
(25, 'Marsabit'),
(26, 'Meru'),
(27, 'Migori'),
(28, 'Mombasa'),
(29, 'Muranga'),
(30, 'Nairobi'),
(31, 'Nakuru'),
(32, 'Nandi'),
(33, 'Narok'),
(34, 'Nyamira'),
(35, 'Nyandarua'),
(36, 'Nyeri'),
(37, 'Samburu'),
(38, 'Siaya'),
(39, 'Taita-Taveta'),
(40, 'Tana River'),
(41, 'Tharaka-Nithi'),
(42, 'Trans Nzoia'),
(43, 'Turkana'),
(44, 'Uasin Gishu'),
(45, 'Vihiga'),
(46, 'Wajir'),
(47, 'West Pokot');

--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `admin_name` (`admin_name`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cropname` (`cropname`);

ALTER TABLE `contactus`
  ADD PRIMARY KEY (`c_id`);

ALTER TABLE `crops`
  ADD PRIMARY KEY (`Crop_id`);

ALTER TABLE `custlogin`
  ADD PRIMARY KEY (`cust_id`);

ALTER TABLE `district`
  ADD PRIMARY KEY (`DistCode`),
  ADD KEY `StCode` (`StCode`);

ALTER TABLE `farmerlogin`
  ADD PRIMARY KEY (`farmer_id`);

ALTER TABLE `farmer_crops_trade`
  ADD PRIMARY KEY (`trade_id`),
  ADD KEY `farmer_fkid` (`farmer_fkid`);


ALTER TABLE `farmer_history`
  ADD PRIMARY KEY (`History_id`);


ALTER TABLE `production_approx`
  ADD PRIMARY KEY (`crop`);

ALTER TABLE `state`
  ADD PRIMARY KEY (`StCode`);


ALTER TABLE `admin`
  MODIFY `admin_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

ALTER TABLE `contactus`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

ALTER TABLE `custlogin`
  MODIFY `cust_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

ALTER TABLE `district`
  MODIFY `DistCode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=651;

ALTER TABLE `farmerlogin`
  MODIFY `farmer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;


ALTER TABLE `farmer_crops_trade`
  MODIFY `trade_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;


ALTER TABLE `farmer_history`
  MODIFY `History_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

ALTER TABLE `state`
  MODIFY `StCode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;



ALTER TABLE `farmer_crops_trade`
  ADD CONSTRAINT `farmer_crops_trade_ibfk_1` FOREIGN KEY (`farmer_fkid`) REFERENCES `farmerlogin` (`farmer_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;
