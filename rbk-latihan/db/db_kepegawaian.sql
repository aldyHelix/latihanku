-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 17 Des 2017 pada 02.02
-- Versi Server: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kepegawaian`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_gaji`
--

CREATE TABLE `data_gaji` (
  `no` int(11) NOT NULL,
  `id_gaji` varchar(30) NOT NULL,
  `nama_gaji` varchar(50) NOT NULL,
  `nominal_gaji` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pegawai`
--

CREATE TABLE `data_pegawai` (
  `nip` varchar(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `jabatan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_pegawai`
--

INSERT INTO `data_pegawai` (`nip`, `nama`, `alamat`, `jabatan`) VALUES
('1', 'aldy', 'tlogomas', 'admin'),
('2', 'jojon', 'jalan', 'mentri'),
('3', 'jojon2', 'jalan', 'mentri');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gaji_pegawai`
--

CREATE TABLE `gaji_pegawai` (
  `no` int(11) NOT NULL,
  `id_gaji` varchar(30) NOT NULL,
  `nip` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `no` int(10) NOT NULL,
  `nip` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `gelar_depan` varchar(255) DEFAULT NULL,
  `gelar_belakang` varchar(255) DEFAULT NULL,
  `kode_jabatan` varchar(255) DEFAULT NULL,
  `kode_golongan` varchar(255) DEFAULT NULL,
  `kode_unit` varchar(255) DEFAULT NULL,
  `nip_atasan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`no`, `nip`, `nama`, `gelar_depan`, `gelar_belakang`, `kode_jabatan`, `kode_golongan`, `kode_unit`, `nip_atasan`) VALUES
(1, '195802281985031000', 'Rudoro Susanto E', 'Drs.', 'M.Si', '17100', '43', '367100', NULL),
(2, '195808181985031000', 'Pudjo Hardijanto', 'Ir.', 'MA', '11500', '44', '361500', NULL),
(3, '195812131984101000', 'Sigit Priohutomo', 'dr.', 'MPH', '14000', '44', '364000', NULL),
(4, '195812301985032000', 'Detty Rosita', 'Dra. ', 'M.Pd', '12300', '44', '362300', NULL),
(5, '195901201986032000', 'Magdalena', 'Ir.', 'M.M', '18100', '44', '368100', NULL),
(6, '195903071980092000', 'Tuti Nurmayati', NULL, 'S.Sos', '18110', '42', '368110', NULL),
(7, '195904171987091000', 'Naalih Kelsum', 'drg.', 'MPH', '14200', '42', '364200', NULL),
(8, '195904201987101000', 'Enal Tawekal T', NULL, 'BA, M.Sc, Grad Dipl        ', '13310', '42', '363310', NULL),
(9, '195904271988121000', 'Sidqy Lego Pangesthi Suyitno', 'Ir.', 'M.A', '19300', '44', '369300', NULL),
(10, '195905131980091000', 'Sugiyanto', NULL, 'S.Sos, M.Kes', '14210', '42', '364210', NULL),
(11, '195905291983121000', 'Djoko Joewono', 'Ir. ', 'M.Si      ', '12200', '44', '362200', NULL),
(12, '195906081985032000', 'Wahyuni Tri Indarty', 'Ir.', 'M.Si', '17300', '42', '367300', NULL),
(13, '195906161982031000', 'Dalim ', NULL, NULL, '30608', '21', '361323', NULL),
(14, '195908141986031000', 'Suarmansyah ', NULL, ' SH         ', '13100', '44', '363100', NULL),
(15, '195908201985031000', 'Sujatmiko', 'Dr.', 'MA', '17000', '45', '367000', NULL),
(16, '195909261980032000', 'Sri Intiati Ningsih', NULL, 'SH  ', '12320', '43', '362320', NULL),
(17, '195910171986032000', 'Meida Octarina', NULL, 'MCN', '14100', '44', '364100', NULL),
(18, '195910231983032000', 'Mulyati', NULL, NULL, '11313', '33', '361313', NULL),
(19, '195911291982111000', 'Mulyono', NULL, 'SH, M.Si', '18410', '42', '368410', NULL),
(20, '196003021981031000', 'Sunardi', NULL, NULL, '30508', '23', '361343', NULL),
(21, '196004111994031000', 'R. M. Wijanarko Setyawan', 'Drs.', 'M.Sc', '18400', '43', '368400', NULL),
(22, '196004251982032000', 'Trie Widowati', NULL, 'SE', '13220', '41', '363220', NULL),
(23, '196005161981032000', 'Rr. Puji Astuti', NULL, 'S.Sos', '17221', '34', '367221', NULL),
(24, '196007061990032000', 'Siti Rusmiyati', 'Dra.', 'MA ', '13320', '42', '363320', NULL),
(25, '196008011986031000', 'Wagiran', 'Drs.', 'M.M', '17200', '43', '367200', NULL),
(26, '196009061984112000', 'Moon Cahyani', 'Dr. Ir.', NULL, '18420', '42', '368420', NULL),
(27, '196009221991032000', 'Usdianti Susanti', 'Dra.', 'MM', '11513', '41', '361513', NULL),
(28, '196010031992031000', 'Haswan Yunaz', 'DR.', 'M.M, M.Si         ', '16000', '43', '366000', NULL),
(29, '196010101985032000', 'Nurlela', NULL, 'S.Sos', '18412', '34', '368412', NULL),
(30, '196011101998031000', 'Zulkifni Salote', NULL, NULL, '30507', '23', '361343', NULL),
(31, '196103271986031000', 'Marwan Syaukani', 'Dr.Ir.', 'M.Sc    ', '17400', '44', '367400', NULL),
(32, '196107121988031000', 'Maskur', 'Drs.', 'M.Pd', '15310', '41', '365310', NULL),
(33, '196107131982031000', 'Sudarman', NULL, 'SH', '11200', '43', '361200', NULL),
(34, '196107191984032000', 'Susilawati', NULL, 'SH', '18120', '42', '368120', NULL),
(35, '196108171982031000', 'Hadri Pasaribu', NULL, 'SH', '15220', '42', '365220', NULL),
(36, '196109111981032000', 'Dra. Purwatiningsih, MM', NULL, NULL, '17220', '42', '367220', NULL),
(37, '196109181981022000', 'Mujiningsih', NULL, NULL, '13312', '34', '363312', NULL),
(38, '196110191990031000', 'Tubagus Ahmad Chusni', 'Ir.', 'MA, M.Phi', '13000', '44', '363000', NULL),
(39, '196110301988121000', 'R. Agus Sartono', 'Prof.Dr.rer.soc.', 'M.B.A', '15000', '45', '365000', NULL),
(40, '196111241986031000', 'Awal Subandar', 'Dr. Ir.', 'M.Sc', '18300', '44', '368300', NULL),
(41, '196201141983031000', 'Jaka Siswaya', NULL, 'S.Sos     ', '16130', '42', '366130', NULL),
(42, '196202091993031000', 'H. Sahlan', 'Drs.', 'M.Si', '15500', '43', '365500', NULL),
(43, '196203231981031000', 'Mulyadi  ', NULL, NULL, '30605', '21', '361401', NULL),
(44, '196203311982031000', 'R. Wuryanto S', NULL, 'S.Sos  ', '14130', '34', '364130', NULL),
(45, '196205011985031000', 'Slamet Gurindo Priyonggo Affandi', NULL, 'S.Sos', '13120', '41', '363120', NULL),
(46, '196208101983031000', 'Amirullah', NULL, 'S.IP, M.A.P        ', '16120', '42', '366120', NULL),
(47, '196208281982031000', 'M. Yusuf Djafar', NULL, 'SE', '11520', '34', '361520', NULL),
(48, '196210031983021000', 'Gunarso Djoko Santoso', NULL, 'Ak, M.M', '11400', '44', '361400', NULL),
(49, '196210161988032000', 'Linda Darnel', 'Ir.', 'MM', '11530', '42', '361530', NULL),
(50, '196301031987021000', 'Nyoman Shuida', 'Ir.', 'M.Si', '18000', '45', '368000', NULL),
(51, '196302071985022000', 'Endang Sri Rahayu', 'Dra.', NULL, '17110', '42', '367110', NULL),
(52, '196305231990021000', 'Iman Gunadi', 'Ir.', 'M.Pd', '17120', '42', '367120', NULL),
(53, '196306091997032000', 'Siti Juni Tediana', NULL, 'SH', '18130', '41', '368130', NULL),
(54, '196306171987032000', 'Femmy Eka Kartika Putri', 'Dr. ', 'M.Psi', '15200', '44', '365200', NULL),
(55, '196308201987032000', 'Pamuji Lestari', 'Dr. Ir. ', ' M.Sc', '16300', '43', '366300', NULL),
(56, '196310111984022000', 'Nevo Suryani', NULL, 'S.E.', '14420', '42', '364420', NULL),
(57, '196310231995031000', 'Ponco Respati Nugroho', 'Drs.', 'M.Si   ', '12400', '44', '362400', NULL),
(58, '196311261987122000', 'Nefolina Situmorang', NULL, 'MBA', '11140', '42', '361140', NULL),
(59, '196312301987111000', 'Yohanes Baptista Satya Sananugraha', 'Ir.', 'M.Eng', '11000', '44', '361000', NULL),
(60, '196312312007011000', 'Hamka Kurniawan ', NULL, NULL, '30713', '23', '361313', NULL),
(61, '196402021992032000', 'Himelda,', 'Dr. Ir.', 'M.Si', '17420', '42', '367420', NULL),
(62, '196402161987031000', 'Ghafur Akbar Dharmaputra., S.E., M.Com', NULL, NULL, '19400', '44', '369400', NULL),
(63, '196403012002121000', 'Warsono', NULL, 'S.Sos, M.Si   ', '11321', '33', '361321', NULL),
(64, '196403291992111000', 'Andi Rahmadi', 'Ir.', 'M.Sc', '14300', '42', '364300', NULL),
(65, '196404011985031000', 'Sudiya', NULL, 'S.Sos, M.Si       ', '14410', '42', '364410', NULL),
(66, '196407231990021000', 'Ade Rustama', 'Drs.', 'MP', '13400', '42', '363400', NULL),
(67, '196408121985031000', 'Dwi Harjanto Muhamad', 'Drs.', NULL, '16110', '42', '366110', NULL),
(68, '196408171990032000', 'Eka Ningrum', 'Dra.', NULL, '13130', '42', '363130', NULL),
(69, '196411251995031000', 'Dwidoyo Supangkat', NULL, 'SE', '11110', '42', '361110', NULL),
(70, '196502021996031000', 'Muhamad', NULL, 'S.AP', '12411', '33', '362411', NULL),
(71, '196506251986031000', 'Ilham', NULL, 'SE.  M.A   ', '12120', '42', '362120', NULL),
(72, '196508121994031000', 'Abdi Rizal', 'Ir.', 'MA', '11120', '42', '361120', NULL),
(73, '196510031992031000', 'Iwan Eka Setiawan', 'Ir.', 'M.Sc', '16200', '43', '366200', NULL),
(74, '196510281992031000', 'Togap Simangunsong', 'Ir.', 'M.App,Sc    ', '13300', '44', '363300', NULL),
(75, '196511231994032000', 'Nevy Liestiorini', 'Dra.', NULL, '17310', '42', '367310', NULL),
(76, '196602022002121000', 'Sukardi Cahyadi ', NULL, NULL, '30609', '14', '361331', '197302171996032000'),
(77, '196604192002121000', 'Isan ', NULL, NULL, '30504', '14', '361342', NULL),
(78, '196605051992032000', 'Dian Vitasari  ', 'Ir.', NULL, '15210', '41', '365210', NULL),
(79, '196606081992032000', 'Dyah Ratnawati', 'Dra.', NULL, '11130', '42', '361130', NULL),
(80, '196606232007011000', 'Kusuma Pata Mangiri', NULL, ' ST, M.Si ', '12311', '33', '362311', NULL),
(81, '196608051987011000', 'Dr. Drs. Yohan., M.Si', NULL, NULL, '11100', '43', '361100', NULL),
(82, '196612081989101000', 'Suwito', NULL, 'SH', '16420', '41', '366420', NULL),
(83, '196705141994011000', 'G. Fajar Suryono', 'Ir. ', 'M.Si ', '13200', '42', '363200', NULL),
(84, '196705251994032000', 'Anita Herlinawaty Pane', 'Ir.', 'ME    ', '12221', '41', '362221', NULL),
(85, '196707301992031000', 'Herbin Manihuruk', NULL, 'SE, M.Kes       ', '12100', '43', '362100', NULL),
(86, '196708061993012000', 'Indah Suwarni', 'Dra.', 'M.Si', '11300', '43', '361300', NULL),
(87, '196708081989031000', 'H. Tabaruddin', 'Drs. ', 'M.Pd', '15520', '42', '365520', NULL),
(88, '196708161994031000', 'Aris Darmansyah Edisaputra', 'Ir.', 'M.Eng', '15400', '42', '365400', NULL),
(89, '196709201992032000', 'Ratna Kusuma Dewi', NULL, 'SST, M.Kes.', '14110', '34', '364110', NULL),
(90, '196711211994121000', 'Gatot Hendrarto', 'Ir.', ' M.Sc', '11220', '42', '361220', NULL),
(91, '196712122002121000', 'Sukoreladi ', NULL, NULL, '30605', '24', '368132', NULL),
(92, '196802161989031000', 'Haris Djayadi', NULL, 'Ak, M.M', '16310', '41', '366310', NULL),
(93, '196804081994011000', 'Asril', 'Ir.', 'M.Si', '15300', '43', '365300', NULL),
(94, '196805282007011000', 'Suyarto Mangiri', NULL, 'SE', '12421', '33', '362421', NULL),
(95, '196806051988031000', 'Heri Sukoco', NULL, 'S.E.', '11310', '42', '361310', NULL),
(96, '196809202002121000', 'Nurdin', NULL, NULL, '30507', '23', '367132', NULL),
(97, '196811052002121000', 'Usman', NULL, NULL, '30501', '14', '361311', NULL),
(98, '196811121999032000', 'Sinurtina Sihombing', 'dr. ', 'M.Kes', '14220', '34', '364220', NULL),
(99, '196811291996031000', 'Redemtus Alfredo Sani Fenat', 'Ir.', 'MAB ', '16100', '43', '366100', NULL),
(100, '196901211993031000', 'Herbert  H. O  Siagian', 'Dr. Ir.', 'M.Sc', '18200', '42', '368200', NULL),
(101, '196902221989121000', 'Hery Wijayanto', NULL, 'S.E, M.M.', '12220', '41', '362220', NULL),
(102, '196903121996031000', 'Raden Wijaya Kusumawardhana', NULL, 'ST, MMIB', '15100', '43', '365100', NULL),
(103, '196903231997031000', 'Sulaiman  ', NULL, NULL, '30820', '31', '361331', NULL),
(104, '196904091994032000', 'Lita Rahayuningsih ', NULL, NULL, '11315', '33', '361315', NULL),
(105, '196905131996031000', 'H. Ahmad Muslim', NULL, 'ST., MT', '15322', '41', '365322', NULL),
(106, '196908152002121000', 'Agus Susanto  ', NULL, NULL, '30604', '24', '361313', NULL),
(107, '196908191990031000', 'Hasannandi', NULL, 'S.Sos', '11330', '34', '361330', NULL),
(108, '196909031999032000', 'Nadhirah Seha Nur', NULL, 'SP, M.Si', NULL, '42', '362000', NULL),
(109, '196911211996031000', 'Nelwan Harahap', NULL, 'SP    ', '12410', '42', '362410', NULL),
(110, '196912091994032000', 'Mustikorini Indrijatiningrum', 'Ir.', 'ME', '18320', '42', '368320', NULL),
(111, '196912281996032000', 'Dyah Tri Kumolosari', NULL, 'AKS, M.Si       ', '11540', '42', '361540', NULL),
(112, '197004081996032000', 'Linda Irawati Purwaningsih', NULL, 'S.Sos, MAP', '12132', '34', '362132', NULL),
(113, '197005042005012000', 'Lenny Fatmasari', NULL, 'S.Sos', '14121', '34', '364121', NULL),
(114, '197005062002121000', 'Ujang Udin Naro ', NULL, NULL, NULL, '23', '362000', NULL),
(115, '197006152003122000', 'Panca Dewi Setyarini', '', 'SE., M.P', '18411', '34', '368411', NULL),
(116, '197006231996031000', 'Cemy Wiediharsono', NULL, 'SH, Sp.N.', '11210', '42', '361210', NULL),
(117, '197007101995111000', 'Edy Wiyanto', NULL, ' S.Sos, M.A.P ', '11320', '42', '361320', NULL),
(118, '197007172002121000', 'Muhammad Irwan', NULL, NULL, '30605', '22', '361323', NULL),
(119, '197008282001121000', 'H. Cecep Khairul Anwar', NULL, 'S.Ag, M.Ag', '15420', '41', '365420', NULL),
(120, '197009141995032000', 'Dwi Lestari., S.Sos., M.M', NULL, NULL, '14412', '33', '364412', NULL),
(121, '197010232001121000', 'Dohardo Pakpahan', 'Ir.', 'M.Si', '16320', '42', '366320', NULL),
(122, '197102071998031000', 'Jazziray Hartoyo', NULL, 'S.Sos, M.Ed, MM.', '15130', '41', '365130', NULL),
(123, '197102251997032000', 'Nur Fajriah', NULL, 'S.Ag', '15410', '34', '365410', NULL),
(124, '197104062006042000', 'Monalisa Herawati Rumayar', NULL, 'SPt, M.Si   ', '18311', '34', '368311', NULL),
(125, '197106071992022000', 'Eni Rukawiani', NULL, 'SE', '11340', '41', '361340', NULL),
(126, '197106101990091000', 'Nuswardana Sarodja', NULL, 'B.Eng., M.M    ', '15110', '41', '365110', NULL),
(127, '197106101998031000', 'Noegroho Andy Handoyo', NULL, ' S.Si, M.Si', '12130', '42', '362130', NULL),
(128, '197108091994031000', 'Lili Isnaini', NULL, 'S.Pd, M.Pd', '16421', '33', '366421', NULL),
(129, '197109101997032000', 'Nani Rohani', NULL, ' SKM, MARS', '14312', '34', '364312', NULL),
(130, '197110222006041000', 'Budi Rahayu', NULL, ' SE', '16132', '33', '366132', NULL),
(131, '197110291993122000', 'Zuraini., S.Si., M.Ec', NULL, NULL, '17320', '42', '367320', NULL),
(132, '197110312006042000', 'Diana Sista Dewi ', 'drg.', 'MBA', '14310', '41', '364310', NULL),
(133, '197112282002122000', 'Endang Susilowati', NULL, NULL, '30727', '24', '367211', NULL),
(134, '197204022008011000', 'Sorni Paskah Daeli', 'Dr.', 'M.Si', '11240', '41', '361240', NULL),
(135, '197209062002121000', 'Sukardi', NULL, NULL, '30605', '24', '368132', NULL),
(136, '197302112002121000', 'Subandi', NULL, NULL, '30607', '23', '361321', NULL),
(137, '197302171996032000', 'Wiji Lestari', NULL, 'A.Md', '11331', '33', '361331', NULL),
(138, '197304272002121000', 'Nurhasan', NULL, NULL, '30605', '24', '368132', NULL),
(139, '197305052002121000', 'Sanin ', NULL, NULL, '30716', '22', '361321', NULL),
(140, '197305201995032000', 'Muliyanti', NULL, NULL, '30714', '32', '361323', NULL),
(141, '197306061993011000', 'Moch. Arrozi', NULL, 'A.Md', '11343', '34', '361343', NULL),
(142, '197306101994032000', 'Siti Nurnaningsih ', NULL, NULL, '14132', '33', '364132', NULL),
(143, '197307042001122000', 'Susi Nelitasari', NULL, 'SE', '15212', '34', '365212', NULL),
(144, '197307072002121000', 'Mohamad Saifudin', NULL, NULL, '30605', '24', '366131', NULL),
(145, '197310052002121000', 'Saiful Hawawi', NULL, 'S.AP', '15211', '33', '365211', NULL),
(146, '197312152003121000', 'Yongky Suryanto S', NULL, 'S.Sos, M.Si      ', '17130', '41', '367130', NULL),
(147, '197402051998032000', 'Siti Nurhayati', NULL, 'SH', '13420', '41', '363420', NULL),
(148, '197404072007011000', 'Aji Ibrahim Nasution', NULL, 'S.Sos, M.M.   ', '14212', '33', '364212', NULL),
(149, '197404152006042000', 'Wahyuni Aristyanti', NULL, 'S.KM', '14421', '34', '364421', NULL),
(150, '197404282002121000', 'Ricky Radius Siregar', NULL, 'S.Sos, MAP   ', '11510', '41', '361510', NULL),
(151, '197407211993111000', 'Totok Hendratmoko', NULL, ' AP, MBA     ', '12211', '41', '362211', NULL),
(152, '197410142002121000', 'Hotman Gayus', '', 'SE., M.Si', '18210', '41', '368210', NULL),
(153, '197501062002121000', 'Ahmad', NULL, 'S.T, M.Si', '13110', '41', '363110', NULL),
(154, '197501161994031000', 'Hotman Irwandy Sihite', 'Drs.', ' M.Si    ', '12310', '41', '362310', NULL),
(155, '197502192002121000', 'Danang Ariwibowo I', NULL, 'S.IP', '11230', '34', '361230', NULL),
(156, '197503262006041000', 'Andri Suharyadi Kurniawan', NULL, 'SE, M.T  ', NULL, '34', '368000', NULL),
(157, '197503292008011000', 'Firman Trisasongko', NULL, 'S.Kom', '30728', '33', '361221', NULL),
(158, '197504182006041000', 'Barry Kuspriyadi', NULL, 'A.Md', '30703', '31', '361211', NULL),
(159, '197505282002121000', 'Hendriyanto', NULL, 'SE', '15510', '41', '365510', NULL),
(160, '197506192006041000', 'Nugroho Nono Arwendio', NULL, 'S.Sos', '18421', '34', '368421', NULL),
(161, '197506232008011000', ' Rony Bintoro Marojahan Gurning', NULL, 'S.Kom, M.T.I      ', '11221', '33', '361221', NULL),
(162, '197507052008111000', 'Yupi Hendriansah', NULL, 'S.Kom', '16131', '32', '366131', NULL),
(163, '197507062002121000', 'Taufik Hidayat ', NULL, NULL, '30613', '24', '361343', NULL),
(164, '197507232002121000', 'Didi', NULL, NULL, '30501', '14', '361401', NULL),
(165, '197507292003121000', 'Ginda Arthur', NULL, 'SE, MBA', '13221', '34', '363221', NULL),
(166, '197508102007012000', 'Sri Martini', '', 'S.K.M., M.K.M', '14112', '32', '364112', NULL),
(167, '197508172002121000', 'Sopian Hadi', NULL, NULL, '30605', '24', '365132', NULL),
(168, '197508252002121000', 'Choirul Abdi', NULL, 'S.AP', '30701', '32', '361231', NULL),
(169, '197509092006041000', 'Agus Priyanto', NULL, NULL, '30609', '23', '361331', NULL),
(170, '197509112009101000', 'Aziz Zulfikar', NULL, 'SE', '30725', '31', '363222', NULL),
(171, '197509141996122000', 'Erlia Rahmawati', NULL, ' S.Si, MAB', '13420', '34', '363410', NULL),
(172, '197509221998031000', 'Jefri Indrawanto ', NULL, NULL, '30702', '31', '361243', NULL),
(173, '197510182001122000', 'Ratna Sofiana Lestari', NULL, 'S.Pi, M.Si', '15120', '41', '365120', NULL),
(174, '197511032002122000', 'Wiwin Setyaningrum', NULL, NULL, '30605', '24', '362132', NULL),
(175, '197511192002122000', 'Endrianti  Dewi Poerwitasari', NULL, 'SE', '17210', '34', '367210', NULL),
(176, '197512122007011000', 'Asmunih', NULL, NULL, '30505', '23', '365132', NULL),
(177, '197512261997032000', 'Ayu Dewita', NULL, 'S.Sos, MAB ', '16210', '41', '366210', NULL),
(178, '197601202002121000', 'Hendri Jupiter', NULL, 'S.Pt, MAP, MPP', '15132', '34', '365132', NULL),
(179, '197602021997031000', 'Dadang Iskandar', NULL, 'S.Sos', '11312', '33', '361312', NULL),
(180, '197605132010122000', 'Wulansari Handayani', NULL, 'SS', '11242', '33', '361242', NULL),
(181, '197605252006041000', 'Narip', NULL, 'SAP', '30721', '31', '361342', NULL),
(182, '197606071996021000', 'Imam Pasli., S.STP., M.Si', NULL, NULL, '14400', '42', '364400', NULL),
(183, '197606172002121000', 'Rohim Ibrahim ', NULL, NULL, '30504', '22', '361342', NULL),
(184, '197606272002121000', 'Muhammad Talchis  ', NULL, NULL, '30507', '24', '361343', NULL),
(185, '197608312002122000', 'Widya Agustini Munggaran', '', 'S. Kep., M.K.M', '14311', '34', '364311', NULL),
(186, '197609012005012000', 'Silvanie Leane Christy Tompodung ', 'dr.', NULL, '17410', '34', '367410', NULL),
(187, '197609132003121000', 'Aziz Syafiuddin', NULL, 'S.Sos, M.Si', '15521', '34', '365521', NULL),
(188, '197610062006042000', 'R A Syuri Hatiasari', NULL, 'S.IP', '13421', '34', '363421', NULL),
(189, '197610062010121000', 'Ahmad Afandi', NULL, 'SE', '13412', '33', '363412', NULL),
(190, '197611042006042000', 'Novita Sara Kusuma', NULL, 'SH', '18132', '34', '368132', NULL),
(191, '197611102010011000', 'Zeinnuri Adlan Rusmin', NULL, 'S.E.', '17121', '33', '367121', NULL),
(192, '197612202001122000', 'Miranda Mindamora', NULL, 'S.AP', '17132', '33', '367132', NULL),
(193, '197703262006041000', 'Sutikno', NULL, 'SE', NULL, '34', '368000', NULL),
(194, '197705102005012000', 'Anggariyani Kurniasih', NULL, 'A.Md', '11323', '33', '361323', NULL),
(195, '197706291995111000', 'Yasrif', NULL, 'S.STP, M.Si        ', '12110', '41', '362110', NULL),
(196, '197711032006042000', 'Nurlianti', NULL, 'A.Md', '30714', '31', '361313', NULL),
(197, '197711082002121000', 'Mohamad Armansyah', '', 'S.T', '18121', '34', '368121', NULL),
(198, '197711262009032000', 'Dini Utami', NULL, 'SE', '18211', '33', '368211', NULL),
(199, '197712092002121000', 'Yugo Dermawanto  ', NULL, NULL, '30605', '24', '366132', NULL),
(200, '197712142009011000', 'Anang Setiawan', NULL, 'S.T, M.A.P ', '15321', '33', '365321', NULL),
(201, '197712212006042000', 'Ayyu Kencanasari', NULL, 'SE', '11131', '34', '361131', NULL),
(202, '197801022009011000', 'Abu Nasir', NULL, 'S.Ag, M.Pd.I', '15411', '33', '365411', NULL),
(203, '197802021999121000', 'Tri Haryanto', NULL, 'S.ST', '11122', '34', '361122', NULL),
(204, '197802172002121000', 'Katiman', NULL, 'SE, MPP, MPA    ', NULL, '41', '368200', NULL),
(205, '197806241998032000', 'Rini Rahmawati', NULL, NULL, '30726', '31', '367131', NULL),
(206, '197807072000121000', 'Arif Maelan Khasani', NULL, 'SST., M.Si             ', '16220', '41', '366220', NULL),
(207, '197807162002121000', 'Sutisna', NULL, NULL, '30503', '14', '361321', NULL),
(208, '197807181997011000', 'Ma''fud Salatunlayl', NULL, 'S.STP, M.Si   ', '12420', '41', '362420', NULL),
(209, '197808152007011000', 'Ruslan Pasa ', NULL, NULL, '30506', '23', '361313', NULL),
(210, '197809022002122000', 'Linda Restaningrum', NULL, 'SE, M.I.Kom', '15320', '41', '365320', NULL),
(211, '197809292009011000', 'Hidayat, SKM  ', NULL, NULL, '30723', '31', '362122', NULL),
(212, '197810172010121000', 'Anang Suryana', '', 'S.Kom', '14131', '32', '364131', NULL),
(213, '197901132009122000', 'Anitha', NULL, 'S.Sos', '11142', '33', '361142', NULL),
(214, '197901222007011000', 'Suparno', NULL, NULL, '30601', '23', '361112', NULL),
(215, '197902172006042000', 'Luh Made Ayu CP', NULL, 'S.Kom, MM       ', '13211', '34', '363211', NULL),
(216, '197902282009121000', 'Acil Lismara', NULL, 'A.Md', '30605', '24', '363132', NULL),
(217, '197904301998101000', 'Melkianus Kebos', '', 'S.STP., MT', '18220', '34', '368220', NULL),
(218, '197906092006042000', 'Dewi Supalah', NULL, 'SE', '15421', '32', '365421', NULL),
(219, '197907202006041000', 'Fernando Haposan', NULL, ' S.T.', '30724', '31', '362211', NULL),
(220, '197907212002121000', 'Sachran Saputra', NULL, ' SE, MAP      ', '12210', '41', '362210', NULL),
(221, '197909052002121000', 'Eko Sudarmawan', NULL, NULL, '30605', '24', '361312', NULL),
(222, '197909102006041000', 'Subkhan Awaludin', NULL, 'S.Kom ', '16212', '33', '366212', NULL),
(223, '197910172014081000', 'Oktovianus Homer', NULL, 'SE', '30844', '31', '366221', NULL),
(224, '197911272006041000', 'Dian Novico', NULL, 'S.Kom', '11233', '34', '361233', NULL),
(225, '197912042014031000', 'Andriawan Syahriar', NULL, 'SE', '30825', '31', '361542', NULL),
(226, '198002092010121000', 'Assahinur', NULL, 'SE', '30848', '32', '367421', NULL),
(227, '198003072008012000', 'Marina Wulandari', NULL, 'A.Md', '20204', '31', '361323', NULL),
(228, '198003102006041000', 'M. Yusuf Asnani', NULL, 'S.Kom', '11341', '33', '361341', NULL),
(229, '198003312015011000', 'Wowo Birowo', NULL, 'A.Md', '30704', '23', '361221', NULL),
(230, '198004142006042000', 'Karlita Diah Astari Dewi', NULL, 'SE', '11121', '34', '361121', NULL),
(231, '198004182008101000', 'Puji Wahyugiono', NULL, 'S.Si', '11213', '33', '361213', NULL),
(232, '198004242006042000', 'Amalia Tri Saraswati', NULL, 'S.Psi', '17211', '34', '367211', NULL),
(233, '198005222009012000', 'Trias Kus Pujiastuti', NULL, 'A.Md', '30610', '24', '361343', NULL),
(234, '198005222010121000', 'Elfraim Dunov Rumabutar', '', 'S.T., M.Si', '18221', '32', '368221', NULL),
(235, '198006192006041000', 'Suhariadi', '', 'S.Si', '13222', '32', '363222', NULL),
(236, '198006272007011000', 'Rafiqi, ZA ', NULL, NULL, '30709', '23', '361315', NULL),
(237, '198007042011011000', 'Hamzah Purwanto', NULL, 'ST', '30707', '32', '361314', NULL),
(238, '198007142009121000', 'Juli Ertanto ', NULL, NULL, '30502', '23', '361312', NULL),
(239, '198007312007012000', 'Wiwiek Setiowati', NULL, 'S.AP ', '13131', '33', '363131', NULL),
(240, '198008152010121000', 'Agus Nendang', NULL, 'ST', '30823', '32', '361511', NULL),
(241, '198011152006041000', 'Heri Nugroho', NULL, 'SE', '11111', '34', '361111', NULL),
(242, '198012132011012000', 'Suci Rohdiyati', NULL, 'S.Psi', '17322', '33', '367322', NULL),
(243, '198101182014031000', 'Andre Lesmana', NULL, 'ST', '30808', '31', '361222', NULL),
(244, '198102222002121000', 'Ahmad Furqon', NULL, 'S.Sos , M.Pd              ', '11342', '33', '361342', NULL),
(245, '198103312006042000', 'Dewi Mai Linda', NULL, 'SH', '11531', '34', '361531', NULL),
(246, '198104112006041000', 'Achmad Gunawan', NULL, 'SAN., M.Si       ', '16111', '34', '366111', NULL),
(247, '198105252002122000', 'Isti Setyari', NULL, NULL, '30605', '23', '368132', NULL),
(248, '198106201999121000', 'La Ode Muhamad Talib', '', 'S.STP', '13322', '34', '363322', NULL),
(249, '198106252008101000', 'Saifullah Asad El Bihar', NULL, 'S.Kom    ', '16121', '33', '366121', NULL),
(250, '198109052010121000', 'Muhammad Ivan', NULL, 'S.Pd, M.Si', '15111', '33', '365111', NULL),
(251, '198109092009011000', 'Ferdiansyah', NULL, 'S.Kom, M.T. ', '11222', '33', '361222', NULL),
(252, '198201082015011000', 'Maulana Adhi Kurniawan', NULL, 'S.Si', '20104', '31', '361401', NULL),
(253, '198203162015012000', 'Anik Sri Widarti', NULL, 'A.Md', '30710', '23', '361311', NULL),
(254, '198204242003121000', 'Syahreza', NULL, NULL, '30616', '23', '365521', NULL),
(255, '198205032005022000', 'Merry Efriana', NULL, 'S.E, M.M.', '18321', '33', '368321', NULL),
(256, '198207142005021000', 'Nur Rachmad Widodo', NULL, 'SST, MPS.Sp ', '11522', '34', '361522', NULL),
(257, '198207252002121000', 'Guntoro Yulianto', NULL, NULL, '30615', '24', '363131', NULL),
(258, '198208262006041000', 'Agustinus Budi Pramono', NULL, 'SE, M.Si', '15121', '33', '365121', NULL),
(259, '198209062008012000', 'Rini Septiyanti', NULL, 'SS., M.Si   ', '11243', '33', '361243', NULL),
(260, '198209142008121000', 'Dedy Siswoyo Setiawan', NULL, 'ST, MM   ', '11322', '33', '361322', NULL),
(261, '198210152010121000', 'Rossi Agung Pramudyo', NULL, ' S.T      ', '12131', '33', '362131', NULL),
(262, '198303242008081000', 'Taufik Rakhman', NULL, 'S.Sos', '11132', '33', '361132', NULL),
(263, '198303272006041000', 'Maulana Firmansyah', NULL, NULL, '30614', '23', '361401', NULL),
(264, '198304122015011000', 'Fuad Rokhman', NULL, 'A.Md', '30720', '23', '361333', NULL),
(265, '198306112008011000', 'Yuhendra', NULL, 'SE, MAB   ', '13121', '33', '363121', NULL),
(266, '198306162006041000', 'Dwi Haryono', NULL, 'S.Sos', '15131', '32', '365131', NULL),
(267, '198309292009011000', 'Fiki Ikrom Ibrahim', NULL, 'SE, M.Ak              ', '11332', '33', '361332', NULL),
(268, '198310132008101000', 'Achmad Soleh', NULL, 'S.Kom', '11231', '33', '361231', NULL),
(269, '198310252014032000', 'Nurheri Yuningsih', NULL, 'S.IP', '30851', '31', '366211', NULL),
(270, '198311212014031000', 'Harod Rahmad Novandi', NULL, 'S.Sos', '30845', '31', '366211', NULL),
(271, '198401162006042000', 'Ari Wulan Sari', '', 'S.K.M., MPH', '14211', '33', '364211', NULL),
(272, '198402182015012000', 'Marisa Ferdiansari', NULL, 'S.T', '30836', '31', '363121', NULL),
(273, '198402202014031000', 'Freidhian Ichtianto', NULL, 'SE', '30852', '31', '366222', NULL),
(274, '198403092009121000', 'Tri  Nugroho Herusanto', NULL, 'SH', '11212', '33', '361212', NULL),
(275, '198403202009012000', 'Heidy Ardhiastari', NULL, 'SE, M.M  ', '11113', '33', '361113', NULL),
(276, '198406132010122000', 'Rahma Putriani', NULL, 'A.Md', '30717', '24', '361332', NULL),
(277, '198406172014031000', 'Nuzuludin', NULL, 'S.Kom', '30827', '31', '361543', NULL),
(278, '198407242006042000', 'Tustyn Wahyuny', NULL, 'SAP         ', '30605', '31', '362122', NULL),
(279, '198407312010121000', 'Lucky Kristiawan', NULL, 'SE', '20103', '33', '361401', NULL),
(280, '198408312009011000', 'Indra Prasetya Adi Nugroho', NULL, 'S.IP, MA', '11314', '33', '361314', NULL),
(281, '198409042008011000', 'Rizki Sisindra', NULL, 'SE, M.Sc', '18111', '33', '368111', NULL),
(282, '198410272010122000', 'Ihti Oktarina', NULL, 'S.Sn', '11232', '33', '361232', NULL),
(283, '198501042009121000', 'Alin Wahyu Purnomo', NULL, 'A.Md', '30729', '24', '361322', NULL),
(284, '198502282009012000', 'Handayani', NULL, 'SE. MAP', '30818', '31', '361331', NULL),
(285, '198503072009122000', 'Marrysa Nurina Derec', NULL, ' S.Pi ', '30713', '32', '361313', NULL),
(286, '198503092014031000', 'Setio Aribowo', NULL, 'ST', '30821', '31', '361343', NULL),
(287, '198503142009012000', 'Nur  Kusmiati', NULL, 'S.Si', '11112', '33', '361112', NULL),
(288, '198503202008012000', 'Mareta Pratiwi', NULL, 'SS   ', '30801', '33', '361141', NULL),
(289, '198504092010122000', 'Indah Sukmawati  Manti Putri', NULL, 'SKM    ', '30838', '32', '364112', NULL),
(290, '198504262009121000', 'Rama Prima Syahti Fauzi', 'drh.', 'M.Si', '14221', '34', '364221', NULL),
(291, '198505112010122000', 'Ina Nurnina', NULL, 'S.E.', '11311', '33', '361311', NULL),
(292, '198505202009032000', 'Fika Handayani', NULL, 'SKM', '30708', '32', '361311', NULL),
(293, '198506072009121000', 'Rudi Hermawan', NULL, 'SE', '30850', '32', '368211', NULL),
(294, '198506182009122000', 'Laili Nur Azizah', NULL, 'A.Md', '30611', '24', '361341', NULL),
(295, '198507062009121000', 'Hyxsos Halomoan', NULL, 'SE', '11241', '33', '361241', NULL),
(296, '198507072015011000', 'Henri Dwi Yulianto', NULL, 'S.E', '30834', '31', '362422', NULL),
(297, '198507232015011000', 'Ibrahim Amirrudin Soleh', NULL, 'S.E', '30804', '31', '361142', NULL),
(298, '198508182008012000', 'Ratna Fia Agustina', NULL, 'A.Md', '30717', '31', '361332', NULL),
(299, '198508292010122000', 'Zulfa Ruhama', NULL, 'S.IP', '30802', '32', '361122', NULL),
(300, '198510082008121000', 'Fajar Fermi Taruna', '', 'SE., M.Si', '13212', '32', '363212', NULL),
(301, '198510122015012000', 'Dewi Norma Utami', NULL, 'S.S', '30842', '31', '365222', NULL),
(302, '198510252015012000', 'Rian Novalia Sumantri', NULL, 'S.Si ', '30839', '31', '364322', NULL),
(303, '198511222009122000', 'Maria Mau Sari', NULL, 'S.T', '18130', '33', '368131', NULL),
(304, '198601202009122000', 'Aria Setia Ningrum', NULL, 'S.Pd', '15311', '33', '365311', NULL),
(305, '198602242015012000', 'Retno Widiyarsih', NULL, 'A.Md', '30717', '23', '361332', NULL),
(306, '198603132015062000', 'Anike Hermalina Imbab', NULL, 'SH', '30811', '31', '361211', NULL),
(307, '198605012014031000', 'Windy Pratama', NULL, 'SH', '30829', '31', '361512', NULL),
(308, '198605022009012000', 'Vivi  Ratnawati', NULL, 'S.E.', '30717', '31', '361332', NULL),
(309, '198605152009121000', 'Suryanuddin', NULL, 'S.Sos, MKP  ', '12321', '33', '362321', NULL),
(310, '198605172008012000', 'Elrika Rosanti', NULL, 'SH, MH ', '11211', '33', '361211', NULL),
(311, '198607042009011000', 'Andi Yulianto  ', NULL, 'A.Md', '30612', '24', '361343', NULL),
(312, '198607102009042000', 'Yusnita Ibrahim', NULL, 'A.Md', '30602', '24', '361315', NULL),
(313, '198607292014032000', 'Putri Wijayanti', NULL, 'S.Sos', '30832', '31', '361511', NULL),
(314, '198608122009122000', 'Hestiana Endriantari W', NULL, 'SE', '17411', '33', '367411', NULL),
(315, '198609282015011000', 'Marcelino Vincentius Poluakan', NULL, ' S.S', '30841', '31', '365421', NULL),
(316, '198610082009122000', 'Citra Nirmala Utami', NULL, 'S.Psi', '17131', '33', '367131', NULL),
(317, '198610202010122000', 'Yoshita Octiasari', NULL, 'A.Md', '30605', '24', '367132', NULL),
(318, '198610252009122000', 'Esti Yusnita', NULL, 'A.Md', '30605', '24', '363132', NULL),
(319, '198611152009121000', 'Fery Ferdiansyah', NULL, 'SE', '13321', '32', '363321', NULL),
(320, '198701032010122000', 'Anies Kristianita Dwihening', NULL, 'SE', '11401', '33', '361401', NULL),
(321, '198704012010121000', 'Nugroho', NULL, 'S.Sos,M.Sc.', '18222', '33', '368222', NULL),
(322, '198706052015011000', 'Sigit Utomo', NULL, 'A.Md', '30719', '23', '361331', NULL),
(323, '198706202010122000', 'Titisari Ramandini', NULL, 'S.E, M.E', '15221', '33', '365221', NULL),
(324, '198706222014032000', 'Miranti Putri Prihantika', NULL, 'SH', '30828', '31', '361521', NULL),
(325, '198707302015012000', 'Linasari Putri Bangun ', NULL, 'S.T', '30833', '31', '362112', NULL),
(326, '198708012007011000', 'Angga Jaya Pratama', '', 'S.IP., M.AP', '13311', '32', '363311', NULL),
(327, '198708102010122000', 'Mariska', NULL, 'A.Md', '30718', '24', '361333', NULL),
(328, '198708182009122000', 'Hikmah Rafika Mufti', NULL, 'S.Hum', '16321', '33', '366321', NULL),
(329, '198709042014031000', 'Maulana Tanjung Widagdo', NULL, 'SH', '30807', '31', '361211', NULL),
(330, '198710272015012000', 'Nuraminah', NULL, 'A.Md', '30717', '23', '361332', NULL),
(331, '198802132015012000', 'Yessy Intan Cristyna', NULL, 'S.M', '30817', '31', '361322', NULL),
(332, '198802202015011000', 'Hernowo Febry Noerhadi', NULL, 'S.E', '30846', '31', '366222', NULL),
(333, '198804032014032000', 'Adinda Nusantari', NULL, ' S.I.Kom', '30809', '31', '361242', NULL),
(334, '198804242009012000', 'Yossi Apriliana', NULL, 'SE. M.AP  ', '30826', '31', '366131', NULL),
(335, '198805062010122000', 'Mahestu Kurnia Putri', NULL, 'S.Hum', NULL, '32', '368000', NULL),
(336, '198805072015011000', 'Fajar Widyanto', NULL, 'A.Md', '30712', '23', '361314', NULL),
(337, '198807102015012000', 'Yulnita Rato Tambe', NULL, 'S.H', '30835', '31', '363322', NULL),
(338, '198807122014032000', 'Citra Yuliyanti ', 'drg.', NULL, '30824', '32', '361541', NULL),
(339, '198807202010012000', 'Nisya Yuliana Hidayat', NULL, 'S.IP', '30805', '32', '361213', NULL),
(340, '198809142014032000', 'Reny Putri Septiawati', NULL, 'S.Hum', '30826', '31', '361513', NULL),
(341, '198901122015011000', 'Januar Nurcahyo', NULL, 'S.Pd', '30840', '31', '365111', NULL),
(342, '198903272015011000', 'Ika Rudi Mahendra', NULL, 'S.Si', '30847', '31', '366411', NULL),
(343, '198904012015011000', 'Muhammad Ilham Mardjuki', NULL, 'S.K.M', '30843', '31', '366212', NULL),
(344, '198904142015011000', 'Ricki Hendriyana', NULL, 'A.Md', '30705', '23', '361233', NULL),
(345, '198905162014031000', 'Javan Herdamang Pajrin', NULL, 'SE', '30803', '31', '361112', NULL),
(346, '198906132015011000', 'Pittus Magitya', NULL, 'S.T', '30810', '31', '361241', NULL),
(347, '198908102014032000', 'Melinda Paramitha Kusuma Dewi', NULL, 'SH', '30853', '31', '361532', NULL),
(348, '198908262015011000', 'Dwi Prasetya Anindito', NULL, 'A.Md', '30706', '23', '361231', NULL),
(349, '198912052015011000', 'Maulana Malik Ibrahim', NULL, 'A.Md', '30722', '23', '361343', NULL),
(350, '199003192014032000', 'Olivia Christine Pangaribuan', NULL, 'S.I.Kom', '30806', '31', '361231', NULL),
(351, '199007042015041000', 'Achmad Budi Santoso', NULL, 'S.Sos', '30837', '31', '363412', NULL),
(352, '199007082014032000', 'Farida Muryani', NULL, 'S.ST', '30819', '31', '361333', NULL),
(353, '199007222015011000', 'Bayu Priyo Jatmiko', NULL, 'S.Kom', '30846', '31', '366222', NULL),
(354, '199008132014032000', 'Dwi Janatun Rahayu', NULL, 'SKM', '30830', '31', '361531', NULL),
(355, '199008142015012000', 'Sensia Gibsi Ompusunggu', NULL, 'S.P', '20104', '31', '361401', NULL),
(356, '199011172014032000', 'Wenny Kartika Ayuningtyas', NULL, 'SKM', '30831', '31', '361541', NULL),
(357, '199103232015012000', 'Puspita Thoimatunnisaa', NULL, 'S.H', '30849', '31', '367311', NULL),
(358, '199103312015011000', 'Abdul Aziz', NULL, 'A.Md', '30711', '23', '361311', NULL),
(359, '199107122015012000', 'Nursyifa Az Zahra', NULL, 'S.Psi', '30848', '31', '367421', NULL),
(360, '199108052014031000', 'Alfian Nur Ahmad', NULL, 'S.IP', '30843', '31', '366212', NULL),
(361, '199110202015012000', 'Holy Glora Saragie Sijabat', NULL, 'S.Psi', '30844', '31', '366221', NULL),
(362, '199208252015012000', 'Inka Nafisha Ummuhani', NULL, 'A.Md', '30717', '23', '361332', NULL),
(363, '2016001', 'Puan Maharani', NULL, NULL, '10000', NULL, '360000', NULL),
(364, '2016002', 'Masmun Yan Manggesa', 'Mars.Muda TNI (Purn)', 'S.E, M.B.A.', '12000', NULL, '362000', NULL),
(365, '2016003', 'Sonny Harry Budiutomo Harmadi', 'Dr.', 'S.E, M.E', '19500', NULL, '369500', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_gaji`
--
ALTER TABLE `data_gaji`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `data_pegawai`
--
ALTER TABLE `data_pegawai`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `gaji_pegawai`
--
ALTER TABLE `gaji_pegawai`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`nip`),
  ADD KEY `fk_jabatan_kode_jabatan` (`kode_jabatan`),
  ADD KEY `fk_golongan_kode_golongan` (`kode_golongan`),
  ADD KEY `fk_unit_kode_unit` (`kode_unit`),
  ADD KEY `fk_nip_atasan` (`nip_atasan`),
  ADD KEY `nopeg` (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_gaji`
--
ALTER TABLE `data_gaji`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gaji_pegawai`
--
ALTER TABLE `gaji_pegawai`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=366;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
