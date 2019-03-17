-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 17 Mar 2019 pada 14.30
-- Versi Server: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bee`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `branches`
--

CREATE TABLE `branches` (
  `branchid` int(11) NOT NULL,
  `branchname` varchar(100) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `branches`
--

INSERT INTO `branches` (`branchid`, `branchname`, `description`) VALUES
(10, 'Medan Kota', 'Testing Medan Kota'),
(11, 'Medan Baru', 'Medan Baru'),
(12, 'Medan Baru aja', 'Medan Baru'),
(13, 'Tarutung', 'Tapanuli UTara'),
(14, 'KANTOR PUSAT', 'unit kantor pusat'),
(15, 'CABANG GUNUNG SITOLI', ''),
(16, 'B.I.C.T', ''),
(17, 'CABANG BATAM', ''),
(18, 'CABANG BELAWAN', ''),
(19, 'CABANG KUALA TANJUNG', ''),
(20, 'CABANG LHOKSEUMAWE', ''),
(21, 'CABANG MAHALAYATI', ''),
(22, 'CABANG PEKANBARU', ''),
(23, 'CABANG SIBOLGA', ''),
(24, 'CABANG SUNGAI PAKNING', ''),
(25, 'CABANG TANJUNG PINANG', ''),
(26, 'CABANG TANJUNG BALAI ASAHAN', ''),
(27, 'CABANG TANJUNG BALAI KARIMUN', ''),
(28, 'CABANG TEMBILAHAN', ''),
(29, 'GALANGAN KAPAL BELAWAN', ''),
(30, 'TERMINAL PETI KEMAS DOMESTIK BELAWAN', ''),
(31, 'Default', 'Generate From System');

-- --------------------------------------------------------

--
-- Struktur dari tabel `divisions`
--

CREATE TABLE `divisions` (
  `divisionid` int(11) NOT NULL,
  `divisionname` varchar(255) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `divisions`
--

INSERT INTO `divisions` (`divisionid`, `divisionname`, `description`) VALUES
(1, 'SATUAN PENGAWASAN INTERN', ''),
(2, 'DIVISI KETENAGAKERJAAN', 'Entah apalah ini'),
(3, 'DEFAULT', 'NOT SET');

-- --------------------------------------------------------

--
-- Struktur dari tabel `employeetrainings`
--

CREATE TABLE `employeetrainings` (
  `employeetrainingid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `nipp` varchar(50) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `address` text,
  `camefrom` text,
  `entrydate` date NOT NULL,
  `lenghtofwork` int(11) NOT NULL DEFAULT '1',
  `createdon` datetime NOT NULL,
  `createdby` varchar(100) NOT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `employeetrainings`
--

