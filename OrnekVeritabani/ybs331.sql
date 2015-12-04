-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 25 Mar 2015, 08:20:00
-- Sunucu sürümü: 5.6.16
-- PHP Sürümü: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Veritabanı: `sos314`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `danisman`
--

CREATE TABLE IF NOT EXISTS `danisman` (
  `id` int(11) NOT NULL,
  `ad` varchar(50) NOT NULL,
  `soyad` varchar(50) NOT NULL,
  `unvan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin5;

--
-- Tablo döküm verisi `danisman`
--

INSERT INTO `danisman` (`id`, `ad`, `soyad`, `unvan`) VALUES
(1, 'Muhammet', 'Yorulmaz', 'Öğr. Gör Dr.'),
(2, 'İmdat', 'Kara', 'Prof. Dr.'),
(3, 'Tusan', 'derya', 'Yrd. Doç. Dr.'),
(4, 'Barış', 'Keçeci', 'Öğr. Gör. Dr.'),
(5, 'Berna', 'Dengiz', 'Prof. Dr.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mezunlar`
--

CREATE TABLE IF NOT EXISTS `mezunlar` (
  `sira` int(11) NOT NULL,
  `no` varchar(10) NOT NULL,
  `ad` varchar(50) NOT NULL,
  `soyad` varchar(50) NOT NULL,
  `babaadi` varchar(50) NOT NULL,
  `diplomano` varchar(25) NOT NULL,
  `diplomatarihi` date NOT NULL,
  `ortalama` float NOT NULL,
  `danisman` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin5;

--
-- Tablo döküm verisi `mezunlar`
--

INSERT INTO `mezunlar` (`sira`, `no`, `ad`, `soyad`, `babaadi`, `diplomano`, `diplomatarihi`, `ortalama`, `danisman`) VALUES
(1, '990401047', 'MELTEM', 'SAL', 'MEHMET DURAN', '404010003', '2004-06-30', 2.31, 1),
(2, '990401012', 'SEVİL', 'ÇETİN', 'HASAN', '404010004', '2004-07-01', 2.21, 2),
(3, '990401202', 'FATİH', 'ÇOMOĞLU', 'NURİ', '404010005', '2004-07-01', 2.31, 2),
(4, '990401163', 'İHSAN', 'MUSTAFA', 'NİHAT', '404010006', '2004-07-07', 2.13, 2),
(5, '980401097', 'EMRAH', 'AYTEKİN', 'ÖMER YAVUZ', '404010007', '2004-07-09', 2.2, 2),
(6, '980401097', 'HANİFE', 'OK', 'MUSTAFA', '404010008', '2004-07-15', 3.06, 1),
(7, '401203', 'SERDAR', 'CEYLAN', 'MEHMET', '404010009', '2004-07-15', 3.05, 1),
(8, '401013', 'İSA', 'ALTIPARM', 'İHSAN', '404010010', '2004-07-15', 2.54, 2),
(9, '401162', 'ZİYA', 'TORUN', 'HİKMET', '404010011', '2004-07-15', 3.01, 3),
(10, '401131', 'RECEP', 'ARDIHAN', 'MUSTAFA', '404010012', '2004-07-15', 2.83, 3),
(11, '401001', 'YASEMİN', 'DEĞİRMEN', 'MEHMET', '404010013', '2004-07-15', 2.61, 3),
(12, '401143', 'MEHMET', 'ALİ', 'NİYAZİ', '404010014', '2004-07-15', 3.38, 3),
(13, '401049', 'MURAT', 'KAYA', 'HAYATİ', '404010015', '2004-07-16', 3, 3),
(14, '401158', 'CİHANGİR', 'YILDIZ', 'AHMET', '404010016', '2004-07-16', 2.92, 3),
(15, '990401138', 'AHMET', 'KARA', 'HAYDAR', '404010017', '2004-06-14', 2.1, 1),
(16, '990401146', 'MUHAMMET', 'FATİH', 'CEMİL', '404010018', '0000-00-00', 2.38, 2),
(17, '990401179', 'DURMUŞ', 'ALİ', 'KENAN', '404010019', '2004-06-14', 2.19, 1),
(18, '990401041', 'ŞENOL', 'KARADENİ', 'MUSTAFA', '404010020', '2004-06-14', 2.32, 1),
(19, '401068', 'GÜLAN', 'YAZICI', 'TAHSİN', '404010021', '2004-06-14', 2.86, 1),
(20, '401084', 'OĞUZHAN', 'BERK', 'ABİDİN', '404010022', '2004-06-14', 3.12, 1),
(21, '401150', 'AHMET', 'EKER', 'EROL', '404010023', '2004-06-14', 3.34, 1),
(22, '990401208', 'ELİF', 'KURT', 'MUSA', '404010024', '2004-08-03', 2.44, 1),
(23, '401007', 'HAYRETTİN', 'KÖSE', 'ALİ', '404010025', '2004-08-03', 2.83, 2),
(24, '401006', 'AHMET', 'ERDEMİR', 'MUSTAFA', '404010026', '2004-08-03', 2.91, 2),
(25, '990401135', 'MURAT', 'BATUR', 'BAYRAM', '404010027', '2004-08-03', 2.28, 2),
(26, '401147', 'KADİR', 'TUNCAY', 'SABAHATTİN', '404010028', '2004-08-03', 2.73, 2),
(27, '970401108', 'BERAT', 'ALPER', 'AHMET CEYHAN', '404010029', '2004-08-03', 1.61, 2),
(28, '401132', 'AYŞE', 'DÜRÜYE', 'MUSTAFA', '404010030', '2004-08-03', 3.04, 2),
(29, '401025', 'ERGÜN', 'SAYKI', 'ÜZEYİR', '404010031', '2004-09-20', 2.56, 2),
(30, '990401063', 'REMZİYE', 'OYMACI', 'YAŞAR', '404010032', '2004-08-09', 2.66, 2),
(31, '401035', 'ÇAĞATAY', 'DAL', 'MEHMET', '404010033', '2005-03-11', 3.36, 3),
(32, '990401114', 'FATOŞ', 'MELTEM', 'RAMAZAN YALÇIN', '404010034', '2004-08-09', 2.01, 3),
(33, '401069', 'HİLAL', 'SANİOĞLU', 'MUSTAFA SITKI', '404010035', '2004-08-09', 3.34, 3),
(34, '401137', 'BEKİR', 'GÜNEŞLEY', 'MUSTAFA', '404010036', '2004-08-09', 2.88, 3),
(35, '990401142', 'SERTEL', 'ŞIRACI', 'RIZA', '404010037', '2004-08-10', 2.39, 3),
(36, '401186', 'HANİFE', 'OLGUN', 'ARSLAN', '404010038', '2004-08-10', 2.64, 3),
(37, '980401027', 'MEHMET', 'FATİH', 'MUSTAFA', '404010039', '2004-08-10', 2.32, 3),
(38, '401141', 'PINAR', 'KEÇECİ', 'KAHRAMAN', '404010040', '2004-08-10', 2.91, 3),
(39, '990401020', 'SİNEM', 'ŞİMŞEK', 'OSMAN', '404010041', '2004-08-10', 2.23, 3),
(40, '990401233', 'HÜSEYİN', 'GÖKTEPE', 'KEMAL', '404010042', '2004-08-11', 2.19, 2),
(41, '401155', 'İLKNUR', 'BAHAR', 'İSMAİL', '404010043', '2004-08-20', 2.68, 1),
(42, '401125', 'YENER', 'ERYÜRÜK', 'SÜLEYMAN', '404010044', '2004-08-20', 2.95, 2),
(43, '401005', 'ESMA', 'YAVUZ', 'ÖMER', '404010045', '2004-08-20', 2.74, 3),
(44, '401215', 'AYTEN', 'TEMİZKAN', 'İSMAİL', '404010046', '2004-08-20', 2.59, 2),
(45, '980401071', 'KEZİBAN', 'BİLGİÇ', 'BEKİR', '404010047', '2004-08-20', 2.19, 2),
(46, '990401241', 'SEDA', 'TOPRAK', 'HACI', '404010048', '2004-08-20', 2.35, 2),
(47, '401012', 'ÖMER', 'FARUK', 'MUHAMMET', '404010049', '2004-08-20', 2.64, 2),
(48, '401039', 'ALATTİN', 'İŞİK', 'ABDURRAHMAN', '404010050', '2004-08-20', 2.57, 2),
(49, '990401044', 'AYŞE', 'NOHUTÇU', 'AZİZ', '404010051', '2004-08-20', 2.36, 1),
(50, '990401117', 'BAHRİ', 'YALÇINÖZ', 'İRFAN', '404010052', '2004-08-20', 2.39, 1),
(51, '990401218', 'TOLGA', 'AYDEMİR', 'SEBAHATTİN', '404010053', '2004-08-20', 2.08, 1),
(52, '990401112', 'NUSRET', 'ONUR', 'HÜSEYİN', '404010054', '2004-08-20', 2.15, 1),
(53, '401196', 'SÜHEYLA', 'SARMAN', 'RUHİ', '404010055', '2004-08-20', 3.26, 1),
(54, '990401107', 'ERSOY', 'ALTINTAŞ', 'CEMAL', '404010056', '2004-09-15', 2.22, 1),
(55, '990401201', 'EZGİ', 'ALTINKUR', 'RAMAZAN', '404010057', '2004-09-15', 2.2, 1),
(56, '990401236', 'MEHMET', 'EMRAH', 'YÜCEL', '404010058', '2004-09-15', 2.1, 1),
(57, '401117', 'YALÇIN', 'KÜÇÜK', 'TURAN', '404010059', '2004-09-17', 2.68, 1),
(58, '', '', '', '', '', '0000-00-00', 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
