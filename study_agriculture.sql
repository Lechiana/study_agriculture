-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2022 at 10:15 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `study_agriculture`
--

-- --------------------------------------------------------

--
-- Table structure for table `group_project`
--

CREATE TABLE `group_project` (
  `group_id` int(1) NOT NULL,
  `group_name` varchar(60) NOT NULL,
  `group_pic` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `group_project`
--

INSERT INTO `group_project` (`group_id`, `group_name`, `group_pic`) VALUES
(1, 'ความรู้พื้นฐานการปลูกข้าว', '1'),
(2, 'นโยบายที่เกี่ยวข้องกับการปลูกข้าว', '2'),
(3, 'วิกฤติการณ์ที่ส่งผลกระทบต่อการปลูกข้าว', '3'),
(4, 'เทคโนโลยีที่ใช้ในการผลิตข้าว', '4'),
(5, 'การเพิ่มมูลค่าให้กับข้าว', '5'),
(6, 'การตลาดและการประชาสัมพันธ์ ', '6');

-- --------------------------------------------------------

--
-- Table structure for table `km_unit`
--

CREATE TABLE `km_unit` (
  `km_id` int(11) NOT NULL,
  `km_name` varchar(100) NOT NULL,
  `km_pic` varchar(45) NOT NULL,
  `km_group` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `km_unit`
--

INSERT INTO `km_unit` (`km_id`, `km_name`, `km_pic`, `km_group`) VALUES
(1, 'การเตรียมดิน', '', 1),
(2, 'การเตรียมเมล็ดพันธ์ข้าว', '', 1),
(3, 'การปลูกข้าว', '', 1),
(4, 'การอารักขาข้าว (กำจัดศัตรูข้าว วัชพืช แมลง)', '', 1),
(5, 'การเกี่ยวข้าว (ระยะพลับพลึงปล่อยน้ำออกจากแปลงนาและเกี่ยวข้าว)', '', 1),
(7, 'นโยบายการพัฒนาระบบชลประทานเพื่อการปลูกข้าว', '', 2),
(8, 'นโยบายการพัฒนาการเกษตร (ปลูกข้าว)', '', 2),
(9, 'วิกฤติการน้ำท่วม', '', 3),
(10, 'วิกฤติการดินเสื่อมโทรม (การเผาตอซัง น้ำท่วม)', '', 3),
(11, 'แนวทางการแก้ปัญหาที่เกิดจากวิกฤติการณ์น้ำ ดิน', '', 3),
(12, 'เทคโนโลยีในขั้นตอนการเตรียมดิน', '', 4),
(13, 'เทคโนโลยีในขั้นตอนการปลูก (นาหว่าน นาดำ)', '', 4),
(14, 'เทคโนโลยีในขั้นตอนการกำจัดศัตรูพืช (เครื่องพ่น โดรน)', '', 4),
(15, 'เทคโนโลยีในขั้นตอนการเก็บเกี่ยว (รถเกี่ยวข้าว)', '', 4),
(16, 'เทคโนโลยีเพื่องานระบบสารสนเทศ (LDD Farm Land use Planning)', '', 4),
(17, 'การเพิ่มมูลค่าจากผลพลอยได้จากการปลูกข้าวเพื่อสร้างรายได้ (รำ ฟางข้าวนำมาเลี้ยงสัตว์)', '', 5),
(18, 'การเพิ่มมูลค่าข้าวจากการแปรรูปข้าวเพื่อสร้างรายได้ (ข้าวตัง)', '', 5),
(19, 'การตลาดและประชาสัมพันธ์ด้วยการจำหน่ายแบบขายตรงผ่านสื่อออนไลน์ (facebook shopee Lazada)', '', 6),
(20, 'การตลาดและประชาสัมพันธ์ด้วยการจำหน่ายแบบขายโดยเกษตรกรผ่านตลาดเกษตรในจังหวัด', '', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `group_project`
--
ALTER TABLE `group_project`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `km_unit`
--
ALTER TABLE `km_unit`
  ADD PRIMARY KEY (`km_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `km_unit`
--
ALTER TABLE `km_unit`
  MODIFY `km_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
