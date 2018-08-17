-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th8 17, 2018 lúc 05:01 PM
-- Phiên bản máy phục vụ: 5.7.21
-- Phiên bản PHP: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlykhoahoc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giaovien`
--

DROP TABLE IF EXISTS `giaovien`;
CREATE TABLE IF NOT EXISTS `giaovien` (
  `Ma_GV` int(10) NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `SĐT_gv` int(11) NOT NULL,
  PRIMARY KEY (`Ma_GV`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `giaovien`
--

INSERT INTO `giaovien` (`Ma_GV`, `username`, `password`, `diachi`, `SĐT_gv`) VALUES
(111, 'nguyenvana', '111', 'Hà nội', 113114115);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoahoc`
--

DROP TABLE IF EXISTS `khoahoc`;
CREATE TABLE IF NOT EXISTS `khoahoc` (
  `ma_kh` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ten_kh` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Ma_GV` int(10) NOT NULL,
  PRIMARY KEY (`ma_kh`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khoahoc`
--

INSERT INTO `khoahoc` (`ma_kh`, `ten_kh`, `Ma_GV`) VALUES
('123', 'giáo dục', 111);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `monhoc`
--

DROP TABLE IF EXISTS `monhoc`;
CREATE TABLE IF NOT EXISTS `monhoc` (
  `ma_mh` int(10) NOT NULL,
  `ten_mh` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Ma_GV` int(10) NOT NULL,
  `sotinchi` int(7) NOT NULL,
  PRIMARY KEY (`ma_mh`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `monhoc`
--

INSERT INTO `monhoc` (`ma_mh`, `ten_mh`, `Ma_GV`, `sotinchi`) VALUES
(555, 'Toán học', 111, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinhvien`
--

DROP TABLE IF EXISTS `sinhvien`;
CREATE TABLE IF NOT EXISTS `sinhvien` (
  `ma_sv` int(10) NOT NULL,
  `tensv` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `SĐT_sv` int(11) NOT NULL,
  PRIMARY KEY (`ma_sv`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sinhvien`
--

INSERT INTO `sinhvien` (`ma_sv`, `tensv`, `diachi`, `SĐT_sv`) VALUES
(222, 'nguyen van b', 'Hà nội', 1212121212);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

DROP TABLE IF EXISTS `tintuc`;
CREATE TABLE IF NOT EXISTS `tintuc` (
  `ma_tt` int(10) NOT NULL,
  `tieudett` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `noidungtt` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `Ma_GV` int(10) NOT NULL,
  PRIMARY KEY (`ma_tt`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tintuc`
--

INSERT INTO `tintuc` (`ma_tt`, `tieudett`, `noidungtt`, `Ma_GV`) VALUES
(333, 'giới thiệu toán học', 'Toán học là ngành nghiên cứu trừu tượng về những chủ đề như: lượng (các con số),[2] cấu trúc,[3] không gian, và sự thay đổi.[4][5][6] Các nhà toán học và triết học có nhiều quan điểm khác nhau về định nghĩa và phạm vi của toán học.[7][8]', 111);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
