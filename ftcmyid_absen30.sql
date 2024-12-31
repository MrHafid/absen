-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 29, 2024 at 09:19 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ftcmyid_absen`
--

-- --------------------------------------------------------

--
-- Table structure for table `login_siswa`
--

CREATE TABLE `login_siswa` (
  `id` int(11) NOT NULL,
  `nis_siswa` varchar(110) NOT NULL,
  `email` varchar(110) NOT NULL,
  `password` varchar(110) NOT NULL,
  `is_active` int(11) NOT NULL,
  `kode_unik` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_siswa`
--

INSERT INTO `login_siswa` (`id`, `nis_siswa`, `email`, `password`, `is_active`, `kode_unik`) VALUES
(4, '1835520056', 'ssaptono@yahoo.com', '$2y$10$lq1d0BHZeivzWMGF0brIe.l6lRugSlBex5Y3H9eB0TJJMfFW4ZYGu', 1, 'k'),
(5, '4977568152', 'bambangs@gmail.com', '$2y$10$R/RdQgKy2bTRjqf4N7ClUeCoN8z.uDtPfVLTNamHiz3riZfZxCROu', 1, '863'),
(6, '6607822750', 'yono02@susanti.net', '$2y$10$UcL0/g3Xe.HTHoKGyCEchO/3ZeJTFcEaR6DuOoZfbLFbBdjDGg4J2', 1, 'k'),
(7, '8982334050', 'mila.marpaung@gmail.com', '$2y$10$568r2A43V3V8d/LbAYSDaOz4vLq97JWgDg9yRFm60sbGph9drZjhi', 1, 'k'),
(8, '2845672534', 'labuh.waluyo@yahoo.co.id', '$2y$10$MT1vIXGmTyZloBQcVBvwA.xOa4A.QScxDjkUNjxlxQZLO8HyfDykS', 1, 'k'),
(9, '7939006491', 'anggabaya.hutasoit@halim.or.id', '$2y$10$MT1vIXGmTyZloBQcVBvwA.xOa4A.QScxDjkUNjxlxQZLO8HyfDykS', 1, 'k'),
(10, '1204117091', 'tnashiruddin@gmail.co.id', '$2y$10$MT1vIXGmTyZloBQcVBvwA.xOa4A.QScxDjkUNjxlxQZLO8HyfDykS', 1, 'k'),
(11, '4080799238', 'gamblang13@gmail.com', '$2y$10$gVOIUTEMM6o3SxTkuU2DBuJv.9ulQeVU1OdeGb7yOP30Q.ar/1oMS', 1, 'k'),
(12, '8254881247', 'julia.wahyuni@gmail.com', '$2y$10$gVOIUTEMM6o3SxTkuU2DBuJv.9ulQeVU1OdeGb7yOP30Q.ar/1oMS', 1, 'k'),
(13, '6382997503', 'rahman83@mayasari.biz', '$2y$10$gVOIUTEMM6o3SxTkuU2DBuJv.9ulQeVU1OdeGb7yOP30Q.ar/1oMS', 1, 'k'),
(14, '8656672099', 'gandi30@ramadan.sch.id', '$2y$10$gVOIUTEMM6o3SxTkuU2DBuJv.9ulQeVU1OdeGb7yOP30Q.ar/1oMS', 1, 'k'),
(15, '9097368571', 'kiandra.uyainah@yolanda.ac.id', '$2y$10$gVOIUTEMM6o3SxTkuU2DBuJv.9ulQeVU1OdeGb7yOP30Q.ar/1oMS', 1, 'k'),
(16, '2395813052', 'mulyani.ika@yahoo.co.id', '$2y$10$gVOIUTEMM6o3SxTkuU2DBuJv.9ulQeVU1OdeGb7yOP30Q.ar/1oMS', 1, 'k'),
(17, '4543686319', 'usada.melinda@permata.ac.id', '$2y$10$gVOIUTEMM6o3SxTkuU2DBuJv.9ulQeVU1OdeGb7yOP30Q.ar/1oMS', 1, 'k'),
(18, '9171170901', 'yosef.marbun@yahoo.co.id', '$2y$10$gVOIUTEMM6o3SxTkuU2DBuJv.9ulQeVU1OdeGb7yOP30Q.ar/1oMS', 1, 'k'),
(19, '6538479764', 'arahimah@pratiwi.org', '$2y$10$gVOIUTEMM6o3SxTkuU2DBuJv.9ulQeVU1OdeGb7yOP30Q.ar/1oMS', 1, 'k'),
(20, '7106437624', 'ssitorus@gmail.com', '$2y$10$gVOIUTEMM6o3SxTkuU2DBuJv.9ulQeVU1OdeGb7yOP30Q.ar/1oMS', 1, 'k'),
(21, '3798576419', 'rahmawati.gaiman@wastuti.desa.id', '$2y$10$gVOIUTEMM6o3SxTkuU2DBuJv.9ulQeVU1OdeGb7yOP30Q.ar/1oMS', 1, 'k'),
(22, '1772308042', 'pirawan@waskita.ac.id', '$2y$10$gVOIUTEMM6o3SxTkuU2DBuJv.9ulQeVU1OdeGb7yOP30Q.ar/1oMS', 1, 'k'),
(23, '9282126454', 'upik56@yahoo.com', '$2y$10$gVOIUTEMM6o3SxTkuU2DBuJv.9ulQeVU1OdeGb7yOP30Q.ar/1oMS', 1, 'k'),
(24, '2665870202', 'hpurnawati@sitompul.biz.id', '$2y$10$gVOIUTEMM6o3SxTkuU2DBuJv.9ulQeVU1OdeGb7yOP30Q.ar/1oMS', 1, 'k'),
(25, '4563389833', 'kemal.maheswara@hasanah.name', '$2y$10$gVOIUTEMM6o3SxTkuU2DBuJv.9ulQeVU1OdeGb7yOP30Q.ar/1oMS', 1, 'k'),
(26, '8933993858', 'cici.putra@gmail.com', '$2y$10$gVOIUTEMM6o3SxTkuU2DBuJv.9ulQeVU1OdeGb7yOP30Q.ar/1oMS', 1, 'k'),
(27, '9747864369', 'jfarida@yahoo.co.id', '$2y$10$gVOIUTEMM6o3SxTkuU2DBuJv.9ulQeVU1OdeGb7yOP30Q.ar/1oMS', 1, 'k'),
(28, '5437283524', 'rusman25@rahmawati.mil.id', '$2y$10$gVOIUTEMM6o3SxTkuU2DBuJv.9ulQeVU1OdeGb7yOP30Q.ar/1oMS', 1, 'k'),
(29, '1264466482', 'nugroho.puji@gmail.co.id', '$2y$10$gVOIUTEMM6o3SxTkuU2DBuJv.9ulQeVU1OdeGb7yOP30Q.ar/1oMS', 1, 'k'),
(30, '2839157997', 'xlazuardi@gmail.co.id', '$2y$10$gVOIUTEMM6o3SxTkuU2DBuJv.9ulQeVU1OdeGb7yOP30Q.ar/1oMS', 1, 'k'),
(31, '4881038258', 'aryani.nrima@zulkarnain.co', '$2y$10$gVOIUTEMM6o3SxTkuU2DBuJv.9ulQeVU1OdeGb7yOP30Q.ar/1oMS', 1, 'k'),
(32, '2670607289', 'padmi.winarsih@yahoo.co.id', '$2y$10$gVOIUTEMM6o3SxTkuU2DBuJv.9ulQeVU1OdeGb7yOP30Q.ar/1oMS', 1, 'k'),
(33, '9616614038', 'makara.melani@gmail.com', '$2y$10$gVOIUTEMM6o3SxTkuU2DBuJv.9ulQeVU1OdeGb7yOP30Q.ar/1oMS', 1, 'k'),
(34, '2617354958', 'hairyanto.jailani@habibi.my.id', '$2y$10$gVOIUTEMM6o3SxTkuU2DBuJv.9ulQeVU1OdeGb7yOP30Q.ar/1oMS', 1, 'k'),
(35, '3604399122', 'jono.utami@hartati.my.id', '$2y$10$gVOIUTEMM6o3SxTkuU2DBuJv.9ulQeVU1OdeGb7yOP30Q.ar/1oMS', 1, 'k'),
(36, '7976458004', 'ynuraini@laksita.tv', '$2y$10$gVOIUTEMM6o3SxTkuU2DBuJv.9ulQeVU1OdeGb7yOP30Q.ar/1oMS', 1, 'k'),
(37, '8578418391', 'calista21@simbolon.co', '$2y$10$gVOIUTEMM6o3SxTkuU2DBuJv.9ulQeVU1OdeGb7yOP30Q.ar/1oMS', 1, 'k'),
(38, '6371159235', 'eli46@laksita.desa.id', '$2y$10$gVOIUTEMM6o3SxTkuU2DBuJv.9ulQeVU1OdeGb7yOP30Q.ar/1oMS', 1, 'k'),
(39, '3985538285', 'bwibisono@widodo.sch.id', '$2y$10$gVOIUTEMM6o3SxTkuU2DBuJv.9ulQeVU1OdeGb7yOP30Q.ar/1oMS', 1, 'k'),
(40, '1139646475', 'budiman.prasetyo@yahoo.com', '$2y$10$gVOIUTEMM6o3SxTkuU2DBuJv.9ulQeVU1OdeGb7yOP30Q.ar/1oMS', 1, 'k'),
(41, '4375133319', 'vmarpaung@nurdiyanti.desa.id', '$2y$10$Bw9TQ1AVdiTnFr/OHpbMkOIe6lRzJ1aScHcHS8pwxFCkm/NNV8qze', 1, 'k'),
(42, '1583477901', 'qhassanah@nasyiah.biz', '$2y$10$Bw9TQ1AVdiTnFr/OHpbMkOIe6lRzJ1aScHcHS8pwxFCkm/NNV8qze', 1, 'k'),
(43, '5299930709', 'safina50@gmail.com', '$2y$10$Bw9TQ1AVdiTnFr/OHpbMkOIe6lRzJ1aScHcHS8pwxFCkm/NNV8qze', 1, 'k'),
(44, '6946905713', 'simon.hasanah@yahoo.com', '$2y$10$Bw9TQ1AVdiTnFr/OHpbMkOIe6lRzJ1aScHcHS8pwxFCkm/NNV8qze', 1, 'k'),
(45, '2413283195', 'andriani.rahmi@gmail.co.id', '$2y$10$Bw9TQ1AVdiTnFr/OHpbMkOIe6lRzJ1aScHcHS8pwxFCkm/NNV8qze', 1, 'k'),
(46, '5357773855', 'cusada@gmail.com', '$2y$10$Bw9TQ1AVdiTnFr/OHpbMkOIe6lRzJ1aScHcHS8pwxFCkm/NNV8qze', 1, 'k'),
(47, '1581694613', 'uprastuti@yahoo.co.id', '$2y$10$Bw9TQ1AVdiTnFr/OHpbMkOIe6lRzJ1aScHcHS8pwxFCkm/NNV8qze', 1, 'k'),
(48, '2851990290', 'hasim92@hidayat.net', '$2y$10$Bw9TQ1AVdiTnFr/OHpbMkOIe6lRzJ1aScHcHS8pwxFCkm/NNV8qze', 1, 'k'),
(49, '3482009311', 'ayu38@yahoo.co.id', '$2y$10$Bw9TQ1AVdiTnFr/OHpbMkOIe6lRzJ1aScHcHS8pwxFCkm/NNV8qze', 1, 'k'),
(50, '9637861219', 'kusumo.najib@gmail.com', '$2y$10$Bw9TQ1AVdiTnFr/OHpbMkOIe6lRzJ1aScHcHS8pwxFCkm/NNV8qze', 1, 'k'),
(51, '6559301819', 'pertiwi.rosman@gmail.com', '$2y$10$Bw9TQ1AVdiTnFr/OHpbMkOIe6lRzJ1aScHcHS8pwxFCkm/NNV8qze', 1, 'k'),
(52, '1150919084', 'cahyadi.farida@mansur.com', '$2y$10$Bw9TQ1AVdiTnFr/OHpbMkOIe6lRzJ1aScHcHS8pwxFCkm/NNV8qze', 1, 'k'),
(53, '3588292842', 'prakosa.mayasari@puspasari.go.id', '$2y$10$Bw9TQ1AVdiTnFr/OHpbMkOIe6lRzJ1aScHcHS8pwxFCkm/NNV8qze', 1, 'k'),
(54, '7429531219', 'czulaika@yahoo.co.id', '$2y$10$Bw9TQ1AVdiTnFr/OHpbMkOIe6lRzJ1aScHcHS8pwxFCkm/NNV8qze', 1, 'k'),
(55, '1333675209', 'utami.siska@zulaika.co.id', '$2y$10$Bw9TQ1AVdiTnFr/OHpbMkOIe6lRzJ1aScHcHS8pwxFCkm/NNV8qze', 1, 'k'),
(56, '8746786434', 'budiman.agus@thamrin.in', '$2y$10$Bw9TQ1AVdiTnFr/OHpbMkOIe6lRzJ1aScHcHS8pwxFCkm/NNV8qze', 1, 'k'),
(57, '4356519424', 'wijayanti.murti@gmail.com', '$2y$10$Bw9TQ1AVdiTnFr/OHpbMkOIe6lRzJ1aScHcHS8pwxFCkm/NNV8qze', 1, 'k'),
(58, '5530226653', 'estiawan13@yahoo.co.id', '$2y$10$Bw9TQ1AVdiTnFr/OHpbMkOIe6lRzJ1aScHcHS8pwxFCkm/NNV8qze', 1, 'k'),
(59, '4841752418', 'prastuti.agus@budiyanto.net', '$2y$10$Bw9TQ1AVdiTnFr/OHpbMkOIe6lRzJ1aScHcHS8pwxFCkm/NNV8qze', 1, 'k'),
(60, '3888140898', 'dtamba@yahoo.com', '$2y$10$Bw9TQ1AVdiTnFr/OHpbMkOIe6lRzJ1aScHcHS8pwxFCkm/NNV8qze', 1, 'k'),
(61, '4073476848', 'tirta56@yahoo.com', '$2y$10$Bw9TQ1AVdiTnFr/OHpbMkOIe6lRzJ1aScHcHS8pwxFCkm/NNV8qze', 1, 'k'),
(62, '2793203334', 'melani.cawisono@yahoo.com', '$2y$10$Bw9TQ1AVdiTnFr/OHpbMkOIe6lRzJ1aScHcHS8pwxFCkm/NNV8qze', 1, 'k'),
(63, '8202081480', 'khardiansyah@yahoo.com', '$2y$10$Bw9TQ1AVdiTnFr/OHpbMkOIe6lRzJ1aScHcHS8pwxFCkm/NNV8qze', 1, 'k'),
(64, '1846105685', 'agustina.chelsea@padmasari.mil.id', '$2y$10$Bw9TQ1AVdiTnFr/OHpbMkOIe6lRzJ1aScHcHS8pwxFCkm/NNV8qze', 1, 'k'),
(65, '5387077834', 'kusumo.zamira@mayasari.com', '$2y$10$Bw9TQ1AVdiTnFr/OHpbMkOIe6lRzJ1aScHcHS8pwxFCkm/NNV8qze', 1, 'k'),
(66, '3366930702', 'rnatsir@hasanah.com', '$2y$10$Bw9TQ1AVdiTnFr/OHpbMkOIe6lRzJ1aScHcHS8pwxFCkm/NNV8qze', 1, 'k'),
(67, '2549757362', 'jail.rahayu@hakim.co.id', '$2y$10$Bw9TQ1AVdiTnFr/OHpbMkOIe6lRzJ1aScHcHS8pwxFCkm/NNV8qze', 1, 'k'),
(68, '4741215468', 'sihombing.ani@suwarno.org', '$2y$10$Bw9TQ1AVdiTnFr/OHpbMkOIe6lRzJ1aScHcHS8pwxFCkm/NNV8qze', 1, 'k'),
(69, '6846597831', 'jmahendra@sihombing.info', '$2y$10$Bw9TQ1AVdiTnFr/OHpbMkOIe6lRzJ1aScHcHS8pwxFCkm/NNV8qze', 1, 'k'),
(70, '5532254863', 'puspita.kuncara@yahoo.com', '$2y$10$Bw9TQ1AVdiTnFr/OHpbMkOIe6lRzJ1aScHcHS8pwxFCkm/NNV8qze', 1, 'k'),
(71, '2978223124', 'najmudin.paris@gmail.com', '$2y$10$Bw9TQ1AVdiTnFr/OHpbMkOIe6lRzJ1aScHcHS8pwxFCkm/NNV8qze', 1, 'k'),
(72, '6058438710', 'kusmawati.elma@yahoo.com', '$2y$10$Bw9TQ1AVdiTnFr/OHpbMkOIe6lRzJ1aScHcHS8pwxFCkm/NNV8qze', 1, 'k'),
(73, '6982142376', 'ynasyiah@yahoo.com', '$2y$10$Bw9TQ1AVdiTnFr/OHpbMkOIe6lRzJ1aScHcHS8pwxFCkm/NNV8qze', 1, 'k'),
(74, '3789739743', 'jamal.purwanti@prabowo.mil.id', '$2y$10$Bw9TQ1AVdiTnFr/OHpbMkOIe6lRzJ1aScHcHS8pwxFCkm/NNV8qze', 1, 'k'),
(75, '8060836401', 'umar59@yahoo.co.id', '$2y$10$Bw9TQ1AVdiTnFr/OHpbMkOIe6lRzJ1aScHcHS8pwxFCkm/NNV8qze', 1, 'k'),
(76, '3997801687', 'chelsea.lestari@halimah.ac.id', '$2y$10$/ydZSl8LgwuXAmRZ8Zaqaex4pb9JSe/z9KMvy81LWvHVfoiB4QqIq', 1, 'k'),
(77, '2702280508', 'dacin.kuswoyo@mandasari.com', '$2y$10$/ydZSl8LgwuXAmRZ8Zaqaex4pb9JSe/z9KMvy81LWvHVfoiB4QqIq', 1, 'k'),
(78, '3939722975', 'raharja.zulkarnain@yahoo.com', '$2y$10$/ydZSl8LgwuXAmRZ8Zaqaex4pb9JSe/z9KMvy81LWvHVfoiB4QqIq', 1, 'k'),
(79, '9647437130', 'unjani93@dongoran.net', '$2y$10$/ydZSl8LgwuXAmRZ8Zaqaex4pb9JSe/z9KMvy81LWvHVfoiB4QqIq', 1, 'k'),
(80, '1749877536', 'raina75@gunarto.go.id', '$2y$10$/ydZSl8LgwuXAmRZ8Zaqaex4pb9JSe/z9KMvy81LWvHVfoiB4QqIq', 1, 'k'),
(81, '3751312648', 'farida.lidya@yahoo.co.id', '$2y$10$/ydZSl8LgwuXAmRZ8Zaqaex4pb9JSe/z9KMvy81LWvHVfoiB4QqIq', 1, 'k'),
(82, '9841904462', 'hartati.sarah@yahoo.com', '$2y$10$/ydZSl8LgwuXAmRZ8Zaqaex4pb9JSe/z9KMvy81LWvHVfoiB4QqIq', 1, 'k'),
(83, '3376105840', 'fpurnawati@tampubolon.biz', '$2y$10$/ydZSl8LgwuXAmRZ8Zaqaex4pb9JSe/z9KMvy81LWvHVfoiB4QqIq', 1, 'k'),
(84, '4565643731', 'ajiono28@gmail.co.id', '$2y$10$/ydZSl8LgwuXAmRZ8Zaqaex4pb9JSe/z9KMvy81LWvHVfoiB4QqIq', 1, 'k'),
(85, '8077219798', 'dsihombing@prayoga.info', '$2y$10$/ydZSl8LgwuXAmRZ8Zaqaex4pb9JSe/z9KMvy81LWvHVfoiB4QqIq', 1, 'k'),
(86, '2216906244', 'nababan.rahmi@gmail.co.id', '$2y$10$/ydZSl8LgwuXAmRZ8Zaqaex4pb9JSe/z9KMvy81LWvHVfoiB4QqIq', 1, 'k'),
(87, '3648033580', 'nnajmudin@yahoo.com', '$2y$10$/ydZSl8LgwuXAmRZ8Zaqaex4pb9JSe/z9KMvy81LWvHVfoiB4QqIq', 1, 'k'),
(88, '1860989734', 'opan.uyainah@yahoo.co.id', '$2y$10$/ydZSl8LgwuXAmRZ8Zaqaex4pb9JSe/z9KMvy81LWvHVfoiB4QqIq', 1, 'k'),
(89, '5510209440', 'krajasa@yahoo.com', '$2y$10$/ydZSl8LgwuXAmRZ8Zaqaex4pb9JSe/z9KMvy81LWvHVfoiB4QqIq', 1, 'k'),
(90, '4039349038', 'xsaragih@purnawati.sch.id', '$2y$10$/ydZSl8LgwuXAmRZ8Zaqaex4pb9JSe/z9KMvy81LWvHVfoiB4QqIq', 1, 'k'),
(91, '2866221934', 'mardhiyah.kania@gmail.co.id', '$2y$10$/ydZSl8LgwuXAmRZ8Zaqaex4pb9JSe/z9KMvy81LWvHVfoiB4QqIq', 1, 'k'),
(92, '9478363596', 'galih35@melani.id', '$2y$10$/ydZSl8LgwuXAmRZ8Zaqaex4pb9JSe/z9KMvy81LWvHVfoiB4QqIq', 1, 'k'),
(93, '4618628783', 'cinthia.fujiati@yahoo.com', '$2y$10$/ydZSl8LgwuXAmRZ8Zaqaex4pb9JSe/z9KMvy81LWvHVfoiB4QqIq', 1, 'k'),
(94, '3998004297', 'wardaya.siregar@yahoo.co.id', '$2y$10$/ydZSl8LgwuXAmRZ8Zaqaex4pb9JSe/z9KMvy81LWvHVfoiB4QqIq', 1, 'k'),
(95, '4162113645', 'yuliarti.eja@gmail.com', '$2y$10$/ydZSl8LgwuXAmRZ8Zaqaex4pb9JSe/z9KMvy81LWvHVfoiB4QqIq', 1, 'k'),
(96, '6662813397', 'winda79@gmail.com', '$2y$10$/ydZSl8LgwuXAmRZ8Zaqaex4pb9JSe/z9KMvy81LWvHVfoiB4QqIq', 1, 'k'),
(97, '4557218914', 'fitriani96@zulkarnain.biz.id', '$2y$10$/ydZSl8LgwuXAmRZ8Zaqaex4pb9JSe/z9KMvy81LWvHVfoiB4QqIq', 1, 'k'),
(98, '7569539160', 'sitompul.maria@yahoo.com', '$2y$10$/ydZSl8LgwuXAmRZ8Zaqaex4pb9JSe/z9KMvy81LWvHVfoiB4QqIq', 1, 'k'),
(99, '2690019488', 'nwulandari@gmail.com', '$2y$10$/ydZSl8LgwuXAmRZ8Zaqaex4pb9JSe/z9KMvy81LWvHVfoiB4QqIq', 1, 'k'),
(100, '3338039621', 'wahyu.farida@wastuti.go.id', '$2y$10$/ydZSl8LgwuXAmRZ8Zaqaex4pb9JSe/z9KMvy81LWvHVfoiB4QqIq', 1, 'k'),
(101, '8245607341', 'szulaika@lailasari.com', '$2y$10$/ydZSl8LgwuXAmRZ8Zaqaex4pb9JSe/z9KMvy81LWvHVfoiB4QqIq', 1, 'k'),
(102, '5244413319', 'puji25@mandasari.go.id', '$2y$10$/ydZSl8LgwuXAmRZ8Zaqaex4pb9JSe/z9KMvy81LWvHVfoiB4QqIq', 1, 'k'),
(103, '1419856324', 'jaya30@wastuti.tv', '$2y$10$/ydZSl8LgwuXAmRZ8Zaqaex4pb9JSe/z9KMvy81LWvHVfoiB4QqIq', 1, 'k'),
(104, '5693454361', 'inamaga@gmail.co.id', '$2y$10$/ydZSl8LgwuXAmRZ8Zaqaex4pb9JSe/z9KMvy81LWvHVfoiB4QqIq', 1, 'k'),
(105, '3213148393', 'siregar.dalima@yahoo.co.id', '$2y$10$/ydZSl8LgwuXAmRZ8Zaqaex4pb9JSe/z9KMvy81LWvHVfoiB4QqIq', 1, 'k'),
(106, '4660119955', 'pradana.hamzah@andriani.id', '$2y$10$/ydZSl8LgwuXAmRZ8Zaqaex4pb9JSe/z9KMvy81LWvHVfoiB4QqIq', 1, 'k'),
(107, '8211174691', 'gprasasta@mulyani.desa.id', '$2y$10$/ydZSl8LgwuXAmRZ8Zaqaex4pb9JSe/z9KMvy81LWvHVfoiB4QqIq', 1, 'k'),
(108, '6788946067', 'carub98@ardianto.in', '$2y$10$/ydZSl8LgwuXAmRZ8Zaqaex4pb9JSe/z9KMvy81LWvHVfoiB4QqIq', 1, 'k'),
(109, '4495735810', 'dimaz.pertiwi@yulianti.org', '$2y$10$/ydZSl8LgwuXAmRZ8Zaqaex4pb9JSe/z9KMvy81LWvHVfoiB4QqIq', 1, 'k'),
(110, '4227211613', 'rika.halimah@yahoo.co.id', '$2y$10$/ydZSl8LgwuXAmRZ8Zaqaex4pb9JSe/z9KMvy81LWvHVfoiB4QqIq', 1, 'k'),
(111, '6693095723', 'pratama.uchita@gmail.co.id', '$2y$10$LSkxKjV3PG4IVQ/C0.q5xeGZCtJ00q12ie9P8.PwtwybDSIfqITpO', 1, 'k'),
(112, '4359850760', 'yessi.putra@palastri.my.id', '$2y$10$LSkxKjV3PG4IVQ/C0.q5xeGZCtJ00q12ie9P8.PwtwybDSIfqITpO', 1, 'k'),
(113, '1835147372', 'endah69@gmail.com', '$2y$10$LSkxKjV3PG4IVQ/C0.q5xeGZCtJ00q12ie9P8.PwtwybDSIfqITpO', 1, 'k'),
(114, '7659595738', 'mastuti@yahoo.com', '$2y$10$LSkxKjV3PG4IVQ/C0.q5xeGZCtJ00q12ie9P8.PwtwybDSIfqITpO', 1, 'k'),
(115, '7293695893', 'artawan.kuswandari@kusmawati.net', '$2y$10$LSkxKjV3PG4IVQ/C0.q5xeGZCtJ00q12ie9P8.PwtwybDSIfqITpO', 1, 'k'),
(116, '3661250085', 'gilda82@wibowo.biz.id', '$2y$10$LSkxKjV3PG4IVQ/C0.q5xeGZCtJ00q12ie9P8.PwtwybDSIfqITpO', 1, 'k'),
(117, '9170161638', 'xusamah@yahoo.com', '$2y$10$LSkxKjV3PG4IVQ/C0.q5xeGZCtJ00q12ie9P8.PwtwybDSIfqITpO', 1, 'k'),
(118, '2709719706', 'olailasari@hutasoit.my.id', '$2y$10$LSkxKjV3PG4IVQ/C0.q5xeGZCtJ00q12ie9P8.PwtwybDSIfqITpO', 1, 'k'),
(119, '4036100164', 'tnugroho@gmail.com', '$2y$10$LSkxKjV3PG4IVQ/C0.q5xeGZCtJ00q12ie9P8.PwtwybDSIfqITpO', 1, 'k'),
(120, '4559169335', 'mayasari.ella@namaga.or.id', '$2y$10$LSkxKjV3PG4IVQ/C0.q5xeGZCtJ00q12ie9P8.PwtwybDSIfqITpO', 1, 'k'),
(121, '3595473276', 'plailasari@mahendra.go.id', '$2y$10$LSkxKjV3PG4IVQ/C0.q5xeGZCtJ00q12ie9P8.PwtwybDSIfqITpO', 1, 'k'),
(122, '4060457216', 'maman.gunarto@gmail.co.id', '$2y$10$LSkxKjV3PG4IVQ/C0.q5xeGZCtJ00q12ie9P8.PwtwybDSIfqITpO', 1, 'k'),
(123, '8757317944', 'tmegantara@rahayu.ac.id', '$2y$10$LSkxKjV3PG4IVQ/C0.q5xeGZCtJ00q12ie9P8.PwtwybDSIfqITpO', 1, 'k'),
(124, '3598607547', 'pandu69@hastuti.id', '$2y$10$LSkxKjV3PG4IVQ/C0.q5xeGZCtJ00q12ie9P8.PwtwybDSIfqITpO', 1, 'k'),
(125, '6248993659', 'teddy.pertiwi@riyanti.org', '$2y$10$LSkxKjV3PG4IVQ/C0.q5xeGZCtJ00q12ie9P8.PwtwybDSIfqITpO', 1, 'k'),
(126, '4764966678', 'latika.wastuti@nasyidah.or.id', '$2y$10$LSkxKjV3PG4IVQ/C0.q5xeGZCtJ00q12ie9P8.PwtwybDSIfqITpO', 1, 'k'),
(127, '8727082658', 'shalim@yahoo.com', '$2y$10$LSkxKjV3PG4IVQ/C0.q5xeGZCtJ00q12ie9P8.PwtwybDSIfqITpO', 1, 'k'),
(128, '2529743918', 'jelita67@gmail.co.id', '$2y$10$LSkxKjV3PG4IVQ/C0.q5xeGZCtJ00q12ie9P8.PwtwybDSIfqITpO', 1, 'k'),
(129, '1712713747', 'wasis45@gmail.com', '$2y$10$LSkxKjV3PG4IVQ/C0.q5xeGZCtJ00q12ie9P8.PwtwybDSIfqITpO', 1, 'k'),
(130, '1646225874', 'cuyainah@yahoo.co.id', '$2y$10$LSkxKjV3PG4IVQ/C0.q5xeGZCtJ00q12ie9P8.PwtwybDSIfqITpO', 1, 'k'),
(131, '7550958187', 'cecep.lestari@prasasta.info', '$2y$10$LSkxKjV3PG4IVQ/C0.q5xeGZCtJ00q12ie9P8.PwtwybDSIfqITpO', 1, 'k'),
(132, '5899988137', 'qmangunsong@habibi.mil.id', '$2y$10$LSkxKjV3PG4IVQ/C0.q5xeGZCtJ00q12ie9P8.PwtwybDSIfqITpO', 1, 'k'),
(133, '5074048780', 'nastuti@namaga.web.id', '$2y$10$LSkxKjV3PG4IVQ/C0.q5xeGZCtJ00q12ie9P8.PwtwybDSIfqITpO', 1, 'k'),
(134, '9987173900', 'tamba.patricia@iswahyudi.info', '$2y$10$LSkxKjV3PG4IVQ/C0.q5xeGZCtJ00q12ie9P8.PwtwybDSIfqITpO', 1, 'k'),
(135, '3413416559', 'lmaulana@saptono.web.id', '$2y$10$LSkxKjV3PG4IVQ/C0.q5xeGZCtJ00q12ie9P8.PwtwybDSIfqITpO', 1, 'k'),
(136, '5211793294', 'lhassanah@firmansyah.id', '$2y$10$LSkxKjV3PG4IVQ/C0.q5xeGZCtJ00q12ie9P8.PwtwybDSIfqITpO', 1, 'k'),
(137, '6155791960', 'sharyanto@budiyanto.web.id', '$2y$10$LSkxKjV3PG4IVQ/C0.q5xeGZCtJ00q12ie9P8.PwtwybDSIfqITpO', 1, 'k'),
(138, '8841120685', 'banawi98@januar.org', '$2y$10$LSkxKjV3PG4IVQ/C0.q5xeGZCtJ00q12ie9P8.PwtwybDSIfqITpO', 1, 'k'),
(139, '2985240562', 'ulva.pradana@sudiati.go.id', '$2y$10$LSkxKjV3PG4IVQ/C0.q5xeGZCtJ00q12ie9P8.PwtwybDSIfqITpO', 1, 'k'),
(140, '4593673918', 'aisyah.hartati@kurniawan.in', '$2y$10$egnVk2gSbTixZcXNRGUKquRX55gdKomrVH5/KDXvKPSSiBg1UKSnW', 1, 'k'),
(141, '4204640689', 'vnajmudin@gmail.co.id', '$2y$10$egnVk2gSbTixZcXNRGUKquRX55gdKomrVH5/KDXvKPSSiBg1UKSnW', 1, 'k'),
(142, '3053090973', 'jaya91@yahoo.co.id', '$2y$10$egnVk2gSbTixZcXNRGUKquRX55gdKomrVH5/KDXvKPSSiBg1UKSnW', 1, 'k'),
(143, '8949418475', 'nmegantara@yahoo.co.id', '$2y$10$egnVk2gSbTixZcXNRGUKquRX55gdKomrVH5/KDXvKPSSiBg1UKSnW', 1, 'k'),
(144, '1137019712', 'saputra.sarah@hakim.my.id', '$2y$10$egnVk2gSbTixZcXNRGUKquRX55gdKomrVH5/KDXvKPSSiBg1UKSnW', 1, 'k'),
(145, '4025084073', 'galang.mardhiyah@mardhiyah.co', '$2y$10$egnVk2gSbTixZcXNRGUKquRX55gdKomrVH5/KDXvKPSSiBg1UKSnW', 1, 'k'),
(146, '6140077254', 'kwinarsih@tarihoran.info', '$2y$10$egnVk2gSbTixZcXNRGUKquRX55gdKomrVH5/KDXvKPSSiBg1UKSnW', 1, 'k'),
(147, '7355991712', 'ariyanti@gmail.com', '$2y$10$egnVk2gSbTixZcXNRGUKquRX55gdKomrVH5/KDXvKPSSiBg1UKSnW', 1, 'k'),
(148, '7739639173', 'nasyidah.winda@wahyuni.my.id', '$2y$10$egnVk2gSbTixZcXNRGUKquRX55gdKomrVH5/KDXvKPSSiBg1UKSnW', 1, 'k'),
(149, '4382246887', 'karma79@maryati.go.id', '$2y$10$egnVk2gSbTixZcXNRGUKquRX55gdKomrVH5/KDXvKPSSiBg1UKSnW', 1, 'k'),
(150, '7760123013', 'omar00@handayani.com', '$2y$10$egnVk2gSbTixZcXNRGUKquRX55gdKomrVH5/KDXvKPSSiBg1UKSnW', 1, 'k'),
(151, '7769435432', 'yuliarti.clara@hutasoit.my.id', '$2y$10$egnVk2gSbTixZcXNRGUKquRX55gdKomrVH5/KDXvKPSSiBg1UKSnW', 1, 'k'),
(152, '9326137717', 'namaga.jumari@yahoo.com', '$2y$10$egnVk2gSbTixZcXNRGUKquRX55gdKomrVH5/KDXvKPSSiBg1UKSnW', 1, 'k'),
(153, '2869063596', 'tamba.aswani@gmail.com', '$2y$10$egnVk2gSbTixZcXNRGUKquRX55gdKomrVH5/KDXvKPSSiBg1UKSnW', 1, 'k'),
(154, '5529297012', 'gaiman49@yahoo.com', '$2y$10$egnVk2gSbTixZcXNRGUKquRX55gdKomrVH5/KDXvKPSSiBg1UKSnW', 1, 'k'),
(155, '4325221887', 'hasta62@salahudin.in', '$2y$10$egnVk2gSbTixZcXNRGUKquRX55gdKomrVH5/KDXvKPSSiBg1UKSnW', 1, 'k'),
(156, '8774881144', 'vera.haryanti@gmail.com', '$2y$10$egnVk2gSbTixZcXNRGUKquRX55gdKomrVH5/KDXvKPSSiBg1UKSnW', 1, 'k'),
(157, '2693845818', 'janet47@gmail.com', '$2y$10$egnVk2gSbTixZcXNRGUKquRX55gdKomrVH5/KDXvKPSSiBg1UKSnW', 1, 'k'),
(158, '6498223397', 'rardianto@yahoo.com', '$2y$10$egnVk2gSbTixZcXNRGUKquRX55gdKomrVH5/KDXvKPSSiBg1UKSnW', 1, 'k'),
(159, '3533846418', 'yuni.uwais@gmail.com', '$2y$10$egnVk2gSbTixZcXNRGUKquRX55gdKomrVH5/KDXvKPSSiBg1UKSnW', 1, 'k'),
(160, '2502186657', 'candrakanta.damanik@lestari.asia', '$2y$10$egnVk2gSbTixZcXNRGUKquRX55gdKomrVH5/KDXvKPSSiBg1UKSnW', 1, 'k'),
(161, '7355631846', 'kala.pratama@gmail.com', '$2y$10$egnVk2gSbTixZcXNRGUKquRX55gdKomrVH5/KDXvKPSSiBg1UKSnW', 1, 'k'),
(162, '4538264325', 'prayoga.paris@nasyidah.name', '$2y$10$egnVk2gSbTixZcXNRGUKquRX55gdKomrVH5/KDXvKPSSiBg1UKSnW', 1, 'k'),
(163, '4021667743', 'ywidiastuti@wibisono.biz', '$2y$10$egnVk2gSbTixZcXNRGUKquRX55gdKomrVH5/KDXvKPSSiBg1UKSnW', 1, 'k'),
(164, '5063192887', 'raisa.puspita@handayani.net', '$2y$10$egnVk2gSbTixZcXNRGUKquRX55gdKomrVH5/KDXvKPSSiBg1UKSnW', 1, 'k'),
(165, '1791000599', 'wahyu.suryatmi@sudiati.my.id', '$2y$10$egnVk2gSbTixZcXNRGUKquRX55gdKomrVH5/KDXvKPSSiBg1UKSnW', 1, 'k'),
(166, '2612533791', 'vnatsir@hutagalung.my.id', '$2y$10$egnVk2gSbTixZcXNRGUKquRX55gdKomrVH5/KDXvKPSSiBg1UKSnW', 1, 'k'),
(167, '3638323282', 'hartaka23@napitupulu.or.id', '$2y$10$egnVk2gSbTixZcXNRGUKquRX55gdKomrVH5/KDXvKPSSiBg1UKSnW', 1, 'k'),
(168, '9676124017', 'kariman73@maheswara.or.id', '$2y$10$egnVk2gSbTixZcXNRGUKquRX55gdKomrVH5/KDXvKPSSiBg1UKSnW', 1, 'k'),
(169, '1347205793', 'bakda.budiman@mustofa.tv', '$2y$10$egnVk2gSbTixZcXNRGUKquRX55gdKomrVH5/KDXvKPSSiBg1UKSnW', 1, 'k'),
(170, '4739493975', 'widodo.intan@gmail.com', '$2y$10$egnVk2gSbTixZcXNRGUKquRX55gdKomrVH5/KDXvKPSSiBg1UKSnW', 1, 'k'),
(171, '2415339149', 'wulan.lailasari@pradipta.ac.id', '$2y$10$egnVk2gSbTixZcXNRGUKquRX55gdKomrVH5/KDXvKPSSiBg1UKSnW', 1, 'k'),
(172, '7621909693', 'gawati62@gmail.co.id', '$2y$10$egnVk2gSbTixZcXNRGUKquRX55gdKomrVH5/KDXvKPSSiBg1UKSnW', 1, 'k'),
(173, '6092604182', 'kamal65@kusumo.name', '$2y$10$egnVk2gSbTixZcXNRGUKquRX55gdKomrVH5/KDXvKPSSiBg1UKSnW', 1, 'k'),
(174, '5251338420', 'tsaefullah@nasyiah.desa.id', '$2y$10$egnVk2gSbTixZcXNRGUKquRX55gdKomrVH5/KDXvKPSSiBg1UKSnW', 1, 'k'),
(175, '3136638035', 'prakasa.cindy@nasyidah.tv', '$2y$10$3IoyRmocl3uOexglvCwUSOAt7GjKnpfA2eMM9ZE94jMuPglrbMgJK', 1, 'k'),
(176, '7964502994', 'zalindra55@yahoo.co.id', '$2y$10$3IoyRmocl3uOexglvCwUSOAt7GjKnpfA2eMM9ZE94jMuPglrbMgJK', 1, 'k'),
(177, '3713955652', 'pratiwi.juli@yahoo.com', '$2y$10$3IoyRmocl3uOexglvCwUSOAt7GjKnpfA2eMM9ZE94jMuPglrbMgJK', 1, 'k'),
(178, '2268425620', 'ksafitri@yahoo.com', '$2y$10$3IoyRmocl3uOexglvCwUSOAt7GjKnpfA2eMM9ZE94jMuPglrbMgJK', 1, 'k'),
(179, '3802839583', 'etarihoran@gmail.com', '$2y$10$3IoyRmocl3uOexglvCwUSOAt7GjKnpfA2eMM9ZE94jMuPglrbMgJK', 1, 'k'),
(180, '8906890258', 'permadi.elma@rahayu.desa.id', '$2y$10$3IoyRmocl3uOexglvCwUSOAt7GjKnpfA2eMM9ZE94jMuPglrbMgJK', 1, 'k'),
(181, '6911198386', 'qardianto@zulaika.web.id', '$2y$10$3IoyRmocl3uOexglvCwUSOAt7GjKnpfA2eMM9ZE94jMuPglrbMgJK', 1, 'k'),
(182, '5357703056', 'jelita33@rahmawati.web.id', '$2y$10$3IoyRmocl3uOexglvCwUSOAt7GjKnpfA2eMM9ZE94jMuPglrbMgJK', 1, 'k'),
(183, '3280853986', 'nasyiah.paramita@gmail.com', '$2y$10$3IoyRmocl3uOexglvCwUSOAt7GjKnpfA2eMM9ZE94jMuPglrbMgJK', 1, 'k'),
(184, '2409040612', 'bakianto55@tamba.info', '$2y$10$3IoyRmocl3uOexglvCwUSOAt7GjKnpfA2eMM9ZE94jMuPglrbMgJK', 1, 'k'),
(185, '7480867888', 'kayun36@yahoo.com', '$2y$10$3IoyRmocl3uOexglvCwUSOAt7GjKnpfA2eMM9ZE94jMuPglrbMgJK', 1, 'k'),
(186, '9993868278', 'ivan49@gmail.co.id', '$2y$10$3IoyRmocl3uOexglvCwUSOAt7GjKnpfA2eMM9ZE94jMuPglrbMgJK', 1, 'k'),
(187, '3811794013', 'rosman.laksita@hastuti.go.id', '$2y$10$3IoyRmocl3uOexglvCwUSOAt7GjKnpfA2eMM9ZE94jMuPglrbMgJK', 1, 'k'),
(188, '6286642951', 'nzulkarnain@wacana.or.id', '$2y$10$3IoyRmocl3uOexglvCwUSOAt7GjKnpfA2eMM9ZE94jMuPglrbMgJK', 1, 'k'),
(189, '5050736833', 'carla.suartini@gmail.co.id', '$2y$10$3IoyRmocl3uOexglvCwUSOAt7GjKnpfA2eMM9ZE94jMuPglrbMgJK', 1, 'k'),
(190, '9475140498', 'shakila86@gmail.com', '$2y$10$3IoyRmocl3uOexglvCwUSOAt7GjKnpfA2eMM9ZE94jMuPglrbMgJK', 1, 'k'),
(191, '4672411554', 'mumpuni49@sirait.biz.id', '$2y$10$3IoyRmocl3uOexglvCwUSOAt7GjKnpfA2eMM9ZE94jMuPglrbMgJK', 1, 'k'),
(192, '9647401165', 'icha.pratiwi@yahoo.com', '$2y$10$3IoyRmocl3uOexglvCwUSOAt7GjKnpfA2eMM9ZE94jMuPglrbMgJK', 1, 'k'),
(193, '6989262669', 'mutia.siregar@nasyidah.desa.id', '$2y$10$3IoyRmocl3uOexglvCwUSOAt7GjKnpfA2eMM9ZE94jMuPglrbMgJK', 1, 'k'),
(194, '9370897807', 'intan.wulandari@andriani.org', '$2y$10$3IoyRmocl3uOexglvCwUSOAt7GjKnpfA2eMM9ZE94jMuPglrbMgJK', 1, 'k'),
(195, '1853330265', 'astuti.bagya@gmail.co.id', '$2y$10$3IoyRmocl3uOexglvCwUSOAt7GjKnpfA2eMM9ZE94jMuPglrbMgJK', 1, 'k'),
(196, '8211065492', 'caket91@gmail.co.id', '$2y$10$3IoyRmocl3uOexglvCwUSOAt7GjKnpfA2eMM9ZE94jMuPglrbMgJK', 1, 'k'),
(197, '7934181173', 'rajasa.ifa@yahoo.com', '$2y$10$3IoyRmocl3uOexglvCwUSOAt7GjKnpfA2eMM9ZE94jMuPglrbMgJK', 1, 'k'),
(198, '2590820324', 'salahudin.opung@yahoo.co.id', '$2y$10$3IoyRmocl3uOexglvCwUSOAt7GjKnpfA2eMM9ZE94jMuPglrbMgJK', 1, 'k'),
(199, '1274950438', 'usada.laras@winarno.biz.id', '$2y$10$3IoyRmocl3uOexglvCwUSOAt7GjKnpfA2eMM9ZE94jMuPglrbMgJK', 1, 'k'),
(200, '6749786879', 'azalea.sihombing@gmail.co.id', '$2y$10$3IoyRmocl3uOexglvCwUSOAt7GjKnpfA2eMM9ZE94jMuPglrbMgJK', 1, 'k'),
(201, '9600808083', 'tasnim.gunarto@yahoo.co.id', '$2y$10$3IoyRmocl3uOexglvCwUSOAt7GjKnpfA2eMM9ZE94jMuPglrbMgJK', 1, 'k'),
(202, '5123837065', 'kfarida@saputra.co', '$2y$10$3IoyRmocl3uOexglvCwUSOAt7GjKnpfA2eMM9ZE94jMuPglrbMgJK', 1, 'k'),
(203, '6133632432', 'vardianto@yahoo.com', '$2y$10$3IoyRmocl3uOexglvCwUSOAt7GjKnpfA2eMM9ZE94jMuPglrbMgJK', 1, 'k'),
(204, '4777205735', 'uhassanah@rajasa.co', '$2y$10$3IoyRmocl3uOexglvCwUSOAt7GjKnpfA2eMM9ZE94jMuPglrbMgJK', 1, 'k'),
(205, '8305262943', 'pratama.adiarja@palastri.desa.id', '$2y$10$3IoyRmocl3uOexglvCwUSOAt7GjKnpfA2eMM9ZE94jMuPglrbMgJK', 1, 'k'),
(206, '2016481770', 'lailasari.intan@yahoo.com', '$2y$10$3IoyRmocl3uOexglvCwUSOAt7GjKnpfA2eMM9ZE94jMuPglrbMgJK', 1, 'k'),
(207, '5827421948', 'qmaryati@budiman.name', '$2y$10$3IoyRmocl3uOexglvCwUSOAt7GjKnpfA2eMM9ZE94jMuPglrbMgJK', 1, 'k'),
(208, '9419727739', 'laras.pangestu@yahoo.co.id', '$2y$10$3IoyRmocl3uOexglvCwUSOAt7GjKnpfA2eMM9ZE94jMuPglrbMgJK', 1, 'k'),
(209, '3093092670', 'paryani@gmail.com', '$2y$10$3IoyRmocl3uOexglvCwUSOAt7GjKnpfA2eMM9ZE94jMuPglrbMgJK', 1, 'k'),
(210, '5114427520', 'ilmansunannudin2@gmail.com', '$2y$10$JHtwv/iDu74F3MSEXHy0Fujf4Q4k/hVTxKBHRSlarL6tmnqwbwf0i', 1, ''),
(211, '4977568152', 'bambangs@gmail.com', '$2y$10$R/RdQgKy2bTRjqf4N7ClUeCoN8z.uDtPfVLTNamHiz3riZfZxCROu', 1, '863'),
(212, '4977568152', 'bambangs@gmail.com', '$2y$10$R/RdQgKy2bTRjqf4N7ClUeCoN8z.uDtPfVLTNamHiz3riZfZxCROu', 1, '863');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student_points`
--

CREATE TABLE `student_points` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `sering_menjawab` int(11) DEFAULT NULL,
  `sering_bertanya` int(11) DEFAULT NULL,
  `membantu_guru` int(11) DEFAULT NULL,
  `terlambat` int(11) DEFAULT NULL,
  `tidur` int(11) DEFAULT NULL,
  `tidak_mendengarkan` int(11) DEFAULT NULL,
  `total_keaktifan` float DEFAULT NULL,
  `total_sikap` float DEFAULT NULL,
  `total_points` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_points`