INSERT INTO `employeetrainings` (`employeetrainingid`, `name`, `nipp`, `email`, `address`, `camefrom`, `entrydate`, `lenghtofwork`, `createdon`, `createdby`, `updatedby`, `updatedon`) VALUES
(17, 'Dr. AUSVIN GENIUSMAN KOMAINI, M.H.Kes', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 10, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(18, 'NADLIN, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 20, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(19, 'dr.ERWIN SOPACOA, Sp.PD', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(20, 'dr.WAHYUDI, Sp.A', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(21, 'FADHLI AHMAD, S.Kep.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(22, 'dr. SYAFRIL ARMANSYAH', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(23, 'dr. MUHAMMAD RIZQI NASUTION', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(24, 'APRILLA DWISON, S.E, M.M.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(25, 'AHMAD SUBHAN, S.E., SSM.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(26, 'HASUDUNGAN MANURUNG, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(27, 'ALMAHERANI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(28, 'HENDRA SUTIKNO, S.E., M.M.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(29, 'FALDI SAPUTRA, .S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(30, 'HARDI, S.T., M.M.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(31, ' FARIZ RAHMAN AL HAKIM, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(32, 'BUDI SETIADI, S.T., M.M.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(33, 'RETNO LESTARI, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(34, 'SRI IRMAWATI NASUTION, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(35, 'ACHMAD MEGA PERDANA, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(36, 'FAHRUR ROZI, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(37, 'JANSEN SITOHANG, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(38, 'SYAHMENAN TARMIZI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(39, 'IFSAN ROSADY, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(40, ' AUGUSTO DWIFA DANIEL, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(41, ' FARIS HILMAN, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(42, 'PRAHARDI WINARSO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(43, 'BUDI RUSDIANTO, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(44, 'DELIANA DACHI, S.H.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(45, 'DANU WIBISONO, S.T., M.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(46, 'EMILDA ANDAYANI, S.E., M.M.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(47, 'FAWIDA HANUM MATONDANG, S.T., M.M.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(48, ' YUWONO FRIBARSA MBA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(49, ' JUAN ISKANDAR, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(50, 'DINDA RISZIANTI, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(51, 'Ir.HENRY NALDI, M.M.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(52, 'IRFAN FITRIADI, SE, M.H.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(53, 'ELFI MARTHA ROSITA,S.Kom., MM', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(54, 'RAGHI DELANO KRISWANDI M.T', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(55, 'JONI ILYAS, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(56, 'KRISTINA AYU SRI NGENANA Br. KETAREN, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(57, 'CHAIRIAH, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(58, ' FADHLIL WAFI, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(59, 'DOMINGGO PASARIBU, S.T., M.M., M.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(60, 'ISWAN ANSUKARTO SUKARDI, S.T., M.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(61, 'ZEFRINAL, A.Md', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(62, 'AGUS RIANTO, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(63, 'ELFINA NIAR, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(64, ' MUHAMMAD EKO SETIAWAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(65, ' DENY SATRIAWAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(66, ' GALUH SURYA PUTRA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(67, 'AFRI YANTINI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(68, 'ARIF HUTOMO, S.E, D.E.S.S.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(69, 'SYARIEF HUSEIN, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(70, 'MHD.ZULPAN, S.T., SSM', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(71, 'KAMAL AKHYAR, SE, MMTr.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(72, 'TRI GUNADI, S.E, M.M.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(73, 'SAMSU RIZAL, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(74, 'M. IKHSAN PANJAITAN, S.E, AK. M.Si', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(75, 'SUTORO, S.E., M.H.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(76, 'MULIAWATY, S.E., M.M.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(77, 'TRISNA WARDANI, S.T., M.M.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(78, 'FITRI HERAYATI NASUTION, S.E., M.M.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(79, 'SEREPINA TAMBUNAN, S.Si.T', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(80, 'BAIHAQI, SE., M.M.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(81, 'ANDRI LESMANA, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(82, 'AHMAD YANI, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(83, 'DESKI RIZALDI, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(84, 'PATRIA PRIHANGGADI, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(85, ' MUHAMMAD WAHYU OKTO RIENDI S.E', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(86, 'SAMSUL, A.Md.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(87, 'INDRA ARDIANSAH, A.Md', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(88, 'KURNIAWAN HARYO YUDANTO, A.Md', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(89, 'MUHAMMAD ERIANSYAH, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(90, 'ADE MAYDWIANDA, S.E., M.M.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(91, 'SORAYA YOHANA SIAHAAN, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(92, 'FIONA SARI UTAMI, S.I.Kom', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(93, 'RICA AGNAS GIRSANG, S.Sos', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(94, 'YULIA VALENCIA, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(95, ' SEPTIANA LISTININGRUM, M.M.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(96, ' MAULVI DZIKRANA MUHAMMAD S.I.P', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(97, ' MARIZA RIZQI IRIANI S.I.Kom', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(98, 'LISA PEBRINA, A.Md', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(99, ' RIZKA AMEYLINA NASUTION S.E', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(100, 'DYTIA PARAMITA DEWI NASUTION, A.Md', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(101, 'NITIA RAHMA PERMATA SARI, A.Md.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(102, 'NETTY WATI LIMBONG, S.E., M.M.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(103, 'ZAINUDDIN, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(104, 'MASLAKHODIMA SIREGAR, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(105, 'ALBERT SIHOMBING, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(106, 'HABIBI. S.PANE, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(107, 'ALSY THERESIA SINAGA, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(108, 'ELDA MEILITA SARAGIH, A.Md.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(109, 'PUTRI SARI LUBIS', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(110, 'KHAIRUNSYAH BADRUN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(111, ' SYLVIA RIANDA ANUGRA, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(112, 'DIEHL IRDIANTO, S.E., Ak., M.M.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(113, 'RIZA NASUTION, SE. Ak., M.M.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(114, 'VANDA SINAGA, S.E., Ak', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(115, 'YOSS ELSY PANGGABEAN, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(116, ' MARTHA TINAMBUNAN S.E', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(117, 'LINDA NOVITA HARAHAP, A.Md.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(118, 'SAIFUL AZMI LUBIS, S. Kom', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(119, 'PASOGIT SATRYA SIMANUNGKALIT', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(120, 'LADESSILA NATALIA GIRSANG, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(121, 'ARIEF HERMAWAN, S.H.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(122, 'MIKONO AZHARI, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(123, 'ULI DANI DESRINA, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(124, ' RILLY FERANDA M.Ec.DeV', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(125, 'ARDHI AMARULLAH, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(126, 'RIZKI YOLANDA UTAMI, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(127, 'RATIH WIDYASTUTI, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(128, 'HENDRA JOHANNES FERNANDO NAINGGOLAN, A.Md.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(129, 'FERRIAL DUNAN SIDABUTAR, ST, M.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(130, 'RACHMAD JUNIZAR, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(131, 'IDRIS SYAHPUTRA NASUTION, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(132, ' SHANTIKA DITA PUTRI, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(133, ' CLINTON SIBUEA S.T', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(134, ' OBED ADHITYA PUTRA S.T', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(135, 'FIDHATY EYANUR', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(136, 'ANGGI ADHARI, A.Md', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(137, 'VINNY ALVIONITA SIALLAGAN, A.Md.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(138, ' DICKY SUHERI CHANIAGO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(139, ' M. AULIA RIFANGGA BANGUN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(140, 'SARMIDI, S.E., Ak., M.M.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(141, 'KHAIRI MAHRUZAR SIREGAR, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(142, 'DODI CATUR FITRIAN, S.E., M.M.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(143, 'DEWI NOVIA NURSA, S.Kom', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(144, 'CHAIRY SAFRINA NASUTION, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(145, 'DUDI RAHMADIANSYAH, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(146, 'YUNITIA, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(147, ' NURUL ATIKA, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(148, ' FRANS MATHEWS SILABAN, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(149, ' NADHIRA INDAH PANGESTU HARAHAP, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(150, ' ANGELA EKA SEPTIANA, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(151, 'RUDIANSYAH, A.Md.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(152, 'SYARIFUL MAHYA, A.Md', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(153, 'MUHAMMAD IRFAN NASUTION, A.Md.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(154, 'WINA ANGGRENI, A.Md.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(155, 'ALIM WIJAYA, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(156, 'SAIFUL ANWAR, SE., M.Si', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(157, 'SANTI SAPTASARI, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(158, 'FATIMAH ZUHRA, S.E., M.Si', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(159, 'SYAWALUDDIN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(160, ' MUHAMMAD FAKHRUNNIZA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(161, 'SWANDI HUTASOIT, SH, M.Hum', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(162, 'FADILLAH HARYONO, S.H.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(163, ' RIZKY PRANANDA TAMBUNAN S.H.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(164, 'RIDWAN SANI SIREGAR, S.E, M.M.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(165, 'EPO SEMBIRING, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(166, 'TRI WAHYUDI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(167, 'ZURIEN HANDAYANI, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(168, 'YOGI NOVA RIANDA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(169, 'IMRON ERYANDY', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(170, 'DIAH DARMAWIDIANA, S.H., M.M.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(171, 'DEWI SURYANI EKAWATI, S.Psi', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(172, 'LAILATUL QOMARIYAH, S.I.Kom, M.Sc', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(173, 'ASWI HAMONANGAN, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(174, ' KATHRIN TERESIA PURBA S.E', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(175, ' INDRA EKA PUTRA, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(176, ' CHANDRA ARTIKA, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(177, ' FUAD GARY RAHADIAN, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(178, 'TAURINA RISWATI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(179, 'BASUKI WIDODO, S.H, M.M.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(180, 'SURYONO, S.E, M.H.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(181, 'M. AZMI JAUHARI, S.H.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(182, 'MUHAMMAD YUSRON, S.H., M.M.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(183, 'ARIEF MAULANA LUBIS, S.H.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(184, 'LUZIA ZULFENI, S.H.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(185, 'HERRY AMS, SE, M.Mar', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(186, 'EDY AGUSTRI, S.H., M.M.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(187, 'INDRAMAWAN, S.H.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(188, 'AIDA WILFARINA BATUBARA, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(189, 'JANFRYADI TUMANGGOR, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(190, 'FATDHINAH ANJAR LESTARI, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(191, 'ZULHAYDI BARIKA, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(192, 'NOVIANI BR. SIAGIAN, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(193, 'RIZKA RAHMITA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(194, 'SUKMA NINGSIH, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(195, 'SARI TRY MAYRIZA SIHOMBING, A.Md.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(196, 'SURIYANTI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(197, 'DONNY HARYANDA, A.Md.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(198, 'WIKI ASTRI SIREGAR, A.Md', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(199, 'RIRIN SAHPUTRI, A.Md.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(200, 'INTAN LESTARI, A.Md.Kom', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(201, 'SHEILA ULTRI, A.Md', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(202, 'SARI RAMADHANI, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(203, 'CHAIRIN NOVIANTI ALISA, A.Md.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(204, 'IKAFATRIA WARTI, S.H.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(205, 'REGINA YANITA ROULI br PANGGABEAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(206, 'BETARIA PASARIBU, A.Md.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(207, 'IMMANUEL ZEBUA, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(208, 'SUCI RISTIA NINGRUM, A.Md.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(209, ' MELDRICK', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(210, ' YUDA YEHEZKIEL SEMBIRING', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(211, 'REVI JUSRI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(212, 'IRFAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(213, 'MUTI LU\'LU HABIBAH', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(214, 'ANTONI HUTAGALUNG', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(215, 'M. KHAIRUL FAZLI SITOMPUL', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(216, 'MANGASI HUTASOIT', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(217, 'CUT WILLYANA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(218, 'RAFIKA AULIA HASIBUAN, S.Sos, M.Si', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(219, 'KASIH DWI YANTI, S.Sos', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(220, 'RENI ZAKARIA, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(221, 'HENDRI BACHTIAR, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(222, 'AUFAR IBNA, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(223, 'RISA YULIA, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(224, 'SAUT FRANSISWOYO SIAGIAN, ST, MSTr.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(225, 'ASIH KURNIA, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(226, 'EMAL ZAIN MUZAMBEH TUN BAYASUT, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(227, 'KURNIA PARLINDUNGAN NASUTION, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(228, ' REZA HIDAYAT, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(229, 'LYNDHU ADHITYA WISHNU RAY, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(230, 'FRIDOLIN SIAHAAN, S.T., M.M.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(231, ' MUHAMMAD HASAN BASRI S.E', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(232, 'FENY ANGGRAINI, A.Md.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(233, 'MAHADI WIDIGDO, S.E., M.M.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(234, 'ADHI KRESNA NOVIANTO, S.H.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(235, 'DENI PRIANTO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(236, 'ADAM SARIFUDIN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(237, 'PARULIAN PANGGABEAN, S.E., M.Si', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(238, 'INDRI GUNAWAN, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(239, 'PRAPTONO, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(240, 'SUSI NARIANI, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(241, 'JOEHAN SYAH REDHA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(242, 'YARHAM HARID, S.T., M.M.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(243, 'HULMAN F.H.TAMBUN, S.T, M.Mar.Eng.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(244, 'MUSTAJAB, S.E', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(245, 'HARNOTO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(246, 'RIDEN MANALU', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(247, 'ENDARTO SETIYAWAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(248, 'EKA WAHYU RAFIANEF', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(249, 'JATENGGER', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(250, 'TUMPAL T.P.SINAGA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(251, 'BAMBANG SULISTYADI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(252, 'ARDIANSYAH', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(253, 'RIDWAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(254, 'TETTI ELIANA SILAEN, A.Md.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(255, 'MUHAMMAD ALI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(256, 'KUSRO, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(257, 'DARUL IKHRAN ANGKASA BATUBARA, S.Si.T', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(258, 'ACHMAT SANTOSO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(259, 'JUN KUSWOYO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(260, 'SUHENDRA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(261, 'AGUS RAHARYONO, SSM.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(262, 'UJANG MUSTAFA, SSM.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(263, 'A. SAKHOWI FADLOL, SSM.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(264, 'HENDANG GUMILANG', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(265, 'SUPRIADI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(266, 'SUHARTONO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(267, 'KELIWON', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(268, 'SARMIDI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(269, 'AGUS SULAIMAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(270, 'KAMARUDZAMAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(271, 'SARIANTO, SSM.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(272, 'EKO SURYONO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(273, 'MUHAMMAD SYAKBAN LUBIS', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(274, 'RUSCHAN, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(275, 'DANDY SOTARDUGA SIHITE, S.T', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(276, 'DELIANA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(277, 'LINCAH EVA L.HUTASOIT', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(278, 'HERLAN KASMARIADI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(279, 'ABDUL HADI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(280, 'BUDI HARIANSYAH, S.H.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(281, 'SUTUTADU SITUMORANG, SSM.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(282, 'SYAMSU ALAMSYAH, S.Kom', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(283, 'ZULKARNAIN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(284, 'SUHAIRI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(285, 'M. YUSUF MASANGKEN, SE SSM.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(286, 'FAISAL, SE., SSM.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(287, 'SALOMO HUTABARAT, SSM.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(288, 'BRIDAIL, S.S.T.Pel.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(289, 'YUSUF SUDARSONO, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(290, 'EKO DERMAWAN NASUTION', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(291, 'PARUHUMAN LUBIS, SSM.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(292, 'ESTER PAKPAHAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(293, 'RAHMAINI HASIBUAN, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(294, 'AHMAD JUNAIDI, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(295, 'SUSILAWATI, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(296, 'ABDUL BASIR', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(297, ' MAHMUDI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(298, ' EKO ALFIANDI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(299, ' IMPREZA ADI PUWARDHIKA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(300, 'JUNIYUS APRADO SEMBIRING', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(301, 'PUJI MARTONO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(302, 'ANDIONO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(303, 'ADE RAMA YULWININTON', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(304, 'SUTAN MANAHAN LAUT HUTAGALUNG', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(305, 'RANTO SUMIHAR SARAGIH', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(306, 'SYAFARI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(307, 'TEUKU MUHAZZARI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(308, 'SYAHRIL', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(309, 'SUPARDIONO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(310, 'ALFRI ADHIE PULUNGAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(311, 'BAMBANG SUMANTRI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(312, 'BAMBANG ANWARSYAH', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(313, 'SUGIANTO, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(314, 'AZRIL, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(315, 'IMRAN Z, A.Md.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(316, 'CONDRO WARDOYO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00');
INSERT INTO `employeetrainings` (`employeetrainingid`, `name`, `nipp`, `email`, `address`, `camefrom`, `entrydate`, `lenghtofwork`, `createdon`, `createdby`, `updatedby`, `updatedon`) VALUES
(317, 'RIKY WAHYUDI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(318, 'MHD. ARDIANSYAH GUSTI ANGGA PRATAMA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(319, 'HERWAN HANSA SARAGIH', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(320, 'M. HAIQAL', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(321, 'MURPHY SUHERI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(322, 'MUHAMMAD EDWIN, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(323, 'SYAID KHAIDIR AL-IDRUS', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(324, 'RUBY SAPUTRA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(325, 'RIKY ANDRIANSYAH', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(326, 'MUHAMMAD IQBAL', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(327, 'MOHAMAD SUDARMA ADI PERWIRA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(328, 'GALU SAPUTRA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(329, 'ROBY ALGHOZALY', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(330, 'ARI KELANA WIJAYA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(331, 'ISMAIL YAKUB', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(332, 'AHMAD HUSAINI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(333, 'IRWAN PETER SIAHAAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(334, 'FAHMI ABDI WIJAYA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(335, 'RIZKI MAULIAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(336, 'HENROLES SIBAGARIANG', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(337, 'CHANDRA SAPUTRA, S.Kom', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(338, 'MUHAMMAD AZHARI EFFENDI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(339, 'EDY SYOBIRIN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(340, 'DWI ARIYANTO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(341, 'DIAN SYAPUTRA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(342, 'ADITYA NUGRAHA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(343, 'IRSYADUL FUAD', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(344, 'MUHAMMAD REZA FAHMI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(345, 'RIZA NUGRAHA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(346, 'RUSYDI NURDIN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(347, 'MARCO DINATA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(348, 'SULAIMAN LUBIS', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(349, 'TRI SURYA AHMAD FADHILLAH', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(350, 'FERRY PRATAMA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(351, 'ANDREAS SIAHAAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(352, 'HARIONO, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(353, 'SAGIMIN, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(354, 'RULININGRUM, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(355, 'ARIEF BUDIMAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(356, 'NOFRIZAL', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(357, 'DEBORA EKA PRASETYA PASARIBU', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(358, 'SYAMSUL BAHRI, S.E., SSM.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(359, 'ALPIAN BADRES, SSM.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(360, ' ARISTYA PANGGI WIJAYA, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(361, 'BENNI DIKTUS M.A. SIAHAAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(362, 'HERNA YUSNITA MANIK', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(363, 'IMAL FADLI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(364, 'AGUS SUWANTO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(365, 'BAYU AZHARI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(366, 'FRANS SANTO DANIEL S.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(367, 'ZAID SYAHLUTHFY', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(368, 'MULYADI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(369, 'YANUAR', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(370, 'BAMBANG SUSANTO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(371, 'RISNA LUBIS, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(372, 'RISMAN, SSM.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(373, 'MARIA SAKTRIANI PASARIBU, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(374, 'AFFANDI NOERDIN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(375, 'RODI MAMSYAH', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(376, 'KHAIRUN NIZAR', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(377, 'SATRIA DWIRAWAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(378, 'ZAKIA ULFA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(379, 'MARTUA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(380, 'JEFRIANSYAH, SST', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(381, 'NOVAN KRISTANTO, S.S.T.Pel.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(382, 'EMMY PURNAMA HINDUN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(383, 'ARIYANTO, A.Md.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(384, 'TENGKU IRFANSYAH, S.H.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(385, 'RUDI AZHARI, S.E. SSM.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(386, 'JOKO SUSILO, S.E, SSM.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(387, 'ISNU GUNAWAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(388, 'ROBI ANDI SYAHPUTRA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(389, 'KHOIRUDDIN LUBIS, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(390, 'DENI SUDRAJAT', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(391, 'INDRAWARDI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(392, 'HENDRA SYAHPUTRA, A.Md.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(393, 'ERNAWATI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(394, 'RAJA AZMI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(395, 'DEDI SAHPUTRA GINTING , A.Md.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(396, 'GATOT SULISTYO HADI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(397, 'MUHAMMAD FAHRIZAL', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(398, 'RIEL FULLTIMER HARIANJA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(399, 'BACHRUMSYAH', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(400, 'AGUS SUBAGIO, Amd', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(401, 'MAYA FITHRI, A.Md', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(402, 'WENNY RAHAYU', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(403, 'EDY PRIYANTO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(404, 'BUDI SANTOSO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(405, 'JEFRI PARADISSA RAMBE', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(406, 'SRI DONA PUTRI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(407, 'POLASA HARTAMAN, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(408, 'ABDUL IMAM', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(409, 'LUKMAN, S.Sos.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(410, 'DEDY SOEHERY', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(411, 'JOY WILTER SIMATUPANG', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(412, 'E. RABIATUN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(413, 'I WAYAN WIRAWAN, S.E., M.S.P.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(414, 'BUDI AMRIZAL, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(415, 'BENNY NAPITUPULU, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(416, 'BUDI SYAFRIZAL, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(417, 'JALALUDDIN, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(418, 'NIZAR ZULMI, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(419, 'BETSI KOMILASARI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(420, 'RUM HASTUTI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(421, 'MORGANDA T. PARULIAN NAINGGOLAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(422, ' RANDY MAMINTARJA S.T', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(423, 'ADDY DARMA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(424, 'ZULHADI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(425, 'KHAIRUL AMRI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(426, 'RONI DAMANIK', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(427, 'BOIKE PANJAITAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(428, 'ROLEN JEREMIA SAING', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(429, 'LIDYA NOVITA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(430, 'ELA DIOVERA NIEL', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(431, 'ANDHIKA HERDIANTO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(432, 'MUHAMMAD NUR', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(433, 'ABRI, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(434, 'A. S. MARLINDO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(435, 'MUHAMMAD IQBAL, SSM.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(436, 'RONAL APRIYANTO, S.Si.T', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(437, 'ZAINAL ABIDIN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(438, 'KRISNO WAGIMAN SILITONGA, A.Md', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(439, 'RELEASE RYANTORO, A.Md', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(440, 'SUDIRAWAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(441, 'PANGONDIAN HARAHAP', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(442, 'RETNO MURDI JULIANSYAH', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(443, 'BOWO SUWANDI ASMORO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(444, 'INDRA PRAJA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(445, 'OKTA KURNIAWAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(446, 'IRWAN NURHADI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(447, 'JEFRIS SINAMBELA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(448, 'YOHANNES', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(449, 'ACHMAD VERDIANSYAH ALWI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(450, 'ALFENSIUS ROMYCO, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(451, 'PANGERAN HAFIS', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(452, 'RACHMAT BASUKI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(453, 'SYOFANDI MUNTHE', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(454, 'RICKI FEBRIYADI AMBARITA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(455, 'REONALDO CEPLIN TUA SINAGA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(456, 'MAKDIN PURBA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(457, 'TOGI HOTMAIDA MALISIANA SIHOMBING ', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(458, 'HENDRY LAMHOT PANJAITAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(459, 'NUR ISLAMIYAH, A.Md.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(460, 'RAHMAD SERIBULAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(461, 'ARIES FATAHILLAH, A.Md.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(462, 'YENNY PURBASARY', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(463, 'RICKY GANDA, A.Md.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(464, 'SELI NOVITA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(465, 'BUDI AZMI, S.E., Ak., M.M.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(466, 'BAMBANG SUHENDRA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(467, 'CANDRA KARDANA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(468, 'HAMDAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(469, 'FERIZAL MAKMUR', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(470, 'IRMA SURYANI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(471, 'ZULKIFLI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(472, 'DEDDI EDWAR', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(473, ' DEWARTA SITEPU', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(474, 'MUHAMMAD SUKUR', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(475, 'WAHYU HIDAYAT LUBIS', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(476, 'ALFAUZUL KABIR HARAHAP', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(477, 'AGUS MAULANA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(478, 'RAHMAD HIDAYAT HUTASUHUT, SSM.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(479, 'AMRELLAH', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(480, 'ANNISA FARAHANUM FAUZI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(481, 'NOVA INDRAWAN, S.E., SSM.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(482, 'HESTY HARIANY', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(483, 'SYAHRI RAMADANA, MBA, MM', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(484, 'AFRIZAL, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(485, 'JAINAL, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(486, 'HARRY RAHMANTO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(487, 'SINDU LUSIANTORO PRANOTO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(488, 'MUHAMMAD AKHYAR, A.Md.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(489, 'CHRISTOPHER COLOMBUS PURBA, SST', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(490, 'MANGARA HATUAON PATAR LUMBANTOBING, SE', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(491, 'FAHRIZA ASWANI, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(492, 'DWI ERINA RATIH, A.Md', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(493, 'NOVARIA LARASATI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(494, 'ROZI ANDRIANI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(495, 'BUDHI DHARMAWAN, S.T., M.M.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(496, 'ZAKARIA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(497, ' MOCHAMMAD KUDORI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(498, 'HELMI FIRDAUS, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(499, 'AGUST DERITANTO, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(500, 'PRISKA YANTI PURBA, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(501, 'IRVAN AFANDI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(502, 'NURLINDA SIMANULANG', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(503, 'SYAHRI RAMADHAN ANANDA, A.Md', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(504, 'ALDI RENALDI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(505, 'ZETDAR HUTAGALUNG', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(506, 'EDUAR PURNAMA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(507, 'AHMAD SOFYAN, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(508, 'WIDYA SARI ARITONANG, A.Md.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(509, 'YUSRIZAL, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(510, 'ERWIN FAHRUZAL BARUS', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(511, ' JUMASRY SIMANJUNTAK', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(512, 'ANANG SUTRISNO, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(513, 'RAIS PERDANA, S.E .', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(514, 'DARMANSYAH NASUTION', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(515, 'SAM ARIFIN WIWI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(516, 'SARI ANDRAYANI, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(517, 'RASMUN EFFENDI LUBIS, S.T., M.M.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(518, 'ABDUL HALIM', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(519, 'MARDIANTO, S.Sos', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(520, 'LEGA PURBA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(521, 'LILY PRAYUDI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(522, ' MUHAMMAD RIDHO SAHPUTRA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(523, ' SUFIAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(524, 'ANDALIA, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(525, 'ZULFIKAR', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(526, 'M. REZA HAMDANI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(527, 'MUHAMMAD SURYA HANDOKO, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(528, 'ELLINGKARI SEPTIYANUS HULU', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(529, 'ALI NAPIA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(530, 'AL ABRAR', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(531, 'YENNOVIN, M.Mar', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(532, 'IWAN IRYANTO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(533, 'SUPRIONO, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(534, 'ZULFA HARDENY', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(535, 'JACKSON ALFONSO SIMANUNGKALIT', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(536, ' JUANDI JAYA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(537, 'AWALUDDIN ARIF PANGGABEAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(538, 'FIRMAN ANDRI YADIE', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(539, 'YOSEP ESTOMI TAMBA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(540, 'HENDRA SAPUTRA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(541, ' REKIE FAHDY TRI UTAMA ', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(542, 'SULAIMAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(543, 'SYAHRU RAMADHAN MANURUNG, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(544, 'OMAR DANAN JAYA NAOFAL', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(545, 'AULIA RAHMAN, S.E., M.M.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(546, 'KHAIRUL TAMPUBOLON, S.Sos', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(547, ' MARIAMAN SOLIDER', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(548, 'KHUDRI AL AKBAR', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(549, 'WAHYUNI WIDYASARI, A.Md.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(550, 'RIZKI RIANDA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(551, 'RICHARD SIAHAAN, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(552, 'ASWAN GANDA SIGALINGGING, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(553, 'MISWANTO, SSM.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(554, 'AHMAD RIZAL', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(555, ' IMAM MUNANDAR', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(556, 'BARLI UTAMA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(557, 'YANCE WILLEM', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(558, 'NUR RAHIM BUDIYANTO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(559, 'TAMBA SINURAT, S.E. SSM.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(560, 'ANDYANA DEWI Br. SIREGAR', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(561, 'AKHMAD YAMANI, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(562, 'BUKHARI, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(563, 'RINALDI EKA WARDANA, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(564, 'MUHAMMAD MUKTI ALI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(565, 'YAHYA TARJAN GINTING, S.T., M.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(566, 'SYAMSUL BAHRI SIREGAR', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(567, 'TUNI BANCIN, S.E. Ak, M.M.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(568, 'EAN FEROGEY', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(569, 'M. MUKHLIS RANGKUTI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(570, 'CORO GA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(571, 'ASSYAIF AL ADILIN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(572, 'HERMAN JOHANES SIPANGKAR', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(573, 'JUJUNGAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(574, 'HERTO SITUMORANG', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(575, 'KUSNADI, SSM.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(576, 'HASMUR EDISURYA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(577, 'ERIANTO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(578, 'TRI SUTRISNO ARITONANG', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(579, 'MUSTAENNOPY, A.Md.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(580, 'RUDI SANTOSO, A.Md', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(581, 'WENDI YON ARMAWAN, A.Md.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(582, 'RUDIANTO SITUMORANG', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(583, 'ELJON', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(584, 'RIKO RINALDO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(585, 'IRZAL KHUDRI, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(586, 'JEKSON A.F.MARPAUNG, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(587, 'KAMARUDDIN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(588, 'GATOT SUDIWILYANTO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(589, 'REBECCA AGUSTINA Br. SIBUEA, A.Md.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(590, 'ROMAULI TAMBUNAN, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(591, 'JONNI SITOMPUL, M.Mar', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(592, 'SUBIYANTO , S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(593, 'TEMAZATULO ZENDRATO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(594, 'HENGKI PURNAWAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(595, 'ANDI HAZRI HASIBUAN, A.Md.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(596, 'HERLINA ZEBUA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(597, 'FRANNES FRANCOIS LUMBAN TOBING', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(598, 'INDRA PAMULIHAN, S.E., M.H.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(599, 'KRISNA INGALAGA, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(600, 'BARMAN SIMANGUNSONG ', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(601, 'ATHA NASIUS DONY P, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(602, 'ABU BAKAR SIDDIQ D, S.E', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(603, 'RIZALDY HASIAN HARAHAP, S.T., M.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(604, 'RONI TUA PARLINDUNGAN SIALLAGAN, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(605, 'RAHMI, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(606, 'ADY AFFANRI SIREGAR, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(607, 'ARVIANTY HERAWATI CAPAH, A.Md.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(608, 'JHONI AZHAR, S.Kom', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(609, 'ROSMAINI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(610, 'IRAMAYANI FERI YUNETTA BR. TARIGAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(611, 'BEBY FADHILA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(612, 'SUPARTO KALOKO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(613, 'DOGLAS SITUMORANG, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(614, 'NASARET ALFIANUS DEPARI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(615, 'ABDI WAHIDIN, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(616, 'AMIRUDDIN ', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(617, 'MUHAMMAD JAKI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(618, 'CANDRA GUNAWAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(619, 'HANDY PRATAMA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(620, 'BENI ANDIKA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(621, 'MUHAMMAD FAUZI ', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(622, 'M. RAMDANI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00');
INSERT INTO `employeetrainings` (`employeetrainingid`, `name`, `nipp`, `email`, `address`, `camefrom`, `entrydate`, `lenghtofwork`, `createdon`, `createdby`, `updatedby`, `updatedon`) VALUES
(623, 'BOBBY DARUL UTAMA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(624, 'BOAN BINSAR PARULIAN SIRAIT', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(625, 'PUTRA PINALDI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(626, 'SATRIANUS SEMBIRING', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(627, 'MUHAMMAD BUKHARI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(628, 'ZULKIFLI ISKANDAR', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(629, 'RUSTAM', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(630, 'NURIMAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(631, 'HARDI SURYA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(632, 'ALI IMRAN SIREGAR', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(633, 'ACHMAD CHOIR', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(634, 'DENI PLANTINO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(635, 'HADHITYA RAMADHANA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(636, 'FERDINANDO HAMONANGAN MARBUN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(637, 'IMAM APRIANDI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(638, 'ANDRI SARUCI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(639, 'DHONI SANDY WIYATA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(640, 'ARI SYAHPUTRA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(641, 'NUR ICHSAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(642, 'DEDI SUHENDRA GUNAWAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(643, 'ANGGA PRASISKA PURBA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(644, 'ANTONI SITOMPUL', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(645, 'ROBERT LAHENGKO GULTOM', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(646, 'SAID DEDY CANDRA, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(647, 'BUDI ARIEANDY', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(648, 'SURYA DHARMA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(649, 'MULKAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(650, 'HADIAN RIFAI SIREGAR', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(651, 'BASUKI RAHMAT', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(652, 'DEKI ASHARI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(653, 'REZA PRAMEDYA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(654, 'EKO SUCAHYO, M.M.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(655, 'ZAHLULSYAH, SSM.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(656, ' T. IQBAL PUJAWIRA, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(657, 'ORIZA KAMADITA SEMBIRING, A.Md.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(658, ' RIO JUNJUNGAN TAMPUBOLON A.Md', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(659, 'MISRAIM GINTING', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(660, 'SAHRU SYAFRIZAL PULUNGAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(661, 'DESMANTO DWI PUTRA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(662, 'FACHRUL REZA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(663, 'ZAINUDDIN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(664, 'PRESLY ARTO SIAHAAN, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(665, 'AGUS SUSANTO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(666, 'SATURI LIBRIANTI, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(667, 'SUDIRMANSYAH', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(668, 'RICKY NELSON, SST', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(669, 'BRURI SUMANTRI, S.S.T.Pel.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(670, 'NURSAN, S.S.T.Pel.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(671, 'S. SATYA WANI, S.Psi', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(672, 'ALI BOSAR HASIBUAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(673, 'FITRI HANDAYANI PASARIBU, A.Md', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(674, 'YUNIARTY CARLINA PURBA, A.Md.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(675, 'DEDI RAHMAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(676, 'YUDHA PRATAMA PUTRA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(677, 'ALNO VERTUS TELAUMBANUA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(678, 'RIZKY WAHYUDI LUBIS', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(679, 'SIHAR HOTMA P.SIHITE, S.H, M.M.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(680, 'ADNAN LUBIS, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(681, 'dr YUSMARDIANNIE ', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(682, 'RISTA OSTARIA E.V.S, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(683, 'NOVERIZAL, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(684, 'BAMBANG SUJATMIKO, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(685, 'SANDHY WIJAYA, S.E., MM, M.Sc', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(686, 'SURYONO, S.T., M.M.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(687, 'HOTMA TAMBUNAN, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(688, 'KHAIRUN NISA, S.H.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(689, 'Ir.ROBERT M.P.SINAGA, D.E.S.S.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(690, 'FAHRYANTO, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(691, 'RINANDAR THAMRIN, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(692, 'DASMAN PARLINDUNGAN TAMBA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(693, ' ZICO UMRI, S.T, ', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(694, 'SABTIA, S.H.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(695, 'SAID JOEANNA, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(696, 'SABRINA SITOMPUL, S.H.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(697, 'AFIFAH PUTRI JAMAL, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(698, 'ADE NOVANDY', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(699, 'PANDAPOTAN, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(700, 'M. ISMAIL SYAHPUTRA RITONGA, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(701, 'M. FIKRI AL HAKIM, S.Kom', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(702, ' SINDY NOVITA HARYATI, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(703, 'HERBERT A.NASUTION, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(704, 'MUHAMMAD NOORDIN, S.H., M.Kn', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(705, 'RUDI MARLA, S.T., M.M.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(706, 'LISTON HAPOSAN MARPAUNG', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(707, 'M. FAUZI ADITYA PUTRA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(708, 'AMIN RAHMANSYAH, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(709, 'YONIA CHAIRUL, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(710, 'TANJUNG HALOMOAN AMBARITA, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(711, 'SAPRI EPENDI, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(712, 'MILDAWATY NOER, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(713, 'ERVINA LADY MARTHA SIMATUPANG, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(714, 'SUHENDRA, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(715, 'RAMDHANA FERI MARTIN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(716, 'NURSABRIATI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(717, 'ANDOHARJADI EZER PURBA, A.Md.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(718, 'IDHAM KHALID HARAHAP, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(719, 'RADEN RORO GALIH AJENG LARASATI, S.H.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(720, 'CHANDRADIN PARLINDUNGAN MANIK, A.Md.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(721, 'JONAZ SAOR HARIANJA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(722, 'HENGKI PASARIBU, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(723, ' ANTON GONTOR VIVALDI MAZA A.Md', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(724, 'WENNY RIZKY SAFRIDA PANGGABEAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(725, 'HELEN SRI OVITA, A.Md.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(726, 'DIANDRA SORAYA, A.Md.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(727, 'RIKY ARMADI, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(728, 'TAUFIK HARIS, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(729, 'YACOB ADIAN NADEAK, A.Md.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(730, 'TRISKO HAMDANI PANJAITAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(731, 'ARYANTI MARIA SILALAHI, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(732, 'DIMAS HASANNUDIN, A.Md.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(733, 'FAHRURROZI L.TOBING, A.Md.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(734, 'SYAHRIDAYANTI HARAHAP. A.Md.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(735, 'VEROYANTA KORNELIUS TARIGAN, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(736, 'MUHAMMAD HERJUNO, S.Kom', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(737, 'FAJAR ABDI SATRIAWAN, S.Sos', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(738, ' MARGARETHA ALDILA FITRI, S.H.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(739, 'MUHAMMAD NAZHAN, S.E., M.M.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(740, 'AFRIANI MELDA DEWI HARAHAP, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(741, 'MADE DEWI DHARMA SARI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(742, 'FRIDA WAIDIANE, S.H.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(743, ' ELLA ANDIRA, S.H.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(744, 'MUHAMMAD RIADH FACHRANI NASUTION', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(745, 'SONDANG RUMIRIS PATRICIA Br. HUTAJULU, S.Psi', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(746, 'S.ISMANTO, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(747, 'NOVALINA SITEPU, A.Md', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(748, 'FITHRA KURNIAWAN, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(749, 'FATTAH YASIN, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(750, 'YENKI DEWIZRA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(751, 'ALI RACHMAD MARDJUHUM HASIBUAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(752, 'TAGSU TAMBUNAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(753, 'YON MULYADI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(754, 'SJAFRIN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(755, 'BUDHI SATRIA, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(756, 'EKO SISWANTO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(757, 'JUNAIDIMAN, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(758, 'SYAFRIDA HANUM', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(759, 'PRIYETNI, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(760, 'FARIZ ANSAR', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(761, 'BUDIANTO S. MELIALA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(762, 'BUDY HARIADI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(763, 'MHD. SOFYAN SADLI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(764, 'JUNAIDI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(765, 'IDAMANSYAH', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(766, 'PHILIPUS B. SUNDI, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(767, 'HERU CAHYONO, SSM.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(768, 'MUSLIM', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(769, 'AGUS MULIAWAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(770, 'HENDRIK LUMBAN TOBING, S.H.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(771, 'KUSIANTO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(772, 'AGUS SALIM', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(773, 'FITRIA YANUARSA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(774, 'ADAMSYAH', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(775, 'SRI MARIATI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(776, 'ANTHONY HERYANTO SUAL', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(777, 'YUSRIZAL SIREGAR', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(778, 'SRI HARTATI, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(779, 'RIDWAN HAMDI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(780, 'ERMI TANJUNG', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(781, 'MARIYOTO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(782, 'AMIR SAIFUL, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(783, 'RONI SIMAMORA, A.Md.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(784, 'DWI SETYAWAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(785, 'TRI FAJAR HADISANTOSO, S.S.T.Pel.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(786, 'HERRY DWI PUTRA HAMID, S.Psi', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(787, 'MUHAMMAD NASIR', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(788, 'EFRILDAWATI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(789, 'CEPI MAULANA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(790, 'KUN PAMUJI HARDONO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(791, 'AGUS SINAGA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(792, 'M. FADLI RAMADANI, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(793, 'SURYA DHARMA BARUS', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(794, 'SANGARA JUNAEDI PORGANDA SITORUS', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(795, 'THEO PILUS CHRISTIANTA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(796, 'SYAHPUTRA WIJAYA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(797, 'KURNIAWAN PRATAMA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(798, 'BRAM HARRY HERMANTO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(799, 'YUDHI SETIAWANDI GINTING, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(800, 'MUHAMMAD FERDIAN PRATAMA LUBIS', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(801, 'MUHAMMAD HIDAYAT', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(802, 'ROBIYANSYAH', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(803, 'JIMMI KARTER', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(804, 'ZAIDUN KHAIR', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(805, 'MUHAMMAD BUDI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(806, 'ADE LESMANA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(807, 'DIMAS PRABOWO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(808, 'JOKO EDI SUSILO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(809, 'RIO ERIKSON TAMBUNAN, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(810, 'FANLI LUMBAN TOBING', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(811, 'SURIAT HAJAIRIN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(812, 'BOBBY SUSANTO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(813, 'TRY SUTRISNO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(814, 'MUHAMMAD ZUPRI PULUNGAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(815, 'ANUGRAH DADALI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(816, 'HENDRI KURNIAWAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(817, 'EKO PRIANTO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(818, 'YANUAR IMANUDDIN ABDILLAH', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(819, 'SYAHRIL RAMADHAN HARAHAP', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(820, 'SUYANDI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(821, 'MUSLIM ABDI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(822, 'JEFRI SAPUTRA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(823, 'NAZARRUDDIN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(824, 'KUSNO WARDOYO, SSM.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(825, 'HARRY PRASTYA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(826, 'BONNY SIBARANI ', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(827, 'SAHAT JUANDA PANJAITAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(828, 'RAHMAD DENI, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(829, 'MUHAMMAD ATTAULLAH', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(830, 'RAHMAT SIDIK', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(831, 'MUHAMMAD SAID RANGKUTI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(832, 'MUHAMMAD SYAHRUL', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(833, 'MUHAMMAD SYAFII', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(834, 'MUHAMMAD RIZKI SYAHPUTRA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(835, 'DARYUSMAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(836, 'JONRIS PIRHOT SIMAREMARE, A.Md', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(837, 'WAHYU HARDIYANTORO, S.S.T.Pel', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(838, 'TOMY SULAEMAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(839, 'MUHAMMAD IZEN, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(840, 'SAUFI DASRIL, S.H.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(841, 'AMELIA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(842, 'ARIF INDRA PERDANA, S.Si.T, M.H.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(843, 'BIBID NUGROHO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(844, 'CICIL AULIA, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(845, 'ROSALINA Br. BANGUN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(846, 'MUJIYONO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(847, 'SYAFRIANTO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(848, 'YULI PALDO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(849, 'RAJUNA SARI SARAGIH', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(850, 'REIKO MEILANO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(851, 'DONY ARMAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(852, 'AKHMADA NUGRAHA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(853, 'HARTOYO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(854, 'AFRIZA EKA WATI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(855, 'Rr.KISWANTI, S Sos', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(856, 'SYUZANA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(857, 'SUPARDI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(858, 'ANIS DWI PRASOJO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(859, 'CAHYADI CANE', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(860, 'DENNY HENRY', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(861, 'ZULDERT SUMONANG', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(862, 'SYARIPUDIN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(863, 'ASMAR EFFENDI, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(864, 'HERLAN SAPUTRA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(865, 'MARIO DOVANI, A.Md.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(866, 'CHANDRO SINURAT', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(867, 'RANDI ANDREAS MANULLANG', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(868, 'AHMAD THOHIR RAMBE', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(869, 'NAHARIAH', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(870, 'RUSYDI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(871, 'ISKANDAR ILYAS', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(872, 'RAHMAT UTOMO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(873, 'MUHAMAD FADIL YUSMAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(874, 'ARMAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(875, 'NATALIS ADI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(876, 'NANY LENI MARDIANA SINAGA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(877, 'NORVITA RIA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(878, 'SUDI SANTOSO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(879, 'ERYANSAH', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(880, 'AMRAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(881, 'HASANGAPAN HUTAGALUNG, S.H., M.Mar', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(882, 'FIRMANSYAH', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(883, 'MURSALIM', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(884, 'HIRIN TRIHANDOYO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(885, 'A. KADIR', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(886, 'MUHAMMAD RIZKI BATUBARA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(887, ' RAMLAN ABU BAKAR', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(888, 'DIDIK SUSANTO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(889, ' ADIAKSA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(890, ' ANDRY WIJAYA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(891, 'ABDUR RAZAK', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(892, 'NATAN PABORRONG', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(893, 'SAUDARMANTO MALAU', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(894, 'ROUNALD DAULAT PARNINGOTAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(895, 'RAJA DASMAN FADLI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(896, 'ABU BASAR', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(897, 'MUHAMAD ALISA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(898, 'AGUS SALIM MERDEKA, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(899, 'MITSU BUDIANTO TAMPUBOLON, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(900, 'DICKY ARIE ANANTA SIREGAR', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(901, 'GUNAWAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(902, 'BUDI MARSITO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(903, 'FAJAR HIDAYAT', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(904, 'SAYUTI BUSTAMI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(905, ' LAISA SHINTA PAMELA ', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(906, 'RACHMADDIN, SSM.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(907, 'MUHAMMAD ALI, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(908, 'GUSTI NARSIS', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(909, 'REYNALDO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(910, 'AMRIZAL', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(911, 'MUHAMMAD NURDIANSYAH', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(912, 'DARMAWAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(913, 'FAJAR SATNO NUGROHO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(914, 'BENJAMIN NAINGGOLAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(915, 'DINA SITI RACHMA, S.E., M.M.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(916, 'FADRYANSYAH, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(917, 'MUHAMMAD AZHARI NASUTION', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(918, 'DARMAJI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(919, 'BOBBY ALEXANDER IRVAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(920, 'M. ARIEF DAULAY', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(921, 'HALOMOAN SIAHAAN, S.T.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(922, 'NUR SYARIAT', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(923, 'ARIFFAN HARIYADI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(924, 'SANTUS YUSUP SIMANJUNTAK', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(925, 'JIMMI SAPUTRA PURBA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(926, 'GANDA TUA RISWAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(927, 'GIDION SIHOMBING', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(928, 'RONAL GULTOM', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00');
INSERT INTO `employeetrainings` (`employeetrainingid`, `name`, `nipp`, `email`, `address`, `camefrom`, `entrydate`, `lenghtofwork`, `createdon`, `createdby`, `updatedby`, `updatedon`) VALUES
(929, 'DOY DASROL SARAGIH', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(930, 'FERRY SUCHAIMI PRATAMA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(931, 'BROYN GIVINDRI SURBAKTI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(932, 'ABDI SANJAYA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(933, 'YUDHI PRANATA NASUTION', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(934, 'YOGI BUDI HUTOMO', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(935, 'DANU ANGGARA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(936, 'ANDRIKA SITEPU', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(937, 'HARDIANSYAH', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(938, 'DIKI IRAWAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(939, 'SYAHREZA MUTTAQIN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(940, 'MUHAMMAD SUAIB', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(941, 'HAPOSAN HUTAPEA', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(942, 'HERU RAMADANSYAH', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(943, 'MUHAMMAD PANDI SIPAYUNG', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(944, 'HADI ARBI', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(945, 'PAULUS GIGIH SETIAWAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(946, 'MARTUA PAKPAHAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(947, 'MUHAMMAD HAIDIR', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(948, 'SWANDY PURBA, S.E.', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(949, 'DENI SPARTAN', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(950, 'RUDI WIDODO, S.Sos', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(951, 'FADLI HIDAYAT', NULL, 'NOT SET', 'Tidak Tersedia', 'Tidak Tersedia', '2019-02-03', 0, '2019-02-03 00:00:00', 'System', 'System', '2019-02-03 00:00:00'),
(952, 'erwer', 'asdasd', 'sdfdsf@gmail.com', 'asdasds', 'werwer', '2019-03-17', 2, '2019-03-17 14:19:18', 'admin', 'admin', '2019-03-17 14:22:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `expenses`
--

CREATE TABLE `expenses` (
  `expenseid` int(11) NOT NULL,
  `expensename` varchar(255) NOT NULL,
  `expensevalue` decimal(10,0) DEFAULT NULL,
  `description` text,
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `expensetypeid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `expensetypes`
--

CREATE TABLE `expensetypes` (
  `expensetypeid` int(11) NOT NULL,
  `expensetypename` varchar(255) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `expensetypes`
--

INSERT INTO `expensetypes` (`expensetypeid`, `expensetypename`, `description`) VALUES
(1, 'Training 2019', 'ini deskripsi training 2019');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `roleid` int(11) NOT NULL,
  `rolename` varchar(45) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`roleid`, `rolename`, `description`) VALUES
(1, 'Admin', 'only for admin'),
(2, 'User', 'For Spesific User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `trainings`
--

CREATE TABLE `trainings` (
  `trainingid` int(11) NOT NULL,
  `employeetrainingid` int(11) NOT NULL,
  `description` text,
  `createdby` varchar(255) NOT NULL,
  `createdon` datetime NOT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `trainingdate` date NOT NULL,
  `trainingtypeid` int(11) NOT NULL,
  `trainer` varchar(100) NOT NULL,
  `trainingtitle` varchar(255) NOT NULL,
  `divisionid` int(11) NOT NULL,
  `branchid` int(11) NOT NULL,
  `lokasi` text,
  `durasi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `trainingtypes`
--

CREATE TABLE `trainingtypes` (
  `trainingtypeid` int(11) NOT NULL,
  `trainingtypename` varchar(255) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `trainingtypes`
--

INSERT INTO `trainingtypes` (`trainingtypeid`, `trainingtypename`, `description`) VALUES
(4, 'PT', 'Public Training'),
(5, 'IHT', 'In House Training'),
(6, 'E-LEARNING', 'Electronic Learn');

-- --------------------------------------------------------

--
-- Struktur dari tabel `userinformations`
--

CREATE TABLE `userinformations` (
  `userinformationid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `nipp` varchar(50) NOT NULL,
  `branchid` int(11) NOT NULL,
  `phonenumber` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `userinformations`
--

INSERT INTO `userinformations` (`userinformationid`, `username`, `nipp`, `branchid`, `phonenumber`) VALUES
(5, 'jack', '0d0d0001em', 11, NULL),
(6, 'sdasd', 'aSDASFfsdfsd', 12, '08123123'),
(8, 'admin', 'admin00000', 10, '08123123123'),
(9, 'Default', '0', 31, '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `username` varchar(255) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `issuspend` varchar(1) DEFAULT NULL,
  `token` varchar(45) DEFAULT NULL,
  `roleid` varchar(45) NOT NULL DEFAULT '0',
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`username`, `fullname`, `email`, `password`, `issuspend`, `token`, `roleid`, `createdby`, `createdon`) VALUES
('admin', 'admin super', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3', '0', NULL, '1', 'admin', '2019-01-29 12:52:52'),
('Default', 'Generate From System', 'system@gmail.com', '7a1920d61156abc05a60135aefe8bc67', '0', NULL, '1', 'admin', '2019-02-03 10:09:07'),
('jack', 'jack mamba2', 'jackmamba2gmail.com', '21232f297a57a5a743894a0e4a801fc3', '0', NULL, '2', 'admin', '2019-02-07 12:52:52'),
('sdasd', 'asdas awdwd', 'asdadsa@gmail.com', '6c0cbf5029aed0af395ac4b864c6b095', '0', NULL, '2', 'admin', '2019-01-27 12:58:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`branchid`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`divisionid`);

--
-- Indexes for table `employeetrainings`
--
ALTER TABLE `employeetrainings`
  ADD PRIMARY KEY (`employeetrainingid`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`expenseid`),
  ADD KEY `fk_expenses_1_idx` (`createdby`),
  ADD KEY `fk_expenses_2_idx` (`expensetypeid`);

--
-- Indexes for table `expensetypes`
--
ALTER TABLE `expensetypes`
  ADD PRIMARY KEY (`expensetypeid`),
  ADD UNIQUE KEY `expensetypeid_UNIQUE` (`expensetypeid`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`roleid`);

--
-- Indexes for table `trainings`
--
ALTER TABLE `trainings`
  ADD PRIMARY KEY (`trainingid`),
  ADD UNIQUE KEY `trainingid_UNIQUE` (`trainingid`);

--
-- Indexes for table `trainingtypes`
--
ALTER TABLE `trainingtypes`
  ADD PRIMARY KEY (`trainingtypeid`),
  ADD UNIQUE KEY `trainingtypeid_UNIQUE` (`trainingtypeid`);

--
-- Indexes for table `userinformations`
--
ALTER TABLE `userinformations`
  ADD PRIMARY KEY (`userinformationid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `branchid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `divisionid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `employeetrainings`
--
ALTER TABLE `employeetrainings`
  MODIFY `employeetrainingid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=953;
--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `expenseid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `expensetypes`
--
ALTER TABLE `expensetypes`
  MODIFY `expensetypeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `roleid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `trainings`
--
ALTER TABLE `trainings`
  MODIFY `trainingid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `trainingtypes`
--
ALTER TABLE `trainingtypes`
  MODIFY `trainingtypeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `userinformations`
--
ALTER TABLE `userinformations`
  MODIFY `userinformationid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
