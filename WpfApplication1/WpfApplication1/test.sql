-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 10 Oca 2017, 18:55:05
-- Sunucu sürümü: 10.1.16-MariaDB
-- PHP Sürümü: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `test`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kitapeklem`
--

CREATE TABLE `kitapeklem` (
  `barkodnumarası` int(11) NOT NULL,
  `kitapadi` varchar(50) NOT NULL,
  `kitapturu` varchar(50) NOT NULL,
  `basimtarihi` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `yazar` varchar(50) NOT NULL,
  `basımsayisi` int(11) NOT NULL,
  `yayınevi` varchar(50) NOT NULL,
  `sayfasayisi` int(11) NOT NULL,
  `kitapucret` int(11) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kitapkirayanlar`
--

CREATE TABLE `kitapkirayanlar` (
  `barkodnumarasi` int(11) NOT NULL,
  `kiralayantc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `kitapkirayanlar`
--

INSERT INTO `kitapkirayanlar` (`barkodnumarasi`, `kiralayantc`) VALUES
(10, 1111111111),
(20, 222222222),
(30, 333333333),
(40, 4444444),
(50, 555555555);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `test`
--

CREATE TABLE `test` (
  `tc` int(11) NOT NULL,
  `ad` varchar(50) NOT NULL,
  `soyad` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cinsiyet` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `test`
--

INSERT INTO `test` (`tc`, `ad`, `soyad`, `email`, `cinsiyet`) VALUES
(57545454, 'sa', 'adas', 'abcdefg@hotmail.com', 'erkek'),
(454544545, 'ahmet', 'beyaz', 'happ@gmail.com', 'erkek'),
(1232358778, 'muratcan', 'sazak', 'muratcan-szk@hotmail.com', 'erkek');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uyekayit`
--

CREATE TABLE `uyekayit` (
  `tc` int(11) NOT NULL,
  `ad` varchar(50) NOT NULL,
  `soyad` varchar(50) NOT NULL,
  `cep` varchar(50) NOT NULL,
  `e-mail` varchar(50) NOT NULL,
  `cinsiyet` varchar(50) NOT NULL,
  `adres` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kitapeklem`
--
ALTER TABLE `kitapeklem`
  ADD PRIMARY KEY (`barkodnumarası`);

--
-- Tablo için indeksler `kitapkirayanlar`
--
ALTER TABLE `kitapkirayanlar`
  ADD PRIMARY KEY (`barkodnumarasi`);

--
-- Tablo için indeksler `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`tc`);

--
-- Tablo için indeksler `uyekayit`
--
ALTER TABLE `uyekayit`
  ADD PRIMARY KEY (`tc`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `kitapeklem`
--
ALTER TABLE `kitapeklem`
  MODIFY `barkodnumarası` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `kitapkirayanlar`
--
ALTER TABLE `kitapkirayanlar`
  MODIFY `barkodnumarasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- Tablo için AUTO_INCREMENT değeri `test`
--
ALTER TABLE `test`
  MODIFY `tc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1232358779;
--
-- Tablo için AUTO_INCREMENT değeri `uyekayit`
--
ALTER TABLE `uyekayit`
  MODIFY `tc` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