--

INSERT INTO `student_points` (`id`, `student_id`, `sering_menjawab`, `sering_bertanya`, `membantu_guru`, `terlambat`, `tidur`, `tidak_mendengarkan`, `total_keaktifan`, `total_sikap`, `total_points`) VALUES
(20, 5, 4, 3, 5, 3, 5, 5, 2.4, 1.729, 4.129),
(21, 8, 3, 2, 4, 1, 2, 2, 1.8, 0.665, 2.465),
(22, 9, 3, 3, 4, 2, 2, 4, 2, 1.064, 3.064),
(23, 15, 4, 1, 4, 1, 4, 4, 1.8, 1.197, 2.997);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_api`
--

CREATE TABLE `tabel_api` (
  `id_api` int(11) NOT NULL,
  `api_key` varchar(200) NOT NULL,
  `sender` varchar(150) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_api`
--

INSERT INTO `tabel_api` (`id_api`, `api_key`, `sender`, `url`) VALUES
(1, 'RhkkS9fp23qRZojtcMekLWMKpdbT5U', '62882021733186', 'http://wa.wndstore.my.id/send-message');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_detail_absen`
--

CREATE TABLE `tabel_detail_absen` (
  `id_detail` int(11) NOT NULL,
  `jam_absen` time DEFAULT NULL,
  `tanggal_absen` date DEFAULT NULL,
  `nis` varchar(12) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `kode_kelas` int(11) NOT NULL,
  `kode_jurusan` int(11) NOT NULL,
  `masuk` int(11) NOT NULL,
  `keluar` int(11) NOT NULL,
  `lat` varchar(200) DEFAULT NULL,
  `long` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_detail_absen`
