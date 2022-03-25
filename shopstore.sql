-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.22-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table test.admin
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `phone` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `gender` varchar(128) NOT NULL,
  `dob` date NOT NULL,
  `nid` varchar(256) NOT NULL,
  `presentaddress` varchar(256) NOT NULL,
  `parmanentaddress` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table test.admin: ~3 rows (approximately)
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`id`, `name`, `username`, `email`, `phone`, `password`, `gender`, `dob`, `nid`, `presentaddress`, `parmanentaddress`) VALUES
	(1, 'long', 'admin', 'longtran@gmail.com', '0932053251', '123123', '', '0000-00-00', '', '', ''),
	(3, 'Long Tran', 'longlong', 'tranngoclong101200hiie@gmail.com', '', 'sha1$b430ccad$1$132c6cf121f73116780cec12c32f7266a1586613', 'Nam', '2000-12-10', '1', '1378, Tinh Lo 10', '1378, Tinh Lo 10'),
	(4, 'Long', 'longne', 'longlong123@gmail.com', '', 'sha1$c6269c92$1$932f2d883f4c7b5505653f4f5ac7e6bbfad940fc', 'Nam', '2000-12-10', '4', '1378, Tinh Lo 10', '1378, Tinh Lo 10');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

-- Dumping structure for table test.product
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productname` varchar(256) NOT NULL,
  `price` int(8) NOT NULL,
  `quantity` int(8) NOT NULL,
  `catagory` varchar(64) NOT NULL,
  `image1` varchar(256) DEFAULT NULL,
  `image2` varchar(256) DEFAULT NULL,
  `image3` varchar(256) DEFAULT NULL,
  `details` varchar(8192) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table test.product: ~6 rows (approximately)
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`id`, `productname`, `price`, `quantity`, `catagory`, `image1`, `image2`, `image3`, `details`, `date`) VALUES
	(2, 'Sony HD 4K Smart LED TV', 350, 1, 'Electronics', 'https://cdn.tgdd.vn/Files/2021/06/11/1359453/1cauhinh_800x450.jpg', NULL, NULL, '', '0000-00-00'),
	(9, 'Watch', 200, 12, 'Electronics', 'https://cdn.tgdd.vn/Files/2021/06/11/1359453/1cauhinh_800x450.jpg', NULL, NULL, '', '0000-00-00');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

-- Dumping structure for table test.soldproduct
CREATE TABLE IF NOT EXISTS `soldproduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(128) NOT NULL,
  `address` int(11) NOT NULL,
  `zipcode` varchar(128) NOT NULL,
  `delivery` varchar(128) NOT NULL DEFAULT 'no',
  `Orderdate` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;

-- Dumping data for table test.soldproduct: ~0 rows (approximately)
/*!40000 ALTER TABLE `soldproduct` DISABLE KEYS */;
/*!40000 ALTER TABLE `soldproduct` ENABLE KEYS */;

-- Dumping structure for table test.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `address` varchar(256) NOT NULL,
  `db` int(10) DEFAULT NULL,
  `image` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

-- Dumping data for table test.user: ~2 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `name`, `username`, `email`, `password`, `phone`, `address`, `db`, `image`) VALUES
	(36, 'Long Tran', 'caube', 'tranngoclong101200hiie@gmail.com', 'sha1$1f09ca49$1$6198579aa9ef17dc44ad5937d8cc5073c82e21e7', '0343461240', '1378, Tinh Lo 10', NULL, NULL),
	(37, 'Long Tran', 'caubene', 'tranngoclong1012100hiie@gmail.com', 'sha1$64dc6905$1$a8e609c8f4c8bbb9bc8cfa469d91d356a2aa477d', '0343461240', '1378, Tinh Lo 10', 20, 'https://cdn.tgdd.vn/Files/2019/10/01/1203623/gadgetmatch-iphone-xs-iphone-xs-max-20180927-05_800x450.jpg');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