--

INSERT INTO `tabel_detail_absen` (`id_detail`, `jam_absen`, `tanggal_absen`, `nis`, `keterangan`, `kode_kelas`, `kode_jurusan`, `masuk`, `keluar`, `lat`, `long`) VALUES
(1, '00:00:00', '2021-10-04', '7976458004', 'i', 2, 2, 1, 1, NULL, NULL),
(2, '00:00:00', '2021-10-04', '7976458004', 'i', 2, 2, 1, 1, NULL, NULL),
(3, '00:00:00', '2021-10-04', '7976458004', 'i', 2, 2, 1, 1, NULL, NULL),
(4, '00:00:00', '2021-10-04', '7976458004', 'i', 2, 2, 1, 1, NULL, NULL),
(5, '00:00:00', '2021-10-04', '7976458004', 'i', 2, 2, 1, 1, NULL, NULL),
(6, '00:00:00', '2021-10-04', '7976458004', 'i', 2, 2, 1, 1, NULL, NULL),
(7, '00:00:00', '2021-10-04', '7976458004', 'i', 2, 2, 1, 1, NULL, NULL),
(8, '00:00:00', '2021-10-04', '7976458004', 'i', 2, 2, 1, 1, NULL, NULL),
(9, '00:00:00', '2021-10-04', '7976458004', 'i', 2, 2, 1, 1, NULL, NULL),
(10, '00:00:00', '2021-10-04', '7976458004', 'i', 2, 2, 1, 1, NULL, NULL),
(11, '00:00:00', '2021-10-04', '7976458004', 'i', 2, 2, 1, 1, NULL, NULL),
(12, '00:00:00', '2021-10-04', '7976458004', 'i', 2, 2, 1, 1, NULL, NULL),
(13, '00:00:00', '2021-10-04', '7976458004', 'i', 2, 2, 1, 1, NULL, NULL),
(14, '00:00:00', '2021-10-04', '7976458004', 'i', 2, 2, 1, 1, NULL, NULL),
(15, '00:00:00', '2021-10-04', '7976458004', 'i', 2, 2, 1, 1, NULL, NULL),
(16, '00:00:00', '2021-10-04', '7976458004', 'i', 2, 2, 1, 1, NULL, NULL),
(17, '00:00:00', '2021-10-04', '7976458004', 'i', 2, 2, 1, 1, NULL, NULL),
(18, '00:00:00', '2021-10-04', '7976458004', 'i', 2, 2, 1, 1, NULL, NULL),
(19, '00:00:00', '2021-10-04', '7976458004', 'i', 2, 2, 1, 1, NULL, NULL),
(20, '00:00:00', '2021-10-04', '7976458004', 'i', 2, 2, 1, 1, NULL, NULL),
(21, '00:00:00', '2021-10-04', '7976458004', 'i', 2, 2, 1, 1, NULL, NULL),
(22, '00:00:00', '2021-10-04', '7976458004', 'i', 2, 2, 1, 1, NULL, NULL),
(23, '00:00:00', '2021-10-04', '7976458004', 'i', 2, 2, 1, 1, NULL, NULL),
(24, '00:00:00', '2021-10-04', '7976458004', 'i', 2, 2, 1, 1, NULL, NULL),
(25, '00:00:00', '2021-10-04', '7976458004', 'i', 2, 2, 1, 1, NULL, NULL),
(26, '00:00:00', '2021-10-04', '7976458004', 'i', 2, 2, 1, 1, NULL, NULL),
(27, '00:00:00', '2021-10-04', '7976458004', 'i', 2, 2, 1, 1, NULL, NULL),
(28, '00:00:00', '2021-10-04', '7976458004', 'i', 2, 2, 1, 1, NULL, NULL),
(29, '00:00:00', '2021-10-04', '7976458004', 'i', 2, 2, 1, 1, NULL, NULL),
(30, '00:00:00', '2021-10-04', '7976458004', 'i', 2, 2, 1, 1, NULL, NULL),
(31, '00:00:00', '2021-10-04', '7976458004', 'i', 2, 2, 1, 1, NULL, NULL),
(32, '00:00:00', '2021-10-04', '7976458004', 'i', 2, 2, 1, 1, NULL, NULL),
(33, '00:00:00', '2021-10-04', '7976458004', 'i', 2, 2, 1, 1, NULL, NULL),
(34, '00:00:00', '2021-10-04', '7976458004', 'i', 2, 2, 1, 1, NULL, NULL),
(35, '00:00:00', '2021-10-04', '7976458004', 'i', 2, 2, 1, 1, NULL, NULL),
(36, '00:00:00', '2021-10-04', '7976458004', 'i', 2, 2, 1, 1, NULL, NULL),
(37, '00:00:00', '2021-10-04', '7976458004', 'i', 2, 2, 1, 1, NULL, NULL),
(38, '00:00:00', '2021-10-04', '7976458004', 'i', 2, 2, 1, 1, NULL, NULL),
(39, '00:00:00', '2021-10-04', '7976458004', 'i', 2, 2, 1, 1, NULL, NULL),
(40, '00:00:00', '2021-10-04', '7976458004', 'i', 2, 2, 1, 1, NULL, NULL),
(41, '00:00:00', '2021-10-04', '7976458004', 'i', 2, 2, 1, 1, NULL, NULL),
(42, '00:00:00', '2021-10-04', '7976458004', 'i', 2, 2, 1, 1, NULL, NULL),
(43, '00:00:00', '2021-10-04', '7976458004', 'i', 2, 2, 1, 1, NULL, NULL),
(44, '00:00:00', '2021-10-04', '7976458004', 'i', 2, 2, 1, 1, NULL, NULL),
(45, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(46, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(47, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(48, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(49, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(50, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(51, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(52, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(53, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(54, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(55, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(56, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(57, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(58, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(59, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(60, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(61, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(62, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(63, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(64, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(65, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(66, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(67, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(68, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(69, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(70, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(71, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(72, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(73, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(74, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(75, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(76, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(77, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(78, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(79, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(80, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(81, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(82, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(83, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(84, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(85, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(86, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(87, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(88, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(89, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(90, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(91, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(92, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(93, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(94, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(95, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(96, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(97, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(98, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(99, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(100, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(101, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(102, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(103, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(104, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(105, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(106, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(107, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(108, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(109, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(110, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(111, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(112, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(113, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(114, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(115, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(116, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(117, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(118, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(119, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(120, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(121, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(122, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(123, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(124, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(125, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(126, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(127, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(128, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(129, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(130, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(131, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(132, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(133, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(134, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(135, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(136, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(137, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(138, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(139, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(140, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(141, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(142, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(143, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(144, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(145, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(146, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(147, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(148, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(149, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(150, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(151, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(152, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(153, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(154, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(155, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(156, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(157, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(158, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(159, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(160, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(161, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(162, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(163, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(164, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(165, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(166, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(167, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(168, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(169, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(170, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(171, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(172, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(173, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(174, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(175, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(176, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(177, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(178, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(179, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(180, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(181, '00:00:00', '2021-10-05', '9282126454', 'h', 2, 2, 1, 1, NULL, NULL),
(182, '13:34:50', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(183, '13:34:51', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(184, '13:34:51', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(185, '13:34:51', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(186, '13:34:51', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(187, '13:34:52', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(188, '13:34:52', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(189, '13:34:52', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(190, '13:34:52', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(191, '13:34:52', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(192, '13:34:52', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(193, '13:34:52', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(194, '13:34:52', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(195, '13:34:52', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(196, '13:34:52', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(197, '13:34:52', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(198, '13:34:52', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(199, '13:34:52', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(200, '13:34:52', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(201, '13:34:52', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(202, '13:34:52', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(203, '13:34:52', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(204, '13:34:52', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(205, '13:34:52', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(206, '13:34:52', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(207, '13:34:52', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(208, '13:34:52', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(209, '13:34:52', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(210, '13:34:52', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(211, '13:34:52', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(212, '13:34:52', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(213, '13:34:52', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(214, '13:34:52', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(215, '13:34:52', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(216, '13:34:52', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(217, '13:34:52', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(218, '13:34:52', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(219, '13:34:52', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(220, '13:34:52', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(221, '13:34:52', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(222, '13:34:52', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(223, '13:34:52', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(224, '13:34:52', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(225, '13:34:52', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(226, '13:34:52', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(227, '13:34:52', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(228, '13:34:52', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(229, '13:34:53', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(230, '13:34:53', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(231, '13:34:53', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(232, '13:34:53', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(233, '13:34:53', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(234, '13:34:53', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(235, '13:34:53', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(236, '13:34:53', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(237, '13:34:53', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(238, '13:34:53', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(239, '13:34:53', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(240, '13:34:53', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(241, '13:34:53', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(242, '13:34:53', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(243, '13:34:53', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(244, '13:34:53', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(245, '13:34:53', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(246, '13:34:53', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(247, '13:34:53', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(248, '13:34:53', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(249, '13:34:53', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(250, '13:34:53', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(251, '13:34:53', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(252, '13:34:53', '2021-10-05', '3136638035', 'h', 4, 3, 1, 0, NULL, NULL),
(253, '00:00:00', '2021-10-05', '6371159235', 'h', 2, 2, 1, 1, NULL, NULL),
(254, '00:00:00', '2021-10-05', '8578418391', 'h', 2, 2, 1, 1, NULL, NULL),
(255, '00:00:00', '2021-10-05', '8933993858', 'h', 2, 2, 1, 1, NULL, NULL),
(256, '00:00:00', '2021-10-05', '4563389833', 'h', 2, 2, 1, 1, NULL, NULL),
(257, '00:00:00', '2021-10-05', '9171170901', 'h', 2, 2, 1, 1, NULL, NULL),
(258, '00:00:00', '2021-10-05', '4543686319', 'h', 2, 2, 1, 1, NULL, NULL),
(259, '00:00:00', '2021-10-05', '3985538285', 'h', 2, 2, 1, 1, NULL, NULL),
(260, '00:00:00', '2021-10-05', '2395813052', 'h', 2, 2, 1, 1, NULL, NULL),
(262, '11:40:37', '2023-08-01', '6607822750', 'h', 3, 2, 1, 0, NULL, NULL),
(263, '14:28:57', '2023-08-01', '8982334050', 'h', 4, 2, 1, 1, NULL, NULL),
(293, '02:19:40', '2024-12-29', '4977568152', '', 2, 3, 1, 0, '-7.3079474', '112.779492'),
(294, '02:21:45', '2024-12-29', '4977568152', '', 2, 3, 0, 1, '-7.3079474', '112.779492');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_izin`
--

CREATE TABLE `tabel_izin` (
  `id` int(11) NOT NULL,
  `nis_siswa` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `file_bukti` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `tanggal_izin` date NOT NULL,
  `status` enum('Diterima','Ditolak','Menunggu Konfirmasi') NOT NULL,
  `pemberi_izin` varchar(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_jam_absen`
--

CREATE TABLE `tabel_jam_absen` (
  `id` int(11) NOT NULL,
  `type` enum('Masuk','Keluar','Terlambat') NOT NULL,
  `mulai` time NOT NULL,
  `selesai` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_jam_absen`
--

INSERT INTO `tabel_jam_absen` (`id`, `type`, `mulai`, `selesai`) VALUES
(1, 'Masuk', '17:03:00', '18:30:00'),
(2, 'Keluar', '19:16:00', '20:55:00'),
(3, 'Terlambat', '20:55:00', '21:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_jurusan`
--

CREATE TABLE `tabel_jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `jurusan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_jurusan`
--

INSERT INTO `tabel_jurusan` (`id_jurusan`, `jurusan`) VALUES
(0, 'agama'),
(1, 'IPA 1'),
(2, 'IPA'),
(3, 'IPS'),
(4, 'IPA 2');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_kelas`
--

CREATE TABLE `tabel_kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(100) DEFAULT NULL,
  `kelas` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_kelas`
--

INSERT INTO `tabel_kelas` (`id_kelas`, `nama_kelas`, `kelas`) VALUES
(2, 'no name', 'X'),
(3, 'no name2', 'XI'),
(4, 'No name3', 'XII');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_libur`
--

CREATE TABLE `tabel_libur` (
  `id` int(11) NOT NULL,
  `type` enum('weekend','other') NOT NULL,
  `tanggal` varchar(110) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `status` enum('Aktif','Non Aktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_libur`
--

INSERT INTO `tabel_libur` (`id`, `type`, `tanggal`, `keterangan`, `status`) VALUES
(0, 'other', '2021-10-06', 'sdasdsadsadsa', 'Aktif'),
(1, 'weekend', '2021-09-30', 'sabtu', 'Non Aktif'),
(2, 'weekend', '2021-09-16', 'minggu', 'Non Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_siswa`
--

CREATE TABLE `tabel_siswa` (
  `id_siswa` int(11) NOT NULL,
  `nama_siswa` text DEFAULT NULL,
  `nis` varchar(12) DEFAULT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` text DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `no_telepon` varchar(15) DEFAULT NULL,
  `kode_jurusan` varchar(15) DEFAULT NULL,
  `kode_kelas` varchar(15) DEFAULT NULL,
  `gambar` varchar(70) DEFAULT NULL,
  `faceid` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_siswa`
--

INSERT INTO `tabel_siswa` (`id_siswa`, `nama_siswa`, `nis`, `tgl_lahir`, `jenis_kelamin`, `alamat`, `no_telepon`, `kode_jurusan`, `kode_kelas`, `gambar`, `faceid`) VALUES
(5, 'Lukman Hakim', '4977568152', '2021-09-30', 'L', 'Jr. Sentot Alibasa No. 698, Bitung 91510, JaBar', '0881023325145', '3', '2', 'default.jpg', '[-0.16264937818050385,0.0733100175857544,0.14407001435756683,-0.03652280941605568,-0.06630810350179672,-0.02015395648777485,-0.05920026823878288,-0.1349675953388214,0.1430312842130661,-0.15828189253807068,0.2538211941719055,-0.02982219308614731,-0.21136483550071716,-0.11191129684448242,-0.028095822781324387,0.19704030454158783,-0.06909803301095963,-0.15171903371810913,-0.0777520090341568,-0.07382340729236603,0.09363842010498047,0.017845243215560913,-0.01053886953741312,-0.03094317577779293,-0.11776580661535263,-0.35883253812789917,-0.10801514983177185,-0.06203167140483856,-0.043392449617385864,-0.08224016427993774,-0.06574267148971558,0.049380380660295486,-0.16707219183444977,-0.07308655977249146,0.012608972378075123,0.11134970188140869,-0.04247759282588959,-0.05763931944966316,0.16720283031463623,-0.010892477817833424,-0.193925678730011,0.016740305349230766,0.05751494690775871,0.2576023042201996,0.1552705317735672,0.05938423424959183,0.045943733304739,-0.07895496487617493,0.097773477435112,-0.12071724236011505,0.03770279139280319,0.14131098985671997,0.128927081823349,0.051398493349552155,0.11205411702394485,-0.08540686219930649,0.041996557265520096,0.11488522589206696,-0.1423669010400772,0.03483761474490166,0.11135102808475494,-0.1360200047492981,-0.0547916516661644,-0.08780945837497711,0.22420157492160797,0.07782376557588577,-0.09728039801120758,-0.12885433435440063,0.1737297624349594,-0.053419552743434906,-0.08876994252204895,-0.013171866536140442,-0.19950899481773376,-0.1868017315864563,-0.26926299929618835,0.07484482228755951,0.424486368894577,0.14031606912612915,-0.213954359292984,0.08089707791805267,0.00786619633436203,0.0049544223584234715,0.13475869596004486,0.14767438173294067,-0.02337571419775486,0.041199516505002975,-0.05189027264714241,0.006207021418958902,0.1680794060230255,-0.006547977216541767,-0.029177416115999222,0.1760396808385849,-0.02987474761903286,0.01043317187577486,0.02793445996940136,-0.04095958173274994,-0.08828192204236984,0.038566913455724716,-0.12256453931331635,-0.047629550099372864,0.045759379863739014,-0.0555964857339859,0.03445800393819809,0.09951099753379822,-0.11609376221895218,0.11229518055915833,-0.03271237760782242,0.0644368976354599,-0.007713614031672478,0.03642899543046951,-0.10010658949613571,-0.05132099986076355,0.07515235245227814,-0.1967487335205078,0.15831336379051208,0.1710059940814972,-0.003115141997113824,0.12474309653043747,0.15223458409309387,0.13048140704631805,0.0384029746055603,0.04534286633133888,-0.205637589097023,-0.07168101519346237,0.11550993472337723,0.009893269278109074,0.13153162598609924,0.04400322586297989]'),
(6, 'Ellis Gasti Usada', '6607822750', '2021-09-30', 'P', 'alert&#40;\"ok\"&#41;', '0895703350402', '2', '3', 'default.jpg', NULL),
(7, 'Rahayu Vera Mayasari', '8982334050', '2021-09-30', 'Laki Laki', 'Gg. Ikan No. 322, Pontianak 73882, SulUt', '0881023325145', '2', '4', 'default.jpg', NULL),
(8, 'Dimas Tarihoran S.E.', '2845672534', '2021-09-30', 'Laki Laki', 'Gg. Salam No. 491, Bima 48305, JaTeng', '089522811620', '3', '2', 'default.jpg', NULL),
(9, 'Kusuma Pranawa Marbun S.Pd', '7939006491', '2021-09-30', NULL, 'Ds. Bhayangkara No. 856, Banjar 54261, BaBel', '089522811620', '2', '2', 'default.jpg', NULL),
(10, 'Makuta Budiman', '1204117091', '2021-09-30', 'Laki Laki', 'Dk. Dr. Junjunan No. 14, Sawahlunto 25599, MalUt', '089522811620', '3', '2', 'default.jpg', NULL),
(11, 'Sadina Mala Yolanda', '4080799238', '2021-09-30', 'Laki Laki', 'Dk. Sudiarto No. 746, Tasikmalaya 20510, KalTim', '089522811620', '2', '2', 'default.jpg', NULL),
(14, 'Kamal Wijaya', '8656672099', '2021-09-30', 'Laki Laki', 'Ds. Basmol Raya No. 935, Bontang 53867, Banten', '089522811620', '2', '2', 'default.jpg', NULL),
(15, 'Karma Pradipta S.Farm', '9097368571', '2021-09-30', 'Laki Laki', 'Dk. Abdul No. 457, Serang 69453, JaTeng', '089522811620', '2', '2', 'default.jpg', NULL),
(16, 'Citra Wahyuni', '2395813052', '2021-09-30', 'Laki Laki', 'Jln. Cemara No. 579, Bitung 72403, JaBar', '089522811620', '2', '2', 'default.jpg', NULL),
(17, 'Betania Yuniar', '4543686319', '2021-09-30', 'Laki Laki', 'Dk. Daan No. 324, Manado 93748, KepR', '089522811620', '2', '2', 'default.jpg', NULL),
(18, 'Baktiadi Sitorus', '9171170901', '2021-09-30', 'Laki Laki', 'Dk. Warga No. 593, Palembang 83881, SulUt', '089522811620', '2', '2', 'default.jpg', NULL),
(19, 'Yani Maryati', '6538479764', '2021-09-30', 'Laki Laki', 'Kpg. Kyai Gede No. 489, Sungai Penuh 19261, KalUt', '089522811620', '2', '2', 'default.jpg', NULL),
(20, 'Emong Wasita S.Psi', '7106437624', '2021-09-30', 'Laki Laki', 'Jln. Mulyadi No. 1, Bukittinggi 56260, Banten', '089522811620', '2', '2', 'default.jpg', NULL),
(21, 'Gaiman Johan Ramadan M.TI.', '3798576419', '2021-09-30', 'Laki Laki', 'Jr. Kebonjati No. 914, Mataram 29500, SulUt', '089522811620', '2', '2', 'default.jpg', NULL),
(22, 'Daru Dalimin Habibi M.M.', '1772308042', '2021-09-30', 'Laki Laki', 'Ki. Supomo No. 958, Bitung 32406, Bengkulu', '089522811620', '2', '2', 'default.jpg', NULL),
(23, 'Aisyah Gina Novitasari S.Gz', '9282126454', '2021-09-30', 'Laki Laki', 'Jr. Monginsidi No. 945, Metro 75108, JaTeng', '089522811620', '2', '2', 'default.jpg', NULL),
(24, 'Michelle Halimah', '2665870202', '2021-09-30', 'Laki Laki', 'Kpg. Sam Ratulangi No. 708, Administrasi Jakarta Utara 90879, SulTra', '089522811620', '2', '2', 'default.jpg', NULL),
(25, 'Bahuwarna Mulyono Sirait', '4563389833', '2021-09-30', 'Laki Laki', 'Gg. Abang No. 818, Batam 98823, SulUt', '089522811620', '2', '2', 'default.jpg', NULL),
(26, 'Bagas Darman Najmudin S.Kom', '8933993858', '2021-09-30', 'Laki Laki', 'Gg. Wahid No. 940, Sibolga 10317, SumUt', '089522811620', '2', '2', 'default.jpg', NULL),
(27, 'Tantri Purnawati', '9747864369', '2021-09-30', 'Laki Laki', 'Jr. Suharso No. 174, Pekanbaru 56408, SumBar', '089522811620', '2', '2', 'default.jpg', NULL),
(28, 'Janet Novitasari', '5437283524', '2021-09-30', 'Laki Laki', 'Gg. Raden Saleh No. 623, Kendari 74224, JaTeng', '089522811620', '2', '2', 'default.jpg', NULL),
(29, 'Teddy Prasetya', '1264466482', '2021-09-30', 'Laki Laki', 'Dk. Sumpah Pemuda No. 897, Bau-Bau 96288, MalUt', '089522811620', '2', '2', 'default.jpg', NULL),
(30, 'Tami Febi Purnawati S.Sos', '2839157997', '2021-09-30', 'Laki Laki', 'Gg. Flores No. 445, Binjai 77428, KepR', '089522811620', '2', '2', 'default.jpg', NULL),
(31, 'Hamima Yuniar M.TI.', '4881038258', '2021-09-30', 'Laki Laki', 'Jr. Katamso No. 154, Bau-Bau 96983, Papua', '089522811620', '2', '2', 'default.jpg', NULL),
(32, 'Dimaz Jarwi Ardianto S.T.', '2670607289', '2021-09-30', 'Laki Laki', 'Gg. Salatiga No. 651, Malang 11152, KalTim', '089522811620', '2', '2', 'default.jpg', NULL),
(33, 'Cornelia Novitasari', '9616614038', '2021-09-30', 'Laki Laki', 'Ds. Ciwastra No. 518, Padangsidempuan 84110, Lampung', '089522811620', '2', '2', 'default.jpg', NULL),
(34, 'Jelita Susanti M.Pd', '2617354958', '2021-09-30', 'Laki Laki', 'Gg. Sudirman No. 420, Banjarbaru 16863, KalBar', '089522811620', '2', '2', 'default.jpg', NULL),
(35, 'Labuh Latupono', '3604399122', '2021-09-30', 'Laki Laki', 'Jln. Babadak No. 191, Administrasi Jakarta Timur 87369, Bengkulu', '089522811620', '2', '2', 'default.jpg', NULL),
(36, 'Kania Palastri S.Ked', '7976458004', '2021-09-30', 'Laki Laki', 'Ki. Kartini No. 310, Palangka Raya 73707, Aceh', '089522811620', '2', '2', 'default.jpg', NULL),
(37, 'Asirwada Timbul Narpati S.Gz', '8578418391', '2021-09-30', 'Laki Laki', 'Psr. Kebonjati No. 821, Tarakan 38270, SumBar', '089522811620', '2', '2', 'default.jpg', NULL),
(38, 'Amelia Tiara Nurdiyanti S.IP', '6371159235', '2021-09-30', 'Laki Laki', 'Jr. Suryo Pranoto No. 190, Tarakan 88198, SulUt', '089522811620', '2', '2', 'default.jpg', NULL),
(39, 'Ciaobella Aryani M.Farm', '3985538285', '2021-09-30', 'Laki Laki', 'Psr. R.M. Said No. 464, Banda Aceh 14734, KalSel', '089522811620', '2', '2', 'default.jpg', NULL),
(40, 'Gilang Maulana', '1139646475', '2021-09-30', 'Laki Laki', 'Jln. Rajawali Timur No. 143, Padangpanjang 77664, KepR', '089522811620', '2', '2', 'default.jpg', NULL),
(41, 'Enteng Banara Setiawan M.Kom.', '4375133319', '2021-09-30', 'Perempuan', 'Ki. Wahid No. 605, Bukittinggi 54141, SumUt', '089522811620', '3', '2', 'default.jpg', NULL),
(42, 'Gina Hartati', '1583477901', '2021-09-30', 'Perempuan', 'Gg. Bass No. 353, Tanjung Pinang 14805, Gorontalo', '089522811620', '3', '2', 'default.jpg', NULL),
(43, 'Adikara Dongoran', '5299930709', '2021-09-30', 'Perempuan', 'Ki. Aceh No. 870, Tangerang 96177, SulTeng', '089522811620', '3', '2', 'default.jpg', NULL),
(44, 'Cakrajiya Baktianto Wibowo S.Pt', '6946905713', '2021-09-30', 'Perempuan', 'Jln. Gedebage Selatan No. 765, Bekasi 13372, NTT', '089522811620', '3', '2', 'default.jpg', NULL),
(45, 'Prima Hardana Siregar', '2413283195', '2021-09-30', 'Perempuan', 'Ki. Labu No. 194, Pekalongan 32937, KalUt', '089522811620', '3', '2', 'default.jpg', NULL),
(46, 'Unjani Handayani', '5357773855', '2021-09-30', 'Perempuan', 'Dk. Siliwangi No. 62, Tebing Tinggi 92757, SumBar', '089522811620', '3', '2', 'default.jpg', NULL),
(47, 'Leo Vino Latupono S.Kom', '1581694613', '2021-09-30', 'Perempuan', 'Ki. Jagakarsa No. 748, Bekasi 76821, Bali', '089522811620', '3', '2', 'default.jpg', NULL),
(48, 'Nadine Purwanti', '2851990290', '2021-09-30', 'Perempuan', 'Jln. Kalimantan No. 529, Banjar 55932, KalUt', '089522811620', '3', '2', 'default.jpg', NULL),
(49, 'Viman Firmansyah', '3482009311', '2021-09-30', 'Perempuan', 'Gg. Bara Tambar No. 417, Jayapura 98348, Banten', '089522811620', '3', '2', 'default.jpg', NULL),
(50, 'Prayoga Utama', '9637861219', '2021-09-30', 'Perempuan', 'Gg. Abdullah No. 361, Bogor 36458, SulSel', '089522811620', '3', '2', 'default.jpg', NULL),
(51, 'Jaswadi Nashiruddin', '6559301819', '2021-09-30', 'Perempuan', 'Jln. Flores No. 45, Jambi 91371, KalBar', '089522811620', '3', '2', 'default.jpg', NULL),
(52, 'Dasa Ramadan S.Gz', '1150919084', '2021-09-30', 'Perempuan', 'Ds. Tambak No. 619, Tidore Kepulauan 72851, NTB', '089522811620', '3', '2', 'default.jpg', NULL),
(53, 'Agnes Ina Puspita S.Sos', '3588292842', '2021-09-30', 'Perempuan', 'Ds. Bank Dagang Negara No. 476, Prabumulih 89007, SulTra', '089522811620', '3', '2', 'default.jpg', NULL),
(54, 'Vanesa Rahmawati', '7429531219', '2021-09-30', 'Perempuan', 'Kpg. Veteran No. 684, Padangsidempuan 17452, JaTeng', '089522811620', '3', '2', 'default.jpg', NULL),
(55, 'Sabri Sihombing M.TI.', '1333675209', '2021-09-30', 'Perempuan', 'Ds. Abdullah No. 761, Mojokerto 82849, DKI', '089522811620', '3', '2', 'default.jpg', NULL),
(56, 'Balangga Saragih', '8746786434', '2021-09-30', 'Perempuan', 'Ki. Uluwatu No. 982, Salatiga 27869, Maluku', '089522811620', '3', '2', 'default.jpg', NULL),
(57, 'Putri Kiandra Sudiati M.Farm', '4356519424', '2021-09-30', 'Perempuan', 'Psr. Ujung No. 906, Balikpapan 81878, Gorontalo', '089522811620', '3', '2', 'default.jpg', NULL),
(58, 'Ana Tira Oktaviani M.Pd', '5530226653', '2021-09-30', 'Perempuan', 'Jln. Setiabudhi No. 159, Tomohon 67245, SulTeng', '089522811620', '3', '2', 'default.jpg', NULL),
(59, 'Jelita Wahyuni', '4841752418', '2021-09-30', 'Perempuan', 'Jln. R.E. Martadinata No. 977, Padangpanjang 67337, PapBar', '089522811620', '3', '2', 'default.jpg', NULL),
(60, 'Warsa Siregar', '3888140898', '2021-09-30', 'Perempuan', 'Ds. Supomo No. 857, Banjarbaru 61303, Bengkulu', '089522811620', '3', '2', 'default.jpg', NULL),
(61, 'Indra Irawan S.E.', '4073476848', '2021-09-30', 'Perempuan', 'Ds. Laswi No. 816, Subulussalam 80997, SumSel', '089522811620', '3', '2', 'default.jpg', NULL),
(62, 'Hesti Palastri S.Farm', '2793203334', '2021-09-30', 'Perempuan', 'Jr. Umalas No. 514, Binjai 26381, Papua', '089522811620', '3', '2', 'default.jpg', NULL),
(63, 'Karimah Puspa Oktaviani', '8202081480', '2021-09-30', 'Perempuan', 'Jln. Tambak No. 663, Bima 60182, KalTeng', '089522811620', '3', '2', 'default.jpg', NULL),
(64, 'Maria Widiastuti', '1846105685', '2021-09-30', 'Perempuan', 'Jln. Baya Kali Bungur No. 163, Bukittinggi 39783, SulTeng', '089522811620', '3', '2', 'default.jpg', NULL),
(65, 'Maya Hassanah', '5387077834', '2021-09-30', 'Perempuan', 'Jr. Ikan No. 919, Medan 30667, NTT', '089522811620', '3', '2', 'default.jpg', NULL),
(66, 'Putri Paramita Pudjiastuti', '3366930702', '2021-09-30', 'Perempuan', 'Psr. Honggowongso No. 113, Jayapura 41065, BaBel', '089522811620', '3', '2', 'default.jpg', NULL),
(67, 'Tania Astuti', '2549757362', '2021-09-30', 'Perempuan', 'Ki. Bhayangkara No. 707, Pematangsiantar 73599, KepR', '089522811620', '3', '2', 'default.jpg', NULL),
(68, 'Irwan Cahyono Rajasa', '4741215468', '2021-09-30', 'Perempuan', 'Psr. Yogyakarta No. 988, Bau-Bau 69710, SumUt', '089522811620', '3', '2', 'default.jpg', NULL),
(69, 'Drajat Nalar Firgantoro M.Ak', '6846597831', '2021-09-30', 'Perempuan', 'Ki. Baung No. 497, Solok 91954, JaTim', '089522811620', '3', '2', 'default.jpg', NULL),
(70, 'Purwa Jailani', '5532254863', '2021-09-30', 'Perempuan', 'Ki. Casablanca No. 284, Administrasi Jakarta Pusat 65043, Aceh', '089522811620', '3', '2', 'default.jpg', NULL),
(71, 'Imam Manullang', '2978223124', '2021-09-30', 'Perempuan', 'Dk. Wora Wari No. 934, Balikpapan 79737, KalBar', '089522811620', '3', '2', 'default.jpg', NULL),
(72, 'Latika Maryati', '6058438710', '2021-09-30', 'Perempuan', 'Kpg. Sudirman No. 370, Subulussalam 88222, PapBar', '089522811620', '3', '2', 'default.jpg', NULL),
(73, 'Kamal Caraka Kurniawan M.Farm', '6982142376', '2021-09-30', 'Perempuan', 'Gg. Gading No. 619, Tarakan 95444, Bali', '089522811620', '3', '2', 'default.jpg', NULL),
(74, 'Queen Cinta Winarsih M.Kom.', '3789739743', '2021-09-30', 'Perempuan', 'Psr. R.M. Said No. 644, Tebing Tinggi 32198, KalTeng', '089522811620', '3', '2', 'default.jpg', NULL),
(75, 'Embuh Hadi Hutapea', '8060836401', '2021-09-30', 'Perempuan', 'Jr. Bayam No. 692, Blitar 38106, JaBar', '089522811620', '3', '2', 'default.jpg', NULL),
(76, 'Rudi Sihombing S.Sos', '3997801687', '2021-09-30', 'Perempuan', 'Psr. Sugiyopranoto No. 429, Administrasi Jakarta Selatan 92825, KalTim', '089522811620', '2', '3', 'default.jpg', NULL),
(77, 'Rini Lestari', '2702280508', '2021-09-30', 'Perempuan', 'Ds. Barasak No. 23, Blitar 50060, Jambi', '089522811620', '2', '3', 'default.jpg', NULL),
(78, 'Wardi Nugroho S.I.Kom', '3939722975', '2021-09-30', 'Perempuan', 'Jln. Cokroaminoto No. 205, Tasikmalaya 10417, SumBar', '089522811620', '2', '3', 'default.jpg', NULL),
(79, 'Novi Diana Laksmiwati M.TI.', '9647437130', '2021-09-30', 'Perempuan', 'Dk. Yap Tjwan Bing No. 897, Tomohon 27967, SumSel', '089522811620', '2', '3', 'default.jpg', NULL),
(80, 'Padma Jamalia Nuraini S.Kom', '1749877536', '2021-09-30', 'Perempuan', 'Ki. Jagakarsa No. 797, Administrasi Jakarta Timur 46301, MalUt', '089522811620', '2', '3', 'default.jpg', NULL),
(81, 'Elisa Utami S.E.', '3751312648', '2021-09-30', 'Perempuan', 'Dk. Elang No. 949, Serang 20294, Lampung', '089522811620', '2', '3', 'default.jpg', NULL),
(82, 'Adikara Tarihoran', '9841904462', '2021-09-30', 'Perempuan', 'Kpg. Sampangan No. 100, Jambi 16369, SumBar', '089522811620', '2', '3', 'default.jpg', NULL),
(83, 'Garda Uwais S.Kom', '3376105840', '2021-09-30', 'Perempuan', 'Jln. Camar No. 118, Blitar 23361, BaBel', '089522811620', '2', '3', 'default.jpg', NULL),
(84, 'Zulaikha Hasanah', '4565643731', '2021-09-30', 'Perempuan', 'Jr. Pattimura No. 467, Lhokseumawe 44443, KalTim', '089522811620', '2', '3', 'default.jpg', NULL),
(85, 'Novi Rahayu', '8077219798', '2021-09-30', 'Perempuan', 'Gg. Yap Tjwan Bing No. 391, Cilegon 14635, JaBar', '089522811620', '2', '3', 'default.jpg', NULL),
(86, 'Zulfa Lestari', '2216906244', '2021-09-30', 'Perempuan', 'Gg. K.H. Wahid Hasyim (Kopo) No. 114, Banda Aceh 33539, KepR', '089522811620', '2', '3', 'default.jpg', NULL),
(87, 'Banawa Latupono', '3648033580', '2021-09-30', 'Perempuan', 'Jr. Haji No. 16, Tegal 32843, KepR', '089522811620', '2', '3', 'default.jpg', NULL),
(88, 'Tasdik Megantara', '1860989734', '2021-09-30', 'Perempuan', 'Kpg. Bahagia  No. 872, Probolinggo 76639, KalBar', '089522811620', '2', '3', 'default.jpg', NULL),
(89, 'Sarah Hesti Aryani', '5510209440', '2021-09-30', 'Perempuan', 'Dk. Sudirman No. 83, Pasuruan 69994, KalTeng', '089522811620', '2', '3', 'default.jpg', NULL),
(90, 'Michelle Olivia Yolanda S.Farm', '4039349038', '2021-09-30', 'Perempuan', 'Dk. Padma No. 404, Bandar Lampung 82614, Maluku', '089522811620', '2', '3', 'default.jpg', NULL),
(91, 'Puti Mardhiyah', '2866221934', '2021-09-30', 'Perempuan', 'Jln. Adisucipto No. 974, Bekasi 89194, MalUt', '089522811620', '2', '3', 'default.jpg', NULL),
(92, 'Aurora Mayasari', '9478363596', '2021-09-30', 'Perempuan', 'Dk. Wora Wari No. 839, Banjarbaru 62690, KepR', '089522811620', '2', '3', 'default.jpg', NULL),
(93, 'Raina Nuraini', '4618628783', '2021-09-30', 'Perempuan', 'Dk. Raya Ujungberung No. 329, Jambi 32163, SulUt', '089522811620', '2', '3', 'default.jpg', NULL),
(94, 'Leo Wibowo M.Pd', '3998004297', '2021-09-30', 'Perempuan', 'Gg. Sutarto No. 622, Tangerang Selatan 60047, DIY', '089522811620', '2', '3', 'default.jpg', NULL),
(95, 'Pia Kayla Suryatmi', '4162113645', '2021-09-30', 'Perempuan', 'Gg. HOS. Cjokroaminoto (Pasirkaliki) No. 459, Administrasi Jakarta Selatan 35197, NTB', '089522811620', '2', '3', 'default.jpg', NULL),
(96, 'Uli Suryatmi', '6662813397', '2021-09-30', 'Perempuan', 'Jr. Honggowongso No. 530, Ambon 15667, Lampung', '089522811620', '2', '3', 'default.jpg', NULL),
(97, 'Karen Handayani M.M.', '4557218914', '2021-09-30', 'Perempuan', 'Psr. Suryo No. 187, Makassar 20257, Lampung', '089522811620', '2', '3', 'default.jpg', NULL),
(98, 'Viman Gangsar Maheswara', '7569539160', '2021-09-30', 'Perempuan', 'Jr. Yogyakarta No. 475, Tegal 63325, SulTra', '089522811620', '2', '3', 'default.jpg', NULL),
(99, 'Kasiran Nugroho S.H.', '2690019488', '2021-09-30', 'Perempuan', 'Gg. Sumpah Pemuda No. 699, Mojokerto 37368, SulSel', '089522811620', '2', '3', 'default.jpg', NULL),
(100, 'Kawaca Hidayat', '3338039621', '2021-09-30', 'Perempuan', 'Jr. Rajawali Timur No. 778, Dumai 92298, JaTeng', '089522811620', '2', '3', 'default.jpg', NULL),
(101, 'Cinta Siti Laksmiwati S.Psi', '8245607341', '2021-09-30', 'Perempuan', 'Kpg. Laswi No. 371, Mataram 42110, Aceh', '089522811620', '2', '3', 'default.jpg', NULL),
(102, 'Nalar Prabu Saefullah S.I.Kom', '5244413319', '2021-09-30', 'Perempuan', 'Dk. Gading No. 46, Tangerang Selatan 80581, SumSel', '089522811620', '2', '3', 'default.jpg', NULL),
(103, 'Ani Aryani', '1419856324', '2021-09-30', 'Perempuan', 'Psr. Babadan No. 366, Tasikmalaya 29078, JaBar', '089522811620', '2', '3', 'default.jpg', NULL),
(104, 'Marsito Najmudin', '5693454361', '2021-09-30', 'Perempuan', 'Ds. Laswi No. 562, Banda Aceh 28451, PapBar', '089522811620', '2', '3', 'default.jpg', NULL),
(105, 'Jinawi Hardiansyah', '3213148393', '2021-09-30', 'Perempuan', 'Jr. Pasirkoja No. 580, Bitung 83921, Lampung', '089522811620', '2', '3', 'default.jpg', NULL),
(106, 'Widya Yuliarti', '4660119955', '2021-09-30', 'Perempuan', 'Ds. Nangka No. 616, Banjar 93530, MalUt', '089522811620', '2', '3', 'default.jpg', NULL),
(107, 'Nardi Saputra S.H.', '8211174691', '2021-09-30', 'Perempuan', 'Dk. Suharso No. 448, Batu 80623, SulSel', '089522811620', '2', '3', 'default.jpg', NULL),
(108, 'Ifa Purwanti', '6788946067', '2021-09-30', 'Perempuan', 'Jr. Cikutra Barat No. 696, Dumai 59503, Aceh', '089522811620', '2', '3', 'default.jpg', NULL),
(109, 'Dina Rika Nurdiyanti M.Pd', '4495735810', '2021-09-30', 'Perempuan', 'Dk. Wahidin Sudirohusodo No. 820, Bima 15702, SulTra', '089522811620', '2', '3', 'default.jpg', NULL),
(110, 'Shakila Haryanti', '4227211613', '2021-09-30', 'Perempuan', 'Ki. Yohanes No. 741, Gorontalo 69029, SumSel', '089522811620', '2', '3', 'default.jpg', NULL),
(111, 'Yunita Winarsih', '6693095723', '2021-09-30', 'Laki Laki', 'Jln. Kalimantan No. 895, Tangerang 93949, SumUt', '089522811620', '3', '3', 'default.jpg', NULL),
(112, 'Lid11ya Wastuti M.Ak', '4359850760', '2021-09-30', NULL, 'Kpg. Batako No. 525, Bandar Lampung 62285, NTB', '089522811620', '3', '3', 'default.jpg', NULL),
(113, 'Bala Sihombing', '1835147372', '2021-09-30', 'Laki Laki', 'Jln. Bawal No. 690, Batu 77326, Lampung', '0895703350402', '3', '3', 'default.jpg', NULL),
(114, 'Titin Farida M.Kom.', '7659595738', '2021-09-30', 'Laki Laki', 'Dk. Orang No. 267, Administrasi Jakarta Utara 54031, SulSel', '089522811620', '3', '3', 'default.jpg', NULL),
(115, 'Pranawa Siregar', '7293695893', '2021-09-30', 'Laki Laki', 'Psr. Kebangkitan Nasional No. 57, Probolinggo 74332, MalUt', '089522811620', '3', '3', 'default.jpg', NULL),
(116, 'Tami Melani M.M.', '3661250085', '2021-09-30', 'Laki Laki', 'Psr. Dahlia No. 310, Semarang 99109, Banten', '089522811620', '3', '3', 'default.jpg', NULL),
(117, 'Alika Yuliarti', '9170161638', '2021-09-30', 'Laki Laki', 'Jln. Sampangan No. 824, Pontianak 17131, Bengkulu', '089522811620', '3', '3', 'default.jpg', NULL),
(118, 'Uli Zelda Aryani S.Ked', '2709719706', '2021-09-30', 'Laki Laki', 'Kpg. Sadang Serang No. 147, Administrasi Jakarta Timur 59335, KalTim', '089522811620', '3', '3', 'default.jpg', NULL),
(119, 'Halima Laksmiwati', '4036100164', '2021-09-30', 'Laki Laki', 'Jln. Baha No. 484, Pekalongan 65694, KalTeng', '089522811620', '3', '3', 'default.jpg', NULL),
(120, 'Muhammad Tampubolon S.Ked', '4559169335', '2021-09-30', 'Laki Laki', 'Jln. Bayam No. 698, Pekalongan 71211, KalSel', '089522811620', '3', '3', 'default.jpg', NULL),
(121, 'Rini Rahayu', '3595473276', '2021-09-30', 'Laki Laki', 'Ki. Bakau Griya Utama No. 295, Padangpanjang 63578, DIY', '089522811620', '3', '3', 'default.jpg', NULL),
(122, 'Adhiarja Prasetyo', '4060457216', '2021-09-30', 'Laki Laki', 'Kpg. Antapani Lama No. 249, Blitar 27487, KalTim', '089522811620', '3', '3', 'default.jpg', NULL),
(123, 'Tantri Hilda Agustina S.Sos', '8757317944', '2021-09-30', 'Laki Laki', 'Gg. Suharso No. 406, Pariaman 69227, BaBel', '089522811620', '3', '3', 'default.jpg', NULL),
(124, 'Amalia Nasyiah M.Ak', '3598607547', '2021-09-30', 'Laki Laki', 'Jln. Achmad No. 893, Manado 69751, JaTeng', '089522811620', '3', '3', 'default.jpg', NULL),
(125, 'Anita Utami', '6248993659', '2021-09-30', 'Laki Laki', 'Kpg. Sukajadi No. 568, Sabang 78284, Bali', '089522811620', '3', '3', 'default.jpg', NULL),
(126, 'Oni Hastuti', '4764966678', '2021-09-30', 'Laki Laki', 'Jr. Hang No. 349, Payakumbuh 60255, Gorontalo', '089522811620', '3', '3', 'default.jpg', NULL),
(127, 'Jagaraga Kusumo', '8727082658', '2021-09-30', 'Laki Laki', 'Ds. Lembong No. 109, Cimahi 36866, SulTeng', '089522811620', '3', '3', 'default.jpg', NULL),
(128, 'Lukman Cahya Firgantoro', '2529743918', '2021-09-30', 'Laki Laki', 'Dk. Salam No. 366, Banjar 61366, SulTra', '089522811620', '3', '3', 'default.jpg', NULL),
(129, 'Kalim Wacana', '1712713747', '2021-09-30', 'Laki Laki', 'Dk. Dipenogoro No. 315, Solok 14406, KalUt', '089522811620', '3', '3', 'default.jpg', NULL),
(130, 'Rahayu Hassanah S.Farm', '1646225874', '2021-09-30', 'Laki Laki', 'Jln. Kali No. 165, Tanjungbalai 40067, SumUt', '089522811620', '3', '3', 'default.jpg', NULL),
(131, 'Garang Lazuardi', '7550958187', '2021-09-30', 'Laki Laki', 'Ki. Ujung No. 52, Sorong 81798, Gorontalo', '089522811620', '3', '3', 'default.jpg', NULL),
(132, 'Atmaja Sinaga', '5899988137', '2021-09-30', 'Laki Laki', 'Jln. Abdul Muis No. 727, Pagar Alam 31220, Papua', '089522811620', '3', '3', 'default.jpg', NULL),
(133, 'Nyoman Iswahyudi', '5074048780', '2021-09-30', 'Laki Laki', 'Gg. Babadan No. 994, Dumai 66657, JaTeng', '089522811620', '3', '3', 'default.jpg', NULL),
(134, 'Elvin Saptono S.E.', '9987173900', '2021-09-30', 'Laki Laki', 'Jln. Flores No. 421, Padangpanjang 14443, JaBar', '089522811620', '3', '3', 'default.jpg', NULL),
(135, 'Balijan Wasita', '3413416559', '2021-09-30', 'Laki Laki', 'Ds. Pasirkoja No. 150, Palopo 34059, SulTra', '089522811620', '3', '3', 'default.jpg', NULL),
(136, 'Sari Utami S.T.', '5211793294', '2021-09-30', 'Laki Laki', 'Psr. Jakarta No. 290, Bogor 45712, JaBar', '089522811620', '3', '3', 'default.jpg', NULL),
(137, 'Suci Dian Padmasari', '6155791960', '2021-09-30', 'Laki Laki', 'Ds. B.Agam 1 No. 370, Subulussalam 52726, Riau', '089522811620', '3', '3', 'default.jpg', NULL),
(138, 'Mustika Hardana Narpati', '8841120685', '2021-09-30', 'Laki Laki', 'Dk. Bakau Griya Utama No. 541, Gunungsitoli 65118, PapBar', '089522811620', '3', '3', 'default.jpg', NULL),
(139, 'Elvina Pratiwi M.TI.', '2985240562', '2021-09-30', 'Laki Laki', 'Jln. Ciumbuleuit No. 904, Binjai 50663, PapBar', '089522811620', '3', '3', 'default.jpg', NULL),
(140, 'Kartika Laksita', '4593673918', '2021-09-30', 'Laki Laki', 'Dk. Reksoninten No. 889, Lubuklinggau 56075, DKI', '089522811620', '2', '4', 'default.jpg', NULL),
(141, 'Diana Zulaika', '4204640689', '2021-09-30', 'Laki Laki', 'Psr. Pattimura No. 62, Probolinggo 53812, JaBar', '089522811620', '2', '4', 'default.jpg', NULL),
(142, 'Dasa Habibi S.E.I', '3053090973', '2021-09-30', 'Laki Laki', 'Jln. Rajawali No. 144, Administrasi Jakarta Selatan 28900, JaBar', '089522811620', '2', '4', 'default.jpg', NULL),
(143, 'Ulva Rahmawati', '8949418475', '2021-09-30', 'Laki Laki', 'Ds. Sutarto No. 281, Denpasar 13628, Maluku', '089522811620', '2', '4', 'default.jpg', NULL),
(144, 'Keisha Puspita S.Kom', '1137019712', '2021-09-30', 'Laki Laki', 'Psr. Rumah Sakit No. 322, Gorontalo 10810, MalUt', '089522811620', '2', '4', 'default.jpg', NULL),
(145, 'Lalita Yuliarti', '4025084073', '2021-09-30', 'Laki Laki', 'Jr. Baan No. 34, Prabumulih 50765, SumUt', '089522811620', '2', '4', 'default.jpg', NULL),
(146, 'Hilda Agustina S.Pd', '6140077254', '2021-09-30', 'Laki Laki', 'Kpg. Bazuka Raya No. 698, Palopo 85552, PapBar', '089522811620', '2', '4', 'default.jpg', NULL),
(147, 'Kenari Langgeng Lazuardi', '7355991712', '2021-09-30', 'Laki Laki', 'Jln. Reksoninten No. 333, Administrasi Jakarta Selatan 59377, NTT', '089522811620', '2', '4', 'default.jpg', NULL),
(148, 'Mulyanto Kurniawan', '7739639173', '2021-09-30', 'Laki Laki', 'Kpg. Pacuan Kuda No. 94, Administrasi Jakarta Timur 44817, SumUt', '089522811620', '2', '4', 'default.jpg', NULL),
(149, 'Ibun Mansur', '4382246887', '2021-09-30', 'Laki Laki', 'Jln. Bahagia No. 841, Administrasi Jakarta Barat 99234, Lampung', '089522811620', '2', '4', 'default.jpg', NULL),
(150, 'Latif Halim', '7760123013', '2021-09-30', 'Laki Laki', 'Jln. K.H. Maskur No. 491, Sukabumi 52998, NTB', '089522811620', '2', '4', 'default.jpg', NULL),
(151, 'Bakiono Anggriawan', '7769435432', '2021-09-30', 'Laki Laki', 'Jr. Basmol Raya No. 713, Semarang 38240, Lampung', '089522811620', '2', '4', 'default.jpg', NULL),
(152, 'Syahrini Victoria Pertiwi M.Ak', '9326137717', '2021-09-30', 'Laki Laki', 'Jln. Sam Ratulangi No. 29, Tual 27240, SumBar', '089522811620', '2', '4', 'default.jpg', NULL),
(153, 'Atmaja Emong Manullang', '2869063596', '2021-09-30', 'Laki Laki', 'Dk. Barasak No. 171, Blitar 93621, JaBar', '089522811620', '2', '4', 'default.jpg', NULL),
(154, 'Niyaga Bakidin Uwais', '5529297012', '2021-09-30', 'Laki Laki', 'Ds. Villa No. 77, Pematangsiantar 93228, DIY', '089522811620', '2', '4', 'default.jpg', NULL),
(155, 'Vivi Pertiwi S.Kom', '4325221887', '2021-09-30', 'Laki Laki', 'Psr. Wora Wari No. 474, Padangpanjang 46467, SulTeng', '089522811620', '2', '4', 'default.jpg', NULL),
(156, 'Ifa Uli Laksmiwati', '8774881144', '2021-09-30', 'Laki Laki', 'Ki. Muwardi No. 233, Metro 78187, Jambi', '089522811620', '2', '4', 'default.jpg', NULL),
(157, 'Laras Rika Melani M.Pd', '2693845818', '2021-09-30', 'Laki Laki', 'Psr. Surapati No. 68, Bontang 23523, SulUt', '089522811620', '2', '4', 'default.jpg', NULL),
(158, 'Amalia Kania Kuswandari S.Pd', '6498223397', '2021-09-30', 'Laki Laki', 'Kpg. Otto No. 784, Bitung 33477, NTB', '089522811620', '2', '4', 'default.jpg', NULL),
(159, 'Zulaikha Jasmin Rahayu', '3533846418', '2021-09-30', 'Laki Laki', 'Ki. Wora Wari No. 887, Lhokseumawe 44549, Papua', '089522811620', '2', '4', 'default.jpg', NULL),
(160, 'Tari Kasiyah Purnawati', '2502186657', '2021-09-30', 'Laki Laki', 'Jr. Bayam No. 787, Administrasi Jakarta Barat 25427, SulBar', '089522811620', '2', '4', 'default.jpg', NULL),
(161, 'Jaiman Garan Napitupulu', '7355631846', '2021-09-30', 'Laki Laki', 'Gg. Cikutra Timur No. 150, Pekanbaru 71926, MalUt', '089522811620', '2', '4', 'default.jpg', NULL),
(162, 'Shania Puspita', '4538264325', '2021-09-30', 'Laki Laki', 'Gg. Sudiarto No. 579, Mataram 54923, Banten', '089522811620', '2', '4', 'default.jpg', NULL),
(163, 'Perkasa Elon Mahendra M.Ak', '4021667743', '2021-09-30', 'Laki Laki', 'Psr. Ki Hajar Dewantara No. 675, Sawahlunto 96542, SumSel', '089522811620', '2', '4', 'default.jpg', NULL),
(164, 'Cindy Yulianti', '5063192887', '2021-09-30', 'Laki Laki', 'Gg. Bayan No. 438, Tanjung Pinang 56064, SulUt', '089522811620', '2', '4', 'default.jpg', NULL),
(165, 'Diah Patricia Laksmiwati S.Kom', '1791000599', '2021-09-30', 'Laki Laki', 'Dk. Panjaitan No. 707, Palu 87494, Maluku', '089522811620', '2', '4', 'default.jpg', NULL),
(166, 'Ridwan Hakim', '2612533791', '2021-09-30', 'Laki Laki', 'Ds. Ciumbuleuit No. 486, Subulussalam 75696, MalUt', '089522811620', '2', '4', 'default.jpg', NULL),
(167, 'Surya Najmudin', '3638323282', '2021-09-30', 'Laki Laki', 'Jln. Baabur Royan No. 170, Magelang 45650, Bali', '089522811620', '2', '4', 'default.jpg', NULL),
(168, 'Jamalia Puspita', '9676124017', '2021-09-30', 'Laki Laki', 'Jr. Abang No. 493, Binjai 14269, Gorontalo', '089522811620', '2', '4', 'default.jpg', NULL),
(169, 'Cornelia Nasyidah', '1347205793', '2021-09-30', 'Laki Laki', 'Dk. Krakatau No. 455, Padang 78923, Jambi', '089522811620', '2', '4', 'default.jpg', NULL),
(170, 'Restu Nasyiah', '4739493975', '2021-09-30', 'Laki Laki', 'Ki. Gedebage Selatan No. 105, Tangerang 73180, KepR', '089522811620', '2', '4', 'default.jpg', NULL),
(171, 'Siska Anita Prastuti S.Sos', '2415339149', '2021-09-30', 'Laki Laki', 'Ki. Bahagia No. 232, Blitar 10415, KalTim', '089522811620', '2', '4', 'default.jpg', NULL),
(172, 'Yuni Genta Wahyuni', '7621909693', '2021-09-30', 'Laki Laki', 'Kpg. Camar No. 953, Pasuruan 79351, Gorontalo', '089522811620', '2', '4', 'default.jpg', NULL),
(173, 'Maria Febi Widiastuti', '6092604182', '2021-09-30', 'Laki Laki', 'Jr. Abdul. Muis No. 174, Surabaya 93805, SumBar', '089522811620', '2', '4', 'default.jpg', NULL),
(174, 'Febi Kani Yulianti', '5251338420', '2021-09-30', 'Laki Laki', 'Kpg. Muwardi No. 641, Banjarmasin 89734, Gorontalo', '089522811620', '2', '4', 'default.jpg', NULL),
(175, 'Pranawa Sitorus', '3136638035', '2021-09-30', 'Laki Laki', 'Dk. Cokroaminoto No. 239, Kendari 40941, JaTim', '089522811620', '3', '4', 'default.jpg', NULL),
(176, 'Genta Yuliarti', '7964502994', '2021-09-30', 'Laki Laki', 'Ds. Abdul. Muis No. 363, Payakumbuh 93702, KalUt', '089522811620', '3', '4', 'default.jpg', NULL),
(177, 'Simon Adriansyah', '3713955652', '2021-09-30', 'Laki Laki', 'Kpg. Moch. Toha No. 93, Lhokseumawe 91390, Bali', '089522811620', '3', '4', 'default.jpg', NULL),
(178, 'Danang Waskita', '2268425620', '2021-09-30', 'Laki Laki', 'Ki. Peta No. 90, Administrasi Jakarta Barat 18519, BaBel', '089522811620', '3', '4', 'default.jpg', NULL),
(179, 'Bakijan Pratama', '3802839583', '2021-09-30', 'Laki Laki', 'Kpg. Reksoninten No. 798, Gunungsitoli 99775, MalUt', '089522811620', '3', '4', 'default.jpg', NULL),
(180, 'Clara Shakila Wulandari', '8906890258', '2021-09-30', 'Laki Laki', 'Jr. Cokroaminoto No. 973, Balikpapan 56209, Bengkulu', '089522811620', '3', '4', 'default.jpg', NULL),
(181, 'Laila Andriani', '6911198386', '2021-09-30', 'Laki Laki', 'Jr. Salak No. 352, Mojokerto 18791, Papua', '089522811620', '3', '4', 'default.jpg', NULL),
(182, 'Tirta Samosir M.M.', '5357703056', '2021-09-30', 'Laki Laki', 'Ds. Pasirkoja No. 703, Sabang 82969, NTT', '089522811620', '3', '4', 'default.jpg', NULL),
(183, 'Shania Violet Hassanah', '3280853986', '2021-09-30', 'Laki Laki', 'Jr. Madrasah No. 252, Sibolga 47235, Lampung', '089522811620', '3', '4', 'default.jpg', NULL),
(184, 'Teguh Anggriawan', '2409040612', '2021-09-30', 'Laki Laki', 'Jln. Bazuka Raya No. 388, Tangerang Selatan 48040, SulTeng', '089522811620', '3', '4', 'default.jpg', NULL),
(185, 'Prabu Sirait S.T.', '7480867888', '2021-09-30', 'Laki Laki', 'Gg. Eka No. 714, Jayapura 16370, Aceh', '089522811620', '3', '4', 'default.jpg', NULL),
(186, 'Balapati Rosman Prasetya', '9993868278', '2021-09-30', 'Laki Laki', 'Dk. Wahidin No. 398, Blitar 64392, MalUt', '089522811620', '3', '4', 'default.jpg', NULL),
(187, 'Aditya Januar', '3811794013', '2021-09-30', 'Laki Laki', 'Ds. Baranangsiang No. 34, Pagar Alam 29192, Gorontalo', '089522811620', '3', '4', 'default.jpg', NULL),
(188, 'Kuncara Hutagalung', '6286642951', '2021-09-30', 'Laki Laki', 'Ds. M.T. Haryono No. 631, Binjai 30860, MalUt', '089522811620', '3', '4', 'default.jpg', NULL),
(189, 'Bagus Rajata', '5050736833', '2021-09-30', 'Laki Laki', 'Jln. Supono No. 611, Pekalongan 25920, Lampung', '089522811620', '3', '4', 'default.jpg', NULL),
(190, 'Rizki Koko Tarihoran', '9475140498', '2021-09-30', 'Laki Laki', 'Kpg. Bank Dagang Negara No. 310, Banda Aceh 13887, KalUt', '089522811620', '3', '4', 'default.jpg', NULL),
(191, 'Violet Puspasari M.Pd', '4672411554', '2021-09-30', 'Laki Laki', 'Ds. Wahidin No. 671, Makassar 81533, Lampung', '089522811620', '3', '4', 'default.jpg', NULL),
(192, 'Devi Gasti Aryani S.Pt', '9647401165', '2021-09-30', 'Laki Laki', 'Jr. Rajiman No. 767, Metro 24056, MalUt', '089522811620', '3', '4', 'default.jpg', NULL),
(193, 'Rahmi Titi Nurdiyanti S.T.', '6989262669', '2021-09-30', 'Laki Laki', 'Ds. Sukajadi No. 158, Jambi 61024, SulBar', '089522811620', '3', '4', 'default.jpg', NULL),
(194, 'Murti Nababan', '9370897807', '2021-09-30', 'Laki Laki', 'Jln. Nakula No. 450, Kotamobagu 16350, MalUt', '089522811620', '3', '4', 'default.jpg', NULL),
(195, 'Lidya Aryani', '1853330265', '2021-09-30', 'Laki Laki', 'Gg. Perintis Kemerdekaan No. 391, Denpasar 65670, KalSel', '089522811620', '3', '4', 'default.jpg', NULL),
(196, 'Dasa Kurniawan', '8211065492', '2021-09-30', 'Laki Laki', 'Psr. Padang No. 368, Administrasi Jakarta Selatan 48506, Maluku', '089522811620', '3', '4', 'default.jpg', NULL),
(197, 'Febi Laksmiwati', '7934181173', '2021-09-30', 'Laki Laki', 'Jln. Rajawali Barat No. 77, Batam 66970, NTB', '089522811620', '3', '4', 'default.jpg', NULL),
(198, 'Dipa Anggriawan', '2590820324', '2021-09-30', 'Laki Laki', 'Jr. Sutarto No. 405, Medan 58712, PapBar', '089522811620', '3', '4', 'default.jpg', NULL),
(199, 'Darmanto Wasita M.TI.', '1274950438', '2021-09-30', 'Laki Laki', 'Dk. Perintis Kemerdekaan No. 11, Mataram 51842, NTB', '089522811620', '3', '4', 'default.jpg', NULL),
(200, 'Puti Laksita', '6749786879', '2021-09-30', 'Laki Laki', 'Jr. Bahagia  No. 477, Semarang 50887, BaBel', '089522811620', '3', '4', 'default.jpg', NULL),
(201, 'Padma Agustina', '9600808083', '2021-09-30', 'Laki Laki', 'Ki. Bagonwoto  No. 301, Pekanbaru 63064, SulTeng', '089522811620', '3', '4', 'default.jpg', NULL),
(202, 'Siti Namaga S.Ked', '5123837065', '2021-09-30', 'Laki Laki', 'Ds. Labu No. 420, Jayapura 77859, BaBel', '089522811620', '3', '4', 'default.jpg', NULL),
(203, 'Ani Farida', '6133632432', '2021-09-30', 'Laki Laki', 'Ds. Haji No. 954, Malang 87542, KalUt', '089522811620', '3', '4', 'default.jpg', NULL),
(204, 'Indah Pudjiastuti', '4777205735', '2021-09-30', 'Laki Laki', 'Jr. B.Agam 1 No. 535, Denpasar 17187, Banten', '089522811620', '3', '4', 'default.jpg', NULL),
(205, 'Marsito Darman Nashiruddin', '8305262943', '2021-09-30', 'Laki Laki', 'Ki. Dr. Junjunan No. 528, Malang 80978, JaBar', '089522811620', '3', '4', 'default.jpg', NULL),
(206, 'Hairyanto Waskita', '2016481770', '2021-09-30', 'Laki Laki', 'Ds. B.Agam Dlm No. 760, Sawahlunto 15985, KalSel', '089522811620', '3', '4', 'default.jpg', NULL),
(207, 'Hamima Talia Hastuti', '5827421948', '2021-09-30', 'Laki Laki', 'Psr. Bakti No. 31, Gorontalo 70224, KalTeng', '089522811620', '3', '4', 'default.jpg', NULL),
(208, 'Wage Simanjuntak', '9419727739', '2021-09-30', 'Laki Laki', 'Jr. Baik No. 846, Surabaya 79794, SulSel', '089522811620', '3', '4', 'default.jpg', NULL),
(9999, 'Ifa Melani S.E.', '5114427520', '2021-09-30', 'Laki Laki', 'Jln. Monginsidi No. 438, Bukittinggi 35129, Gorontalo', '089522811620', '3', '2', 'default.jpg', NULL),
(10000, 'Azid Zainuri', '6289677337', '2004-10-03', 'L', 'Jl. raya sak penak dewe', '089677337414', 'default', '3', 'default', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_user`
--

CREATE TABLE `tabel_user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  `image` varchar(128) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `date_create` date DEFAULT NULL,
  `kode_unik` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_user`
--

INSERT INTO `tabel_user` (`id`, `name`, `email`, `password`, `image`, `role_id`, `is_active`, `date_create`, `kode_unik`) VALUES
(3, 'Helmi Tazkia', 'admin@gmail.com', '$2y$10$wDD5uGospbApgEEiY0H28uWC41JbTy9lJqbtjs61deXAcxbFzomLm', 'default.jpg', 1, 1, '2021-09-29', ''),
(4, 'Asep', 'petugas@gmail.com', '$2y$10$A5xUE3d/AZRRQEix03ca0OL6RpVd1qyM.x9fn9o6CFqpmcPrv8Rz6', 'default.jpg', 2, 1, '2021-10-01', ''),
(5, 'Fauzan', 'guru@gmail.com', '$2y$10$oQcVJfLyTKXazNUukuzTDe.6Utgwv4laUPlrhH7HPTTYwbJFcYrtS', 'default.jpg', 3, 1, '2021-10-02', 'nmKrj^eZPzVaM&F&up&J'),
(8, 'bambang', 'bambang@gmail.com', '$2y$10$2Y.v0o.n.UW5eLMse4HGLODErvCLeMQwN6aDOBVeEJVlOKRXD8QEK', 'default.Jpg', 2, 1, '2024-12-28', 'pQ&U%Wf*qI^F^^r$BMV%');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_user_role`
--

CREATE TABLE `tabel_user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_user_role`
--

INSERT INTO `tabel_user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Wali Kelas'),
(3, 'Guru');

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 2),
(2, 1, 3),
(9, 1, 5),
(10, 1, 4),
(11, 2, 2),
(12, 2, 3),
(13, 3, 3),
(14, 2, 4),
(15, 3, 4),
(16, 3, 5),
(17, 2, 5),
(18, 1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_submenu`
--

CREATE TABLE `user_access_submenu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `submenu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access_submenu`
--

INSERT INTO `user_access_submenu` (`id`, `role_id`, `submenu_id`) VALUES
(1, 1, 30),
(2, 1, 36),
(3, 1, 1),
(4, 1, 3),
(5, 1, 39),
(6, 1, 41),
(7, 1, 6),
(8, 1, 37),
(9, 1, 43),
(10, 1, 44),
(11, 1, 4),
(12, 1, 46),
(13, 1, 47),
(14, 2, 3),
(15, 2, 39),
(16, 2, 41),
(17, 3, 3),
(18, 3, 39),
(19, 2, 43),
(20, 3, 6),
(21, 2, 6),
(22, 2, 44),
(23, 3, 44),
(24, 2, 47),
(25, 3, 47),
(26, 1, 48),
(27, 2, 49);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`, `icon`) VALUES
(2, 'Kelola Menu', 'flaticon-381-controls-3'),
(3, 'Kelola Absensi', 'flaticon-381-calendar-5'),
(4, 'Siswa', 'flaticon-381-user-8'),
(5, 'Users', 'flaticon-381-user'),
(12, 'Api Config', 'flaticon-381-user');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `url` text NOT NULL,
  `is_active` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `is_active`) VALUES
(1, 3, 'Atur libur', 'absen/libur', 1),
(3, 3, 'Data Absensi', 'absen', 1),
(4, 5, 'Data User', 'user', 1),
(6, 4, 'Data seluruh siswa', 'siswa', 1),
(30, 2, 'Acces User', 'Menu/Access', 1),
(36, 2, 'Menu', 'menu/management', 1),
(37, 4, 'Kelas & Jurusan', 'siswa/kelas', 1),
(39, 3, 'Rekap Absen', 'absen/rekap', 1),
(41, 3, 'Jam absen', 'absen/jam', 1),
(43, 4, 'Siswa per kelas', 'siswa/daftar_kelas', 1),
(44, 4, 'Data Izin', 'izin', 1),
(45, 1, 'Data ', 'Admin', 1),
(46, 2, 'Sub menu', 'menu/submanagement', 1),
(47, 5, 'Data User Siswa', 'user/user_siswa', 1),
(48, 12, 'API Config', 'api/apimanagement', 1),
(49, 4, 'Penilaian Sikap', 'studentpoints', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login_siswa`
--
ALTER TABLE `login_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_points`
--
ALTER TABLE `student_points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabel_api`
--
ALTER TABLE `tabel_api`
  ADD PRIMARY KEY (`id_api`);

--
-- Indexes for table `tabel_detail_absen`
--
ALTER TABLE `tabel_detail_absen`
  ADD PRIMARY KEY (`id_detail`);

--
-- Indexes for table `tabel_izin`
--
ALTER TABLE `tabel_izin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabel_jam_absen`
--
ALTER TABLE `tabel_jam_absen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabel_jurusan`
--
ALTER TABLE `tabel_jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `tabel_kelas`
--
ALTER TABLE `tabel_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `tabel_libur`
--
ALTER TABLE `tabel_libur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabel_siswa`
--
ALTER TABLE `tabel_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `tabel_user`
--
ALTER TABLE `tabel_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabel_user_role`
--
ALTER TABLE `tabel_user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_submenu`
--
ALTER TABLE `user_access_submenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login_siswa`
--
ALTER TABLE `login_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_points`
--
ALTER TABLE `student_points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tabel_api`
--
ALTER TABLE `tabel_api`
  MODIFY `id_api` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tabel_detail_absen`
--
ALTER TABLE `tabel_detail_absen`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=295;

--
-- AUTO_INCREMENT for table `tabel_izin`
--
ALTER TABLE `tabel_izin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tabel_siswa`
--
ALTER TABLE `tabel_siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10001;

--
-- AUTO_INCREMENT for table `tabel_user`
--
ALTER TABLE `tabel_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user_access_submenu`
--
ALTER TABLE `user_access_submenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
