-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 17 Des 2017 pada 02.05
-- Versi Server: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbproject_skp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `aktivitas`
--

CREATE TABLE `aktivitas` (
  `id_aktivitas` varchar(255) NOT NULL,
  `tgl` date NOT NULL,
  `nib` varchar(255) NOT NULL,
  `nama_aktivitas` text NOT NULL,
  `hasil` text NOT NULL,
  `commit` tinyint(1) NOT NULL,
  `approv` double NOT NULL,
  `durasi_aktivitas` double NOT NULL,
  `id_dtl_skp` varchar(255) DEFAULT NULL,
  `nip` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8_swedish_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_swedish_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('34j2nrqjuasu6nb4v397076cdpnlui6h', '::1', 1485939134, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438353933393133343b),
('38ludj311p5qtuqq6aeb5k077mh44a4h', '::1', 1486455247, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438363435353234373b),
('5ui7gk8annl6rvvbpgninp1pqpaefc3c', '::1', 1486355921, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438363335353732363b),
('6smge2onnsm8anr192kea6lnt6h4kbsa', '::1', 1486443087, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438363434333036383b69647c733a313a2231223b757365726e616d657c733a353a2261646d696e223b6c6576656c7c733a313a2230223b706c6174666f726d7c733a31303a2257696e646f7773203130223b62726f777365727c733a31323a2246697265666f782035312e30223b6c6f676765645f696e7c623a313b),
('7m49pv69joee7rm9d9cidvvru950f8h4', '::1', 1488530263, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438383533303234313b69647c733a313a2231223b757365726e616d657c733a353a2261646d696e223b6c6576656c7c733a313a2230223b706c6174666f726d7c733a31303a2257696e646f7773203130223b62726f777365727c733a31323a2246697265666f782035312e30223b6c6f676765645f696e7c623a313b),
('7nm6gb7a3sv511cc4hqeodl61m96das6', '::1', 1485849883, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438353834393838333b),
('8a51c95e1519170e3de5414059af8333e629cedc', '::1', 1485149103, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438353134393130333b),
('bcef6aqpq8t86l3j1vjq6dpprtosvr5s', '::1', 1486017499, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438363031373436393b69647c733a313a2231223b757365726e616d657c733a353a2261646d696e223b6c6576656c7c733a313a2230223b706c6174666f726d7c733a31303a2257696e646f7773203130223b62726f777365727c733a31323a2246697265666f782035312e30223b6c6f676765645f696e7c623a313b),
('fd0j7lipc7mvg2dfh965brtvpbftuamn', '::1', 1486085881, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438363038353838313b),
('ffrpfnst3a720h803t0fo6nf5ritcfk7', '::1', 1486626529, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438363632363532353b),
('kt0jcrc3vlpopiji4g0bbob99ev2ogv9', '::1', 1486697791, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438363639373739313b),
('m3ria0n0oi19uqv5ade4ehf8vnk6ni58', '::1', 1485941065, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438353934313036353b),
('q28saeaef3kqgsmlqj87vobd9b03k596', '::1', 1486373130, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438363337333038313b69647c733a313a2231223b757365726e616d657c733a353a2261646d696e223b6c6576656c7c733a313a2230223b706c6174666f726d7c733a31303a2257696e646f7773203130223b62726f777365727c733a31323a2246697265666f782035312e30223b6c6f676765645f696e7c623a313b),
('ttdvssd46ah4ko5kk5hs4vqb685nu5bc', '::1', 1486393206, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438363339333037383b);

-- --------------------------------------------------------

--
-- Struktur dari tabel `disiplin`
--

CREATE TABLE `disiplin` (
  `nilai_item_disiplin` varchar(255) NOT NULL,
  `uraian_item_disiplin` varchar(255) NOT NULL,
  `unsur_item_disiplin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dtl_skp`
--

CREATE TABLE `dtl_skp` (
  `id_dtl_skp` varchar(255) NOT NULL,
  `ak_target` double NOT NULL DEFAULT '0',
  `jumlah_target` double NOT NULL DEFAULT '0',
  `satuan_jumlah` varchar(255) NOT NULL DEFAULT '0',
  `kualitas_target` int(11) NOT NULL DEFAULT '0',
  `waktu_target` double NOT NULL DEFAULT '0',
  `satuan_waktu` varchar(255) NOT NULL DEFAULT '0',
  `biaya_target` double NOT NULL DEFAULT '0',
  `is_budget_used` tinyint(1) NOT NULL DEFAULT '0',
  `ak_real` double NOT NULL DEFAULT '0',
  `jumlah_real` double NOT NULL DEFAULT '0',
  `kualitas_real` int(11) NOT NULL DEFAULT '0',
  `waktu_real` double NOT NULL DEFAULT '0',
  `biaya_real` double NOT NULL DEFAULT '0',
  `id_if` int(11) NOT NULL DEFAULT '0',
  `no_urut` int(11) NOT NULL DEFAULT '0',
  `ak_real_awal` double NOT NULL DEFAULT '0',
  `kualitas_real_awal` double NOT NULL DEFAULT '0',
  `waktu_real_awal` double NOT NULL DEFAULT '0',
  `biaya_real_awal` double NOT NULL DEFAULT '0',
  `status_real_awal` varchar(255) NOT NULL DEFAULT '0',
  `tgl_real_awal` date NOT NULL DEFAULT '0000-00-00',
  `id_skp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `enselon`
--

CREATE TABLE `enselon` (
  `kode_enselon` varchar(255) NOT NULL,
  `nama_enselon` varchar(255) NOT NULL,
  `min_gol` varchar(255) NOT NULL,
  `max_gol` varchar(255) NOT NULL,
  `kode_unit` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `enselon`
--

INSERT INTO `enselon` (`kode_enselon`, `nama_enselon`, `min_gol`, `max_gol`, `kode_unit`) VALUES
('0', 'Pj. Negara', '', '', NULL),
('11', 'I.a', '44', '30', NULL),
('12', 'I.b', '44', '30', NULL),
('21', 'II.a', '42', '30', NULL),
('22', 'II.b', '42', '30', NULL),
('31', 'III.a', '41', '30', NULL),
('32', 'III.b', '41', '30', NULL),
('41', 'IV.a', '32', '40', NULL),
('42', 'IV.b', '32', '40', NULL),
('51', 'V.a', '31', '', NULL),
('99', 'Staff', '0', '0', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `golongan`
--

CREATE TABLE `golongan` (
  `kode_golongan` varchar(255) NOT NULL,
  `nama_golongan` varchar(255) NOT NULL,
  `nama_pangkat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `golongan`
--

INSERT INTO `golongan` (`kode_golongan`, `nama_golongan`, `nama_pangkat`) VALUES
('11', 'I/a', 'Juru Muda'),
('12', 'I/b', 'Juru Muda Tk.I'),
('13', 'I/c', 'Juru'),
('14', 'I/d', 'Juru Tingkat I'),
('21', 'II/a', 'Pengatur Muda'),
('22', 'II/b', 'Pengatur Muda Tk.I'),
('23', 'II/c', 'Pengatur'),
('24', 'II/d', 'Pengatur Tk.I'),
('31', 'III/a', 'Penata Muda'),
('32', 'III/b', 'Penata Muda Tk.I'),
('33', 'III/c', 'Penata'),
('34', 'III/d', 'Penata Tk.I'),
('41', 'IV/a', 'Pembina'),
('42', 'IV/b', 'Pembina Tk.I'),
('43', 'IV/c', 'Pembina Utama Muda'),
('44', 'IV/d', 'Pembina Utama Madya'),
('45', 'IV/e', 'Pembina Utama');

-- --------------------------------------------------------

--
-- Struktur dari tabel `integritas`
--

CREATE TABLE `integritas` (
  `nilai_item_integritas` varchar(255) NOT NULL,
  `uraian_item_integritas` varchar(255) NOT NULL,
  `unsur_item_integritas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE `jabatan` (
  `kode_jabatan` varchar(255) NOT NULL,
  `nama_jabatan` varchar(255) NOT NULL,
  `kelas_jabatan` varchar(255) NOT NULL,
  `nilai_jabatan` varchar(255) NOT NULL,
  `tingkat_jabatan` varchar(255) DEFAULT NULL,
  `tingkat_pendidikan` varchar(255) DEFAULT NULL,
  `kode_unit` varchar(255) DEFAULT NULL,
  `kode_kelompok` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jabatan`
--

INSERT INTO `jabatan` (`kode_jabatan`, `nama_jabatan`, `kelas_jabatan`, `nilai_jabatan`, `tingkat_jabatan`, `tingkat_pendidikan`, `kode_unit`, `kode_kelompok`) VALUES
('10000', 'Menteri Koordinator Bidang Pembangunan Manusia dan Kebudayaan', '0', '0', '0', '0', NULL, '1'),
('11000', 'Sekretaris Kementerian Koordinator Bidang Pembangunan Manusia dan Kebudayaan', '0', '0', '0', '0', NULL, '1'),
('11100', 'Kepala Biro Perencanaan dan Kerjasama', '0', '0', '0', '0', NULL, '1'),
('11110', 'Kepala Bagian Perencanaan Program dan Anggaran', '0', '0', '0', '0', NULL, '1'),
('11111', 'Kepala Subbagian Penyusunan Program', '0', '0', '0', '0', NULL, '1'),
('11112', 'Kepala Subbagian Penyusunan Anggaran I', '0', '0', '0', '0', NULL, '1'),
('11113', 'Kepala Subbagian Penyusunan Anggaran II', '0', '0', '0', '0', NULL, '1'),
('11120', 'Kepala Bagian Kerjasama Luar Negeri', '0', '0', '0', '0', NULL, '1'),
('11121', 'Kepala Subbagian Kerjasama Bilateral dan Organisasi Internasional', '0', '0', '0', '0', NULL, '1'),
('11122', 'Kepala Subbagian Kerjasama Regional dan Multilateral', '0', '0', '0', '0', NULL, '1'),
('11130', 'Kepala Bagian Pengelolaan Kegiatan Strategis dan Kerjasama Antar Lembaga', '0', '0', '0', '0', NULL, '1'),
('11131', 'Kepala Subbagian Pengelolaan Kegiatan Strategis', '0', '0', '0', '0', NULL, '1'),
('11132', 'Kepala Subbagian Kerjasama Antar Lembaga', '0', '0', '0', '0', NULL, '1'),
('11140', 'Kepala Bagian Akuntabilitas Kinerja dan Pelaporan', '0', '0', '0', '0', NULL, '1'),
('11141', 'Kepala Subbagian Akuntabilitas Kinerja', '0', '0', '0', '0', NULL, '1'),
('11142', 'Kepala Subbagian Pelaporan', '0', '0', '0', '0', NULL, '1'),
('11200', 'Kepala Biro Hukum, Informasi dan Persidangan', '0', '0', '0', '0', NULL, '1'),
('11210', 'Kepala Bagian Hukum dan Organisasi', '0', '0', '0', '0', NULL, '1'),
('11211', 'Kepala Subbagian Penyusunan Peraturan Perundang-undangan', '0', '0', '0', '0', NULL, '1'),
('11212', 'Kepala Subbagian Advokasi Hukum', '0', '0', '0', '0', NULL, '1'),
('11213', 'Kepala Subbagian Organisasi dan Tatalaksana', '0', '0', '0', '0', NULL, '1'),
('11220', 'Kepala Bagian Sistem dan Teknologi Informasi', '0', '0', '0', '0', NULL, '1'),
('11221', 'Kepala Subbagian Sistem Informasi', '0', '0', '0', '0', NULL, '1'),
('11222', 'Kepala Subbagian Jaringan Informasi', '0', '0', '0', '0', NULL, '1'),
('11223', 'Kepala Subbagian Pendayagunaan Teknologi Informasi', '0', '0', '0', '0', NULL, '1'),
('11230', 'Kepala Bagian Hubungan Masyarakat dan Perpustakaan', '0', '0', '0', '0', NULL, '1'),
('11231', 'Kepala Subbagian Hubungan Masyarakat', '0', '0', '0', '0', NULL, '1'),
('11232', 'Kepala Subbagian Publikasi dan Dokumentasi', '0', '0', '0', '0', NULL, '1'),
('11233', 'Kepala Subbagian Perpustakaan', '0', '0', '0', '0', NULL, '1'),
('11240', 'Kepala Bagian Persidangan dan Pengelolaan Data', '0', '0', '0', '0', NULL, '1'),
('11241', 'Kepala Subbagian Penyusunan Bahan Persidangan', '0', '0', '0', '0', NULL, '1'),
('11242', 'Kepala Subbagian Penyusunan Hasil Persidangan', '0', '0', '0', '0', NULL, '1'),
('11243', 'Kepala Subbagian Pengelolaan Hasil Persidangan', '0', '0', '0', '0', NULL, '1'),
('11300', 'Kepala Biro Umum', '0', '0', '0', '0', NULL, '1'),
('11310', 'Kepala Bagian Tata Usaha Pimpinan dan Protokol', '0', '0', '0', '0', NULL, '1'),
('11311', 'Kepala Subbagian Tata Usaha Menteri Koordinator', '0', '0', '0', '0', NULL, '1'),
('11312', 'Kepala Subbagian Tata Usaha Sekretaris Kementerian Koordinator', '0', '0', '0', '0', NULL, '1'),
('11313', 'Kepala Subbagian Tata Usaha Staf Ahli', '0', '0', '0', '0', NULL, '1'),
('11314', 'Kepala Subbagian Protokol', '0', '0', '0', '0', NULL, '1'),
('11315', 'Kepala Subbagian Perjalanan Dinas', '0', '0', '0', '0', NULL, '1'),
('11320', 'Kepala Bagian Kepegawaian dan Kearsipan', '0', '0', '0', '0', NULL, '1'),
('11321', 'Kepala Subbagian Mutasi dan Data Kepegawaian', '0', '0', '0', '0', NULL, '1'),
('11322', 'Kepala Subbagian Pengembangan dan Seleksi', '0', '0', '0', '0', NULL, '1'),
('11323', 'Kepala Subbagian Kearsipan', '0', '0', '0', '0', NULL, '1'),
('11330', 'Kepala Bagian Keuangan', '0', '0', '0', '0', NULL, '1'),
('11331', 'Kepala Subbagian Perbendaharaan', '0', '0', '0', '0', NULL, '1'),
('11332', 'Kepala Subbagian Verifikasi', '0', '0', '0', '0', NULL, '1'),
('11333', 'Kepala Subbagian Akuntansi dan Pelaporan', '0', '0', '0', '0', NULL, '1'),
('11340', 'Kepala Bagian Rumah Tangga', '0', '0', '0', '0', NULL, '1'),
('11341', 'Kepala Subbagian Perlengkapan', '0', '0', '0', '0', NULL, '1'),
('11342', 'Kepala Subbagian Urusan Dalam', '0', '0', '0', '0', NULL, '1'),
('11343', 'Kepala Subbagian Inventaris dan Perawatan', '0', '0', '0', '0', NULL, '1'),
('11400', 'Inspektur', '0', '0', '0', '0', NULL, '1'),
('11401', 'Kepala Subbagian Tata Usaha Inspektorat', '0', '0', '0', '0', NULL, '1'),
('11500', 'Sekretaris Dewan Jaminan Sosial Nasional', '0', '0', '0', '0', NULL, '1'),
('11510', 'Kepala Bagian Umum', '0', '0', '0', '0', NULL, '1'),
('11511', 'Kepala Subbagian Perencanaan Program, Anggaran dan Pelaporan', '0', '0', '0', '0', NULL, '1'),
('11512', 'Kepala Subbagian Tata Usaha', '0', '0', '0', '0', NULL, '1'),
('11513', 'Kepala Subbagian Keuangan', '0', '0', '0', '0', NULL, '1'),
('11520', 'Kepala Bagian Hubungan Antarlembaga dan Partisipasi Masyarakat', '0', '0', '0', '0', NULL, '1'),
('11521', 'Kepala Subbagian Hubungan Antar Lembaga', '0', '0', '0', '0', NULL, '1'),
('11522', 'Kepala Subbagian Partisipasi Masyarakat', '0', '0', '0', '0', NULL, '1'),
('11530', 'Kepala Bagian Penyiapan Kebijakan Jaminan Sosial', '0', '0', '0', '0', NULL, '1'),
('11531', 'Kepala Subbagian Penyiapan Kebijakan Jaminan Sosial Kesehatan', '0', '0', '0', '0', NULL, '1'),
('11532', 'Kepala Subbagian Penyiapan Kebijakan Jaminan Sosial Ketenagakerjaan', '0', '0', '0', '0', NULL, '1'),
('11540', 'Kepala Bagian Penyiapan Monitoring dan Evaluasi Penyelenggaraan Jaminan Sosial', '0', '0', '0', '0', NULL, '1'),
('11541', 'Kepala Subbagian Penyiapan Monitoring dan Evaluasi Penyelenggaraan Jaminan Sosial Kesehatan', '0', '0', '0', '0', NULL, '1'),
('11542', 'Kepala Subbagian Penyiapan Monitoring dan Evaluasi Penyelenggaraan Jaminan Sosial Ketenagakerjaan', '0', '0', '0', '0', NULL, '1'),
('11543', 'Kepala Subbagian Data dan Informasi', '0', '0', '0', '0', NULL, '1'),
('11600', 'Sekretaris KORPRI', '0', '0', '0', '0', NULL, '1'),
('12000', 'Deputi Bidang Koordinasi Kerawanan Sosial dan Dampak Bencana', '0', '0', '0', '0', NULL, '1'),
('12100', 'Asisten Deputi Pengurangan Resiko Bencana', '0', '0', '0', '0', NULL, '1'),
('12110', 'Kepala Bidang Mitigasi', '0', '0', '0', '0', NULL, '1'),
('12111', 'Kepala Subbidang Peringatan Dini', '0', '0', '0', '0', NULL, '1'),
('12112', 'Kepala Subbidang Respon Dini', '0', '0', '0', '0', NULL, '1'),
('12120', 'Kepala Bidang Penguatan Kapasitas Masyarakat', '0', '0', '0', '0', NULL, '1'),
('12121', 'Kepala Subbidang Penguatan Kapasitas Kelembagaan', '0', '0', '0', '0', NULL, '1'),
('12122', 'Kepala Subbidang Penguatan Kesadaran Masyarakat', '0', '0', '0', '0', NULL, '1'),
('12130', 'Kepala Bidang Penguatan Kegiatan dan Tata Kelola', '0', '0', '0', '0', NULL, '1'),
('12131', 'Kepala Subbidang Penguatan Kegiatan', '0', '0', '0', '0', NULL, '1'),
('12132', 'Kepala Subbidang Tata Kelola', '0', '0', '0', '0', NULL, '1'),
('12200', 'Asisten Deputi Tanggap Cepat Bencana', '0', '0', '0', '0', NULL, '1'),
('12210', 'Kepala Bidang Penanganan Pengungsi', '0', '0', '0', '0', NULL, '1'),
('12211', 'Kepala Subbidang Penyelamatan dan Evakuasi', '0', '0', '0', '0', NULL, '1'),
('12212', 'Kepala Subbidang Penanganan Logistik', '0', '0', '0', '0', NULL, '1'),
('12220', 'Kepala Bidang Bantuan Darurat', '0', '0', '0', '0', NULL, '1'),
('12221', 'Kepala Subbidang Bantuan Pemerintah', '0', '0', '0', '0', NULL, '1'),
('12222', 'Kepala Subbidang Bantuan Non Pemerintah', '0', '0', '0', '0', NULL, '1'),
('12300', 'Asisten Deputi Penanganan Pasca Bencana', '0', '0', '0', '0', NULL, '1'),
('12310', 'Kepala Bidang Pemulihan', '0', '0', '0', '0', NULL, '1'),
('12311', 'Kepala Subbidang Rehabilitasi', '0', '0', '0', '0', NULL, '1'),
('12312', 'Kepala Subbidang Rekonstruksi', '0', '0', '0', '0', NULL, '1'),
('12320', 'Kepala Bidang Pemberdayaan Masyarakat', '0', '0', '0', '0', NULL, '1'),
('12321', 'Kepala Subbidang Pemberdayaan Ekonomi', '0', '0', '0', '0', NULL, '1'),
('12322', 'Kepala Subbidang Pemberdayaan Sosial', '0', '0', '0', '0', NULL, '1'),
('12400', 'Asisten Deputi Konflik Sosial', '0', '0', '0', '0', NULL, '1'),
('12410', 'Kepala Bidang Pencegahan Konflik Sosial', '0', '0', '0', '0', NULL, '1'),
('12411', 'Kepala Subbidang Pemetaan Konflik Sosial', '0', '0', '0', '0', NULL, '1'),
('12412', 'Kepala Subbidang Advokasi Konflik Sosial', '0', '0', '0', '0', NULL, '1'),
('12420', 'Kepala Bidang Pemulihan Pasca Konflik Sosial', '0', '0', '0', '0', NULL, '1'),
('12421', 'Kepala Subbidang Pemulihan Fisik', '0', '0', '0', '0', NULL, '1'),
('12422', 'Kepala Subbidang Pemulihan Masyarakat', '0', '0', '0', '0', NULL, '1'),
('13000', 'Deputi Bidang Koordinasi Penangulangan Kemiskinan dan Perlindungan Sosial', '0', '0', '0', '0', NULL, '1'),
('13100', 'Asisten Deputi Penanganan Kemiskinan', '0', '0', '0', '0', NULL, '1'),
('13110', 'Kepala Bidang Sinkronisasi Data Kemiskinan', '0', '0', '0', '0', NULL, '1'),
('13111', 'Kepala Subbidang Analisis Data', '0', '0', '0', '0', NULL, '1'),
('13112', 'Kepala Subbidang Penyajian dan Pelaporan Data', '0', '0', '0', '0', NULL, '1'),
('13120', 'Kepala Bidang Penanganan Kemiskinan Perkotaan dan Perdesaan', '0', '0', '0', '0', NULL, '1'),
('13121', 'Kepala Subbidang Penanganan Kemiskinan Perkotaan', '0', '0', '0', '0', NULL, '1'),
('13122', 'Kepala Subbidang Penanganan Kemiskinan Perdesaan', '0', '0', '0', '0', NULL, '1'),
('13130', 'Kepala Bidang Penguatan Kegiatan dan Tata Kelola', '0', '0', '0', '0', NULL, '1'),
('13131', 'Kepala Subbidang Penguatan Kegiatan', '0', '0', '0', '0', NULL, '1'),
('13132', 'Kepala Subbidang Tata Kelola', '0', '0', '0', '0', NULL, '1'),
('13200', 'Asisten Deputi Kompensasi Sosial', '0', '0', '0', '0', NULL, '1'),
('13210', 'Kepala Bidang Kompensasi Pangan', '0', '0', '0', '0', NULL, '1'),
('13211', 'Kepala Subbidang Kompensasi Pangan Bersyarat', '0', '0', '0', '0', NULL, '1'),
('13212', 'Kepala Subbidang Kompensasi Pangan Tidak Bersyarat', '0', '0', '0', '0', NULL, '1'),
('13220', 'Kepala Bidang Kompensasi Non Pangan', '0', '0', '0', '0', NULL, '1'),
('13221', 'Kepala Subbidang Kompensasi Non Pangan Bersyarat', '0', '0', '0', '0', NULL, '1'),
('13222', 'Kepala Subbidang Kompensasi Non Pangan Tidak Bersyarat', '0', '0', '0', '0', NULL, '1'),
('13300', 'Asisten Deputi Jaminan Sosial', '0', '0', '0', '0', NULL, '1'),
('13310', 'Kepala Bidang Asistensi Sosial', '0', '0', '0', '0', NULL, '1'),
('13311', 'Kepala Subbidang Program Asistensi Sosial', '0', '0', '0', '0', NULL, '1'),
('13312', 'Kepala Subbidang Kerjasama Asistensi Sosial', '0', '0', '0', '0', NULL, '1'),
('13320', 'Kepala Bidang Asuransi Sosial', '0', '0', '0', '0', NULL, '1'),
('13321', 'Kepala Subbidang Program Asuransi Sosial', '0', '0', '0', '0', NULL, '1'),
('13322', 'Kepala Subbidang Kerjasama Asuransi Sosial', '0', '0', '0', '0', NULL, '1'),
('13400', 'Asisten Deputi Pemberdayaan Disabilitas dan Lanjut Usia', '0', '0', '0', '0', NULL, '1'),
('13410', 'Kepala Bidang Pemberdayaan Disabilitas', '0', '0', '0', '0', NULL, '1'),
('13411', 'Kepala Subbidang Kelembagaan Disabilitas', '0', '0', '0', '0', NULL, '1'),
('13412', 'Kepala Subbidang Kesejahteraan Disabilitas', '0', '0', '0', '0', NULL, '1'),
('13420', 'Kepala Bidang Pemberdayaan Lanjut Usia', '0', '0', '0', '0', NULL, '1'),
('13421', 'Kepala Subbidang Kelembagaan Lanjut Usia', '0', '0', '0', '0', NULL, '1'),
('13422', 'Kepala Subbidang Kesejahteraan Lanjut Usia', '0', '0', '0', '0', NULL, '1'),
('14000', 'Deputi Bidang Koordinasi Peningkatan Kesehatan', '0', '0', '0', '0', NULL, '1'),
('14100', 'Asisten Deputi Ketahanan Gizi, Kesehatan Ibu dan Anak, dan Kesehatan Lingkungan', '0', '0', '0', '0', NULL, '1'),
('14110', 'Kepala Bidang Ketahanan Gizi dan Kesehatan Ibu dan Anak', '0', '0', '0', '0', NULL, '1'),
('14111', 'Kepala Subbidang Perbaikan Gizi Masyarakat, Kesehatan Ibu dan Anak', '0', '0', '0', '0', NULL, '1'),
('14112', 'Kepala Subbidang Mutu Gizi', '0', '0', '0', '0', NULL, '1'),
('14120', 'Kepala Bidang Kesehatan Lingkungan', '0', '0', '0', '0', NULL, '1'),
('14121', 'Kepala Subbidang Sanitasi', '0', '0', '0', '0', NULL, '1'),
('14122', 'Kepala Subbidang Penyehatan Air Bersih', '0', '0', '0', '0', NULL, '1'),
('14130', 'Kepala Bidang Penguatan Kegiatan dan Tata Kelola', '0', '0', '0', '0', NULL, '1'),
('14131', 'Kepala Subbidang Penguatan Kegiatan', '0', '0', '0', '0', NULL, '1'),
('14132', 'Kepala Subbidang Tata Kelola', '0', '0', '0', '0', NULL, '1'),
('14200', 'Asisten Deputi Pencegahan dan Penanggulangan Penyakit', '0', '0', '0', '0', NULL, '1'),
('14210', 'Kepala Bidang Penyakit Tidak Menular', '0', '0', '0', '0', NULL, '1'),
('14211', 'Kepala Subbidang Pengendalian Penyakit Tidak Menular', '0', '0', '0', '0', NULL, '1'),
('14212', 'Kepala Subbidang Dampak NAPZA', '0', '0', '0', '0', NULL, '1'),
('14220', 'Kepala Bidang Penyakit Menular', '0', '0', '0', '0', NULL, '1'),
('14221', 'Kepala Subbidang Zoonosis', '0', '0', '0', '0', NULL, '1'),
('14222', 'Kepala Subbidang Non Zoonosis', '0', '0', '0', '0', NULL, '1'),
('14300', 'Asisten Deputi Pelayanan Kesehatan', '0', '0', '0', '0', NULL, '1'),
('14310', 'Kepala Bidang Pelayanan Dasar dan Rujukan', '0', '0', '0', '0', NULL, '1'),
('14311', 'Kepala Subbidang Pelayanan Kesehatan Dasar', '0', '0', '0', '0', NULL, '1'),
('14312', 'Kepala Subbidang Pelayanan Rujukan Spesialistik', '0', '0', '0', '0', NULL, '1'),
('14320', 'Kepala Bidang Pembiayaan Kesehatan dan Farmasi', '0', '0', '0', '0', NULL, '1'),
('14321', 'Kepala Subbidang Pembiayaan dan Asuransi Sosial', '0', '0', '0', '0', NULL, '1'),
('14322', 'Kepala Subbidang Farmasi dan Kesehatan Tradisional', '0', '0', '0', '0', NULL, '1'),
('14400', 'Asisten Deputi Kependudukan dan Keluarga Berencana', '0', '0', '0', '0', NULL, '1'),
('14410', 'Kepala Bidang Kependudukan', '0', '0', '0', '0', NULL, '1'),
('14411', 'Kepala Subbidang Penyebaran Penduduk', '0', '0', '0', '0', NULL, '1'),
('14412', 'Kepala Subbidang Administrasi Kependudukan', '0', '0', '0', '0', NULL, '1'),
('14420', 'Kepala Bidang Keluarga Berencana', '0', '0', '0', '0', NULL, '1'),
('14421', 'Kepala Subbidang Partisipasi Masyarakat', '0', '0', '0', '0', NULL, '1'),
('14422', 'Kepala Subbidang Pelayanan Kontrasepsi', '0', '0', '0', '0', NULL, '1'),
('15000', 'Deputi Bidang Koordinasi Pendidikan dan Agama', '0', '0', '0', '0', NULL, '1'),
('15100', 'Asisten Deputi Pendidikan Menengah dan Keterampilan Bekerja', '0', '0', '0', '0', NULL, '1'),
('15110', 'Kepala Bidang Pendidikan Menengah', '0', '0', '0', '0', NULL, '1'),
('15111', 'Kepala Subbidang Ketenagaan dan Kesiswaan', '0', '0', '0', '0', NULL, '1'),
('15112', 'Kepala Subbidang Mutu Sarana dan Prasarana', '0', '0', '0', '0', NULL, '1'),
('15120', 'Kepala Bidang Pendidikan Keterampilan Bekerja', '0', '0', '0', '0', NULL, '1'),
('15121', 'Kepala Subbidang Ketenagaan dan Kesiswaan', '0', '0', '0', '0', NULL, '1'),
('15122', 'Kepala Subbidang Mutu Sarana dan Prasarana', '0', '0', '0', '0', NULL, '1'),
('15130', 'Kepala Bidang Penguatan Kegiatan dan Tata Kelola', '0', '0', '0', '0', NULL, '1'),
('15131', 'Kepala Subbidang Penguatan Kegiatan', '0', '0', '0', '0', NULL, '1'),
('15132', 'Kepala Subbidang Tata Kelola', '0', '0', '0', '0', NULL, '1'),
('15200', 'Asisten Deputi PAUD, DIKDAS dan Pendidikan Masyarakat', '0', '0', '0', '0', NULL, '1'),
('15210', 'Kepala Bidang PAUD dan Pendidikan Masyarakat', '0', '0', '0', '0', NULL, '1'),
('15211', 'Kepala Subbidang Ketenagaan dan Kesiswaan', '0', '0', '0', '0', NULL, '1'),
('15212', 'Kepala Subbidang Mutu Sarana dan Prasarana', '0', '0', '0', '0', NULL, '1'),
('15220', 'Kepala Bidang Pendidikan Dasar', '0', '0', '0', '0', NULL, '1'),
('15221', 'Kepala Subbidang Ketenagaan dan Kesiswaan', '0', '0', '0', '0', NULL, '1'),
('15222', 'Kepala Subbidang Mutu Sarana dan Prasarana', '0', '0', '0', '0', NULL, '1'),
('15300', 'Asisten Deputi Pendidikan Tinggi dan Pemanfaatan IPTEK', '0', '0', '0', '0', NULL, '1'),
('15310', 'Kepala Bidang Pendidikan Tinggi', '0', '0', '0', '0', NULL, '1'),
('15311', 'Kepala Subbidang Kemahasiswaan dan Akademik', '0', '0', '0', '0', NULL, '1'),
('15312', 'Kepala Subbidang Ketenagaan, Sarana dan Prasarana', '0', '0', '0', '0', NULL, '1'),
('15320', 'Kepala Bidang Pemanfaatan Ilmu Pengetahuan dan Teknologi', '0', '0', '0', '0', NULL, '1'),
('15321', 'Kepala Subbidang Kreatifitas dan Inovasi Teknologi', '0', '0', '0', '0', NULL, '1'),
('15322', 'Kepala Subbidang Kerjasama dan Kelembagaan', '0', '0', '0', '0', NULL, '1'),
('15400', 'Asisten Deputi Pemberdayaan dan Kerukunan Umat  Beragama', '0', '0', '0', '0', NULL, '1'),
('15410', 'Kepala Bidang Pemberdayaan Umat Beragama', '0', '0', '0', '0', NULL, '1'),
('15411', 'Kepala Subbidang Pemberdayaan Zakat, Infak, Shadaqoh, Wakaf, dan Jaminan Produk Halal', '0', '0', '0', '0', NULL, '1'),
('15412', 'Kepala Subbidang Kerjasama dan Kelembagaan', '0', '0', '0', '0', NULL, '1'),
('15420', 'Kepala Bidang Kerukunan Umat  Beragama', '0', '0', '0', '0', NULL, '1'),
('15421', 'Kepala Subbidang Penanganan Isu Kerukunan', '0', '0', '0', '0', NULL, '1'),
('15422', 'Kepala Subbidang Pengembangan Dialog Antar Umat', '0', '0', '0', '0', NULL, '1'),
('15500', 'Asisten Deputi Pembinaan Umat Beragama, Pendidikan Agama dan Keagamaan', '0', '0', '0', '0', NULL, '1'),
('15510', 'Kepala Bidang Pembinaan Umat Beragama', '0', '0', '0', '0', NULL, '1'),
('15511', 'Kepala Subbidang Pelayanan dan Penghayatan Agama', '0', '0', '0', '0', NULL, '1'),
('15512', 'Kepala Subbidang Bimbingan Haji dan Umroh', '0', '0', '0', '0', NULL, '1'),
('15520', 'Kepala Bidang Pendidikan Agama dan Pendidikan Keagamaan', '0', '0', '0', '0', NULL, '1'),
('15521', 'Kepala Subbidang Pendidikan Agama', '0', '0', '0', '0', NULL, '1'),
('15522', 'Kepala Subbidang Pendidikan Keagamaan', '0', '0', '0', '0', NULL, '1'),
('16000', 'Deputi Bidang Koordinasi Kebudayaan', '0', '0', '0', '0', NULL, '1'),
('16100', 'Asisten Deputi Kepemudaan', '0', '0', '0', '0', NULL, '1'),
('16110', 'Kepala Bidang Pemberdayaan Pemuda', '0', '0', '0', '0', NULL, '1'),
('16111', 'Kepala Subbidang Kepemimpinan Pemuda', '0', '0', '0', '0', NULL, '1'),
('16112', 'Kepala Subbidang Karakter Pemuda', '0', '0', '0', '0', NULL, '1'),
('16120', 'Kepala Bidang Pengembangan Pemuda', '0', '0', '0', '0', NULL, '1'),
('16121', 'Kepala Subbidang Peningkatan Kreativitas Pemuda', '0', '0', '0', '0', NULL, '1'),
('16122', 'Kepala Subbidang Kewirausahaan Pemuda', '0', '0', '0', '0', NULL, '1'),
('16130', 'Kepala Bidang Penguatan Kegiatan dan Tata Kelola', '0', '0', '0', '0', NULL, '1'),
('16131', 'Kepala Subbidang Penguatan Kegiatan', '0', '0', '0', '0', NULL, '1'),
('16132', 'Kepala Subbidang Tata Kelola', '0', '0', '0', '0', NULL, '1'),
('16200', 'Asisten Deputi Nilai dan Kreativitas Budaya', '0', '0', '0', '0', NULL, '1'),
('16210', 'Kepala Bidang Nilai Budaya dan Karakter Bangsa', '0', '0', '0', '0', NULL, '1'),
('16211', 'Kepala Subbidang Pengembangan Nilai Budaya', '0', '0', '0', '0', NULL, '1'),
('16212', 'Kepala Subbidang Kelembagaan dan Pembudayaan Karakter Bangsa', '0', '0', '0', '0', NULL, '1'),
('16220', 'Kepala Bidang Industri Budaya', '0', '0', '0', '0', NULL, '1'),
('16221', 'Kepala Subbidang Seni dan Film', '0', '0', '0', '0', NULL, '1'),
('16222', 'Kepala Subbidang Budaya Kreatif', '0', '0', '0', '0', NULL, '1'),
('16300', 'Asisten Deputi Warisan Budaya', '0', '0', '0', '0', NULL, '1'),
('16310', 'Kepala Bidang Cagar Budaya dan Permuseuman', '0', '0', '0', '0', NULL, '1'),
('16311', 'Kepala Subbidang Cagar Budaya', '0', '0', '0', '0', NULL, '1'),
('16312', 'Kepala Subbidang Permuseuman', '0', '0', '0', '0', NULL, '1'),
('16320', 'Kepala Bidang Sejarah dan Warisan Dunia', '0', '0', '0', '0', NULL, '1'),
('16321', 'Kepala Subbidang Sejarah', '0', '0', '0', '0', NULL, '1'),
('16322', 'Kepala Subbidang Warisan Dunia', '0', '0', '0', '0', NULL, '1'),
('16400', 'Asisten Deputi Keolahragaan', '0', '0', '0', '0', NULL, '1'),
('16410', 'Kepala Bidang Prestasi Olahraga', '0', '0', '0', '0', NULL, '1'),
('16411', 'Kepala Subbidang Pembibitan dan IPTEK Olahraga', '0', '0', '0', '0', NULL, '1'),
('16412', 'Kepala Subbidang Organisasi dan Tenaga Keolahragaan', '0', '0', '0', '0', NULL, '1'),
('16420', 'Kepala Bidang Pembudayaan Olahraga', '0', '0', '0', '0', NULL, '1'),
('16421', 'Kepala Subbidang Olahraga Pendidikan dan Layanan Khusus', '0', '0', '0', '0', NULL, '1'),
('16422', 'Kepala Subbidang Olahraga Rekreasi dan Industri Olahraga', '0', '0', '0', '0', NULL, '1'),
('17000', 'Deputi Bidang Koordinasi Perlindungan Perempuan dan Anak', '0', '0', '0', '0', NULL, '1'),
('17100', 'Asisten Deputi Ketahanan dan Kesejahteraan Keluarga', '0', '0', '0', '0', NULL, '1'),
('17110', 'Kepala Bidang Ketahanan Keluarga', '0', '0', '0', '0', NULL, '1'),
('17111', 'Kepala Subbidang Peningkatan Ketahanan Fisik Keluarga', '0', '0', '0', '0', NULL, '1'),
('17112', 'Kepala Subbidang Peningkatan Ketahanan Mental Spiritual Keluarga', '0', '0', '0', '0', NULL, '1'),
('17120', 'Kepala Bidang Peningkatan Kesejahteraan Keluarga', '0', '0', '0', '0', NULL, '1'),
('17121', 'Kepala Subbidang Pemberdayaan Keluarga', '0', '0', '0', '0', NULL, '1'),
('17122', 'Kepala Subbidang Bina Pra Keluarga', '0', '0', '0', '0', NULL, '1'),
('17130', 'Kepala Bidang Penguatan Kegiatan dan Tata Kelola', '0', '0', '0', '0', NULL, '1'),
('17131', 'Kepala Subbidang Penguatan Kegiatan', '0', '0', '0', '0', NULL, '1'),
('17132', 'Kepala Subbidang Tata Kelola', '0', '0', '0', '0', NULL, '1'),
('17200', 'Asisten Deputi Pemberdayaan Perempuan', '0', '0', '0', '0', NULL, '1'),
('17210', 'Kepala Bidang Pemberdayaan Kepala Bidang Ekonomi', '0', '0', '0', '0', NULL, '1'),
('17211', 'Kepala Subbidang Pengembangan Permodalan dan Usaha', '0', '0', '0', '0', NULL, '1'),
('17212', 'Kepala Subbidang Peningkatan Kompetensi', '0', '0', '0', '0', NULL, '1'),
('17220', 'Kepala Bidang Pemberdayaan Kepala Bidang Sosial dan Budaya', '0', '0', '0', '0', NULL, '1'),
('17221', 'Kepala Subbidang Pemberdayaan Bidang Sosial', '0', '0', '0', '0', NULL, '1'),
('17222', 'Kepala Subbidang Pemberdayaan Bidang Budaya', '0', '0', '0', '0', NULL, '1'),
('17300', 'Asisten Deputi Pemenuhan Hak dan Perlindungan Perempuan', '0', '0', '0', '0', NULL, '1'),
('17310', 'Kepala Bidang Pemenuhan Hak Perempuan', '0', '0', '0', '0', NULL, '1'),
('17311', 'Kepala Subbidang Pemenuhan Hak Sosial dan Budaya', '0', '0', '0', '0', NULL, '1'),
('17312', 'Kepala Subbidang Pemenuhan Hak Politik dan Hukum', '0', '0', '0', '0', NULL, '1'),
('17320', 'Kepala Bidang Perlindungan Perempuan', '0', '0', '0', '0', NULL, '1'),
('17321', 'Kepala Subbidang Penanganan Kekerasan Terhadap Perempuan', '0', '0', '0', '0', NULL, '1'),
('17322', 'Kepala Subbidang Penanganan Masalah Sosial Perempuan', '0', '0', '0', '0', NULL, '1'),
('17400', 'Asisten Deputi Pemenuhan Hak dan Perlindungan Anak', '0', '0', '0', '0', NULL, '1'),
('17410', 'Kepala Bidang Pemenuhan Hak Anak', '0', '0', '0', '0', NULL, '1'),
('17411', 'Kepala Subbidang Tumbuh Kembang Anak', '0', '0', '0', '0', NULL, '1'),
('17412', 'Kepala Subbidang Pemenuhan Hak Sipil, Pendidikan, dan Kesehatan Anak', '0', '0', '0', '0', NULL, '1'),
('17420', 'Kepala Bidang Perlindungan Anak', '0', '0', '0', '0', NULL, '1'),
('17421', 'Kepala Subbidang Penanganan Kekerasan Terhadap Anak', '0', '0', '0', '0', NULL, '1'),
('17422', 'Kepala Subbidang Penanganan Masalah Sosial Anak', '0', '0', '0', '0', NULL, '1'),
('18000', 'Deputi Bidang Koordinasi Pemberdayaan Masyarakat, Desa dan Kawasan', '0', '0', '0', '0', NULL, '1'),
('18100', 'Asisten Deputi Pemberdayaan Masyarakat', '0', '0', '0', '0', NULL, '1'),
('18110', 'Kepala Bidang Pengembangan Ekonomi', '0', '0', '0', '0', NULL, '1'),
('18111', 'Kepala Subbidang Permodalan dan Keuangan Mikro', '0', '0', '0', '0', NULL, '1'),
('18112', 'Kepala Subbidang Pengembangan Usaha dan Pemasaran', '0', '0', '0', '0', NULL, '1'),
('18120', 'Kepala Bidang Pengembangan Sosial Budaya', '0', '0', '0', '0', NULL, '1'),
('18121', 'Kepala Subbidang Infrastruktur dan Teknologi', '0', '0', '0', '0', NULL, '1'),
('18122', 'Kepala Subbidang Kelembagaan dan Kemitraan', '0', '0', '0', '0', NULL, '1'),
('18130', 'Kepala Bidang Penguatan Kegiatan dan Tata Kelola', '0', '0', '0', '0', NULL, '1'),
('18131', 'Kepala Subbidang Penguatan Kegiatan', '0', '0', '0', '0', NULL, '1'),
('18132', 'Kepala Subbidang Tata Kelola', '0', '0', '0', '0', NULL, '1'),
('18200', 'Asisten Deputi Pemberdayaan Desa', '0', '0', '0', '0', NULL, '1'),
('18210', 'Kepala Bidang Pengembangan Sarana dan Prasarana', '0', '0', '0', '0', NULL, '1'),
('18211', 'Kepala Subbidang Sarana Desa', '0', '0', '0', '0', NULL, '1'),
('18212', 'Kepala Subbidang Prasarana Desa', '0', '0', '0', '0', NULL, '1'),
('18220', 'Kepala Bidang Pengelolaan Sumber Daya', '0', '0', '0', '0', NULL, '1'),
('18221', 'Kepala Subbidang Ekonomi Kreatif', '0', '0', '0', '0', NULL, '1'),
('18222', 'Kepala Subbidang Kearifan Lokal', '0', '0', '0', '0', NULL, '1'),
('18300', 'Asisten Deputi Pemberdayaan Kawasan Pedesaan', '0', '0', '0', '0', NULL, '1'),
('18310', 'Kepala Bidang Pengembangan Sarana dan Prasarana Kawasan Tertinggal', '0', '0', '0', '0', NULL, '1'),
('18311', 'Kepala Subbidang Sarana dan Prasarana Perdesaan', '0', '0', '0', '0', NULL, '1'),
('18312', 'Kepala Subbidang Sarana dan Prasarana Pesisir', '0', '0', '0', '0', NULL, '1'),
('18320', 'Kepala Bidang Pengembangan Kemitraan dan Kelembagaan Kawasan Berkembang', '0', '0', '0', '0', NULL, '1'),
('18321', 'Kepala Subbidang Pengembangan Kemitraan', '0', '0', '0', '0', NULL, '1'),
('18322', 'Kepala Subbidang Penguatan Kelembagaan', '0', '0', '0', '0', NULL, '1'),
('18400', 'Asisten Deputi Pemberdayaan Kawasan Strategis dan Khusus', '0', '0', '0', '0', NULL, '1'),
('18410', 'Kepala Bidang Pemberdayaan Kawasan Strategis', '0', '0', '0', '0', NULL, '1'),
('18411', 'Kepala Subbidang Permukiman dan Transmigrasi', '0', '0', '0', '0', NULL, '1'),
('18412', 'Kepala Subbidang Kawasan Terluar, Terisolir, dan Terpencil', '0', '0', '0', '0', NULL, '1'),
('18420', 'Kepala Bidang Pengembangan Kawasan Khusus', '0', '0', '0', '0', NULL, '1'),
('18421', 'Kepala Subbidang Kawasan Industri dan Produktif', '0', '0', '0', '0', NULL, '1'),
('18422', 'Kepala Subbidang Kawasan Konservasi', '0', '0', '0', '0', NULL, '1'),
('19100', 'Staf Ahli Bidang Politik, Hukum, Keamanan, dan Hak Asasi Manusia', '0', '0', '0', '0', NULL, '1'),
('19200', 'Staf Ahli Bidang Multikulturalisme, Restorasi Sosial, dan Jati Diri Bangsa', '0', '0', '0', '0', NULL, '1'),
('19300', 'Staf Ahli Bidang Usaha Mikro, Kecil dan Menengah, Ekonomi Kreatif, dan Ketengakerjaan', '0', '0', '0', '0', NULL, '1'),
('19400', 'Staf Ahli Bidang Sustainable Development Goals Pasca 2015', '0', '0', '0', '0', NULL, '1'),
('19500', 'Staf Ahli Bidang Kependudukan', '0', '0', '0', '0', NULL, '1'),
('20101', 'Auditor Utama', '0', '0', '0', '0', NULL, '2'),
('20102', 'Auditor Madya', '0', '0', '0', '0', NULL, '2'),
('20103', 'Auditor Muda', '0', '0', '0', '0', NULL, '2'),
('20104', 'Auditor Pertama', '0', '0', '0', '0', NULL, '2'),
('20105', 'Auditor Penyelia', '0', '0', '0', '0', NULL, '2'),
('20106', 'Auditor Pelaksana Lanjutan', '0', '0', '0', '0', NULL, '2'),
('20107', 'Auditor Pelaksana', '0', '0', '0', '0', NULL, '2'),
('20201', 'Arsiparis Utama', '0', '0', '0', '0', NULL, '2'),
('20202', 'Arsiparis Madya', '0', '0', '0', '0', NULL, '2'),
('20203', 'Arsiparis Muda', '0', '0', '0', '0', NULL, '2'),
('20204', 'Arsiparis Pertama', '0', '0', '0', '0', NULL, '2'),
('20205', 'Arsiparis Penyelia', '0', '0', '0', '0', NULL, '2'),
('20206', 'Arsiparis Pelaksana Lanjutan', '0', '0', '0', '0', NULL, '2'),
('20207', 'Arsiparis Pelaksana', '0', '0', '0', '0', NULL, '2'),
('20301', 'Analis Kepegawaian Utama', '0', '0', '0', '0', NULL, '2'),
('20302', 'Analis Kepegawaian Madya', '0', '0', '0', '0', NULL, '2'),
('20303', 'Analis Kepegawaian Muda', '0', '0', '0', '0', NULL, '2'),
('20304', 'Analis Kepegawaian Pertama', '0', '0', '0', '0', NULL, '2'),
('20305', 'Analis Kepegawaian Penyelia', '0', '0', '0', '0', NULL, '2'),
('20306', 'Analis Kepegawaian Pelaksana Lanjutan', '0', '0', '0', '0', NULL, '2'),
('20307', 'Analis Kepegawaian Pelaksana', '0', '0', '0', '0', NULL, '2'),
('20401', 'Auditor Kepegawaian Madya', '0', '0', '0', '0', NULL, '2'),
('20402', 'Auditor Kepegawaian Muda', '0', '0', '0', '0', NULL, '2'),
('20403', 'Auditor Kepegawaian Pertama', '0', '0', '0', '0', NULL, '2'),
('20501', 'Analis Kebijakan Utama', '0', '0', '0', '0', NULL, '2'),
('20502', 'Analis Kebijakan Madya', '0', '0', '0', '0', NULL, '2'),
('20503', 'Analis Kebijakan Muda', '0', '0', '0', '0', NULL, '2'),
('20504', 'Analis Kebijakan Pertama', '0', '0', '0', '0', NULL, '2'),
('20601', 'Pranata Komputer Utama', '0', '0', '0', '0', NULL, '2'),
('20602', 'Pranata Komputer Madya', '0', '0', '0', '0', NULL, '2'),
('20603', 'Pranata Komputer Muda', '0', '0', '0', '0', NULL, '2'),
('20604', 'Pranata Komputer Pertama', '0', '0', '0', '0', NULL, '2'),
('20605', 'Pranata Komputer Penyelia', '0', '0', '0', '0', NULL, '2'),
('20606', 'Pranata Komputer Pelaksana Lanjutan', '0', '0', '0', '0', NULL, '2'),
('20607', 'Pranata Komputer Pelaksana', '0', '0', '0', '0', NULL, '2'),
('20608', 'Pranata Komputer Pemula', '0', '0', '0', '0', NULL, '2'),
('20701', 'Perencana Utama', '0', '0', '0', '0', NULL, '2'),
('20702', 'Perencana Madya', '0', '0', '0', '0', NULL, '2'),
('20703', 'Perencana Muda', '0', '0', '0', '0', NULL, '2'),
('20704', 'Perencana Pertama', '0', '0', '0', '0', NULL, '2'),
('20801', 'Pustakawan Utama', '0', '0', '0', '0', NULL, '2'),
('20802', 'Pustakawan Madya', '0', '0', '0', '0', NULL, '2'),
('20803', 'Pustakawan Muda', '0', '0', '0', '0', NULL, '2'),
('20804', 'Pustakawan Pertama', '0', '0', '0', '0', NULL, '2'),
('20805', 'Pustakawan Penyelia', '0', '0', '0', '0', NULL, '2'),
('20806', 'Pustakawan Pelaksana Lanjutan', '0', '0', '0', '0', NULL, '2'),
('20807', 'Pustakawan Pelaksana', '0', '0', '0', '0', NULL, '2'),
('20808', 'Perancang Peraturan Perundang-Undangan Madya', '0', '0', '0', '0', NULL, '2'),
('20809', 'Perancang Peraturan Perundang-Undangan Muda', '0', '0', '0', '0', NULL, '2'),
('20810', 'Perancang Peraturan Perundang-Undangan Pertama', '0', '0', '0', '0', NULL, '2'),
('20901', 'Perancang Peraturan Perundang-Undangan Utama', '0', '0', '0', '0', NULL, '2'),
('30501', 'Petugas Arsip', '0', '0', '0', '0', NULL, '3'),
('30502', 'Petugas Arsip Surat', '0', '0', '0', '0', NULL, '3'),
('30503', 'Petugas Arsip Kepegawaian', '0', '0', '0', '0', NULL, '3'),
('30504', 'Petugas Urusan Dalam', '0', '0', '0', '0', NULL, '3'),
('30505', 'Petugas Perawatan Kendaraan Dinas Deputi', '0', '0', '0', '0', NULL, '3'),
('30506', 'Petugas Perawatan Kendaraan Dinas Staf Ahli Menko', '0', '0', '0', '0', NULL, '3'),
('30507', 'Petugas Perawatan Kendaraan Dinas Operasional', '0', '0', '0', '0', NULL, '3'),
('30508', 'Petugas Perawatan Perlengkapan Kendaraan Dinas', '0', '0', '0', '0', NULL, '3'),
('30601', 'Penyaji Bahan dan Data Penyusunan Anggaran', '0', '0', '0', '0', NULL, '3'),
('30602', 'Penyaji Bahan dan Data Dokumen Perjalanan', '0', '0', '0', '0', NULL, '3'),
('30603', 'Penyaji Bahan dan Data Arsip Surat Menko', '0', '0', '0', '0', NULL, '3'),
('30604', 'Penyaji Bahan dan Data Arsip Surat Staf Ahli Menko', '0', '0', '0', '0', NULL, '3'),
('30605', 'Penyaji Bahan dan Data Arsip Surat', '0', '0', '0', '0', NULL, '3'),
('30606', 'Penyaji Bahan dan Data Arsip', '0', '0', '0', '0', NULL, '3'),
('30607', 'Penyaji Data Disiplin Pegawai', '0', '0', '0', '0', NULL, '3'),
('30608', 'Penyaji Bahan Penggandaan', '0', '0', '0', '0', NULL, '3'),
('30609', 'Penyaji dan Penyimpan Berkas Dokumen Pertanggung Jawaban Keuangan', '0', '0', '0', '0', NULL, '3'),
('30610', 'Penyaji Data Pengeluaran Barang Milik Negara', '0', '0', '0', '0', NULL, '3'),
('30611', 'Penyaji Bahan dan Data Arsip Peralatan', '0', '0', '0', '0', NULL, '3'),
('30612', 'Penyaji Data dan Arsip Barang Milik Negara', '0', '0', '0', '0', NULL, '3'),
('30613', 'Penyaji Bahan dan Data Arsip Barang Milik Negara', '0', '0', '0', '0', NULL, '3'),
('30614', 'Penyaji Bahan dan Data Pemeriksaan', '0', '0', '0', '0', NULL, '3'),
('30615', 'Penyaji Bahan dan Data Program dan Anggaran Penguatan Kegiatan', '0', '0', '0', '0', NULL, '3'),
('30616', 'Penyaji Bahan dan Data Pendidikan Agama', '0', '0', '0', '0', NULL, '3'),
('30701', 'Pengadministrasi Kehumasan', '0', '0', '0', '0', NULL, '3'),
('30702', 'Pengolah Bahan Persidangan dan Rapat', '0', '0', '0', '0', NULL, '3'),
('30703', 'Penyiap Bahan Perancangan Peraturan Perundang-undangan', '0', '0', '0', '0', NULL, '3'),
('30704', 'Penyiap Bahan dan Data Sistem Informasi', '0', '0', '0', '0', NULL, '3'),
('30705', 'Penyiap Bahan dan Data Arsip Perpustakaan', '0', '0', '0', '0', NULL, '3'),
('30706', 'Penyiap Bahan dan Data Informasi', '0', '0', '0', '0', NULL, '3'),
('30707', 'Pengolah Keprotokolan', '0', '0', '0', '0', NULL, '3'),
('30708', 'Pengadministrasi Arsip Surat Menko', '0', '0', '0', '0', NULL, '3'),
('30709', 'Penyiap Dokumen Perjalanan', '0', '0', '0', '0', NULL, '3'),
('30710', 'Penyiap Bahan dan Data Arsip Surat', '0', '0', '0', '0', NULL, '3'),
('30711', 'Pengadministrasi Surat', '0', '0', '0', '0', NULL, '3'),
('30712', 'Penyiap Bahan dan Data Keprotokolan', '0', '0', '0', '0', NULL, '3'),
('30713', 'Pengadministrasi Arsip Surat Staf Ahli Menko', '0', '0', '0', '0', NULL, '3'),
('30714', 'Pengadministrasi Arsip Surat', '0', '0', '0', '0', NULL, '3'),
('30715', 'Pengolah Data Pengembangan Kepegawaian', '0', '0', '0', '0', NULL, '3'),
('30716', 'Pengolah Bahan dan Data Kepegawaian', '0', '0', '0', '0', NULL, '3'),
('30717', 'Verifikator Keuangan', '0', '0', '0', '0', NULL, '3'),
('30718', 'Pembuat Laporan Perpajakan', '0', '0', '0', '0', NULL, '3'),
('30719', 'Operator Aplikasi SAS (Sistem Aplikasi Satker)', '0', '0', '0', '0', NULL, '3'),
('30720', 'Operator Aplikasi SIPP (Sistem Informasi Perencanaan dan Pelaporan)', '0', '0', '0', '0', NULL, '3'),
('30721', 'Pengolah Arsip Urusan Dalam', '0', '0', '0', '0', NULL, '3'),
('30722', 'Penyiap Bahan dan Data Teknologi Informasi', '0', '0', '0', '0', NULL, '3'),
('30723', 'Pengolah Bahan Kebijakan Penguatan Kesadaran Masyarakat', '0', '0', '0', '0', NULL, '3'),
('30724', 'Pengolah Arsip Surat', '0', '0', '0', '0', NULL, '3'),
('30725', 'Penyiap Bahan Kebijakan Kompensasi Non Pangan Tidak Bersyarat', '0', '0', '0', '0', NULL, '3'),
('30726', 'Pengolah Bahan Kebijakan Penguatan Kegiatan', '0', '0', '0', '0', NULL, '3'),
('30727', 'Pengolah Bahan Kebijakan Peluang Kerja Perempuan', '0', '0', '0', '0', NULL, '3'),
('30728', 'Pengolah Website', '0', '0', '0', '0', NULL, '3'),
('30729', 'Pengolah Data Pengembangan Kepegawaian', '0', '0', '0', '0', NULL, '3'),
('30801', 'Pengevaluasi Bahan Dokumen Akuntabilitas Kinerja', '0', '0', '0', '0', NULL, '3'),
('30802', 'Penganalisis Bahan Kerjasama Regional dan Multilateral', '0', '0', '0', '0', NULL, '3'),
('30803', 'Penganalisis Bahan Dokumen Anggaran', '0', '0', '0', '0', NULL, '3'),
('30804', 'Pengelola Bahan Dokumen Pelaporan', '0', '0', '0', '0', NULL, '3'),
('30805', 'Pengevaluasi Bahan Data Organisasi dan Tata Laksana', '0', '0', '0', '0', NULL, '3'),
('30806', 'Penganalisis Bahan dan Data Informasi', '0', '0', '0', '0', NULL, '3'),
('30807', 'Penganalisis Bahan Rancangan Perundangan-undangan', '0', '0', '0', '0', NULL, '3'),
('30808', 'Pengelola Bahan Jaringan', '0', '0', '0', '0', NULL, '3'),
('30809', 'Pengelola Bahan dan Data Hasil Persidangan', '0', '0', '0', '0', NULL, '3'),
('30810', 'Pengelola Bahan Persidangan', '0', '0', '0', '0', NULL, '3'),
('30811', 'Pengelola Bahan Penyusunan Peraturan Perundangan-undangan', '0', '0', '0', '0', NULL, '3'),
('30812', 'Pengevaluasi Bahan Kebijakan Bidang Pembangunan daerah Tertinggal dan Perbatasan Negara', '0', '0', '0', '0', NULL, '3'),
('30813', 'Pengevaluasi Bahan Kebijakan Bidang Politik, Hukum, Keamanan dan HAM', '0', '0', '0', '0', NULL, '3'),
('30814', 'Pengevaluasi Bahan Kebijakan Bidang Kreativitas dan Inovasi Teknologi', '0', '0', '0', '0', NULL, '3'),
('30815', 'Pengevaluasi Bahan Kebijakan Bidang Multikulturalisme dan Resolusi Konflik', '0', '0', '0', '0', NULL, '3'),
('30816', 'Pengevaluasi Bahan Kebijakan Bidang Pencapaian Pembangunan Millenium', '0', '0', '0', '0', NULL, '3'),
('30817', 'Penyusun Bahan Perencanaan SDM', '0', '0', '0', '0', NULL, '3'),
('30818', 'Pengevaluasi Data Penggajian, Tunjangan Kinerja, Uang Makan, dan Belanja Pegawai Lainnya', '0', '0', '0', '0', NULL, '3'),
('30819', 'Pengevaluasi Laporan Keuangan', '0', '0', '0', '0', NULL, '3'),
('30820', 'Bendaharawan Pengeluaran', '0', '0', '0', '0', NULL, '3'),
('30821', 'Pengelola Dokumen Barang Milik Negara', '0', '0', '0', '0', NULL, '3'),
('30822', 'Pengelola Bahan Pemeriksaan', '0', '0', '0', '0', NULL, '3'),
('30823', 'Pengelola Bahan Perencanaan Program, Anggaran dan Pelaporan', '0', '0', '0', '0', NULL, '3'),
('30824', 'Pengevaluasi Bahan Monitoring dan Evaluasi Jaminan Sosial Kesehatan', '0', '0', '0', '0', NULL, '3'),
('30825', 'Pengelola Bahan Monitoring dan Evaluasi Jaminan Sosial Ketenagakerjaan', '0', '0', '0', '0', NULL, '3'),
('30826', 'Pengelola Laporan Keuangan', '0', '0', '0', '0', NULL, '3'),
('30827', 'Pengelola dan Pelayanan Data dan Informasi', '0', '0', '0', '0', NULL, '3'),
('30828', 'Pengelola Bahan dan Penyelenggaraan Hubungan Antar Lembaga', '0', '0', '0', '0', NULL, '3'),
('30829', 'Pengelola Urusan Protokol dan Rumah Tangga', '0', '0', '0', '0', NULL, '3'),
('30830', 'Pengelola Bahan Kebijakan Jaminan Sosial Kesehatan', '0', '0', '0', '0', NULL, '3'),
('30831', 'Pengelola Bahan Monitoring dan Evaluasi Jaminan Sosial Kesehatan', '0', '0', '0', '0', NULL, '3'),
('30832', 'Penyusun Bahan dan Data Pelaporan', '0', '0', '0', '0', NULL, '3'),
('30833', 'Pengelola Bahan Kebijakan Respon Dini', '0', '0', '0', '0', NULL, '3'),
('30834', 'Pengelola Bahan Kebijakan Pemulihan Masyarakat', '0', '0', '0', '0', NULL, '3'),
('30835', 'Pengelola Bahan Kebijakan Kerjasama Asuransi Sosial', '0', '0', '0', '0', NULL, '3'),
('30836', 'Pengelola Bahan Kebijakan Penanganan Kemiskinan', '0', '0', '0', '0', NULL, '3'),
('30837', 'Pengelola Bahan Kebijakan Kesejahteraan Disabilitas', '0', '0', '0', '0', NULL, '3'),
('30838', 'Penganalisis Bahan Kebijakan Mutu Gizi', '0', '0', '0', '0', NULL, '3'),
('30839', 'Pengelola Bahan Kebijakan Farmasi dan Kesehatan Tradisional', '0', '0', '0', '0', NULL, '3'),
('30840', 'Pengelola Bahan Kebijakan Ketenagaan dan Kesiswaan', '0', '0', '0', '0', NULL, '3'),
('30841', 'Pengelola Bahan Kebijakan Kerukunan Antar Etnis dan Umat Beragama', '0', '0', '0', '0', NULL, '3'),
('30842', 'Pengelola Bahan Kebijakan Mutu, Sarana dan Prasarana Pendidikan Dasar', '0', '0', '0', '0', NULL, '3'),
('30843', 'Penganalisis Bahan Kebijakan Pengembangan dan Pembudayaan Karakter Bangsa', '0', '0', '0', '0', NULL, '3'),
('30844', 'Pengelola Bahan Kebijakan Seni dan Film', '0', '0', '0', '0', NULL, '3'),
('30845', 'Pengelola Bahan Kebijakan Pengembangan Nilai Budaya', '0', '0', '0', '0', NULL, '3'),
('30846', 'Pengelola Bahan Kebijakan Budaya Kreatif', '0', '0', '0', '0', NULL, '3'),
('30847', 'Pengelola Bahan Kebijakan Pembibitan dan IPTEK Olahraga', '0', '0', '0', '0', NULL, '3'),
('30848', 'Pengelola Bahan Kebijakan Penanganan Kekerasan Terhadap Anak', '0', '0', '0', '0', NULL, '3'),
('30849', 'Pengelola Bahan Kebijakan Pemenuhan Hak Sosial dan Budaya', '0', '0', '0', '0', NULL, '3'),
('30850', 'Penganalisis Bahan Kebijakan Sarana Desa', '0', '0', '0', '0', NULL, '3'),
('30851', 'Penganalisis Bahan Kebijakan Pengembangan Nilai Budaya', '0', '0', '0', '0', NULL, '3'),
('30852', 'Penganalisis Bahan Kebijakan Budaya Kreatif ', '0', '0', '0', '0', NULL, '3'),
('30853', 'Pengelola Bahan Kebijakan Jaminan Sosial Ketenagakerjaan', '0', '0', '0', '0', NULL, '3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kel_jabatan`
--

CREATE TABLE `kel_jabatan` (
  `kode_kelompok` varchar(255) NOT NULL,
  `nama_kelompok` varchar(255) NOT NULL,
  `sk_kelompok` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kel_jabatan`
--

INSERT INTO `kel_jabatan` (`kode_kelompok`, `nama_kelompok`, `sk_kelompok`) VALUES
('1', 'Jabatan Struktural', ''),
('2', 'Fungsional Tertentu\r\n', ''),
('3', 'Fungsional Umum\r\n', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kepempipinan`
--

CREATE TABLE `kepempipinan` (
  `nilai_item_kepempipinan` varchar(255) NOT NULL,
  `uraian_item_kepempipinan` varchar(255) NOT NULL,
  `unsur_item_kepempipinan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kerjasama`
--

CREATE TABLE `kerjasama` (
  `nilai_item_kerjasama` varchar(255) NOT NULL,
  `uraian_item_kerjasama` varchar(255) NOT NULL,
  `unsur_item_kerjasama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `komitmen`
--

CREATE TABLE `komitmen` (
  `nilai_item_komitmen` varchar(255) NOT NULL,
  `uraian_item_komitmen` varchar(255) NOT NULL,
  `unsur_item_komitmen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `layanan`
--

CREATE TABLE `layanan` (
  `nilai_item_layanan` varchar(255) NOT NULL,
  `uraian_item_layanan` varchar(255) NOT NULL,
  `unsur_item_layanan` varchar(255) NOT NULL
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `penilai`
--

CREATE TABLE `penilai` (
  `kode_penilai` varchar(255) NOT NULL,
  `nip_penilai` varchar(255) DEFAULT NULL,
  `nip_dinilai` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penilaian`
--

CREATE TABLE `penilaian` (
  `kode_penilaian` varchar(255) NOT NULL,
  `jumlah_nilai` double NOT NULL,
  `waktu_nilai` date NOT NULL,
  `perhitungan` double NOT NULL,
  `nilai_capaian` double NOT NULL,
  `evaluasi_ke` int(11) NOT NULL,
  `catatan` text NOT NULL,
  `id_skp_penilaian` varchar(255) DEFAULT NULL,
  `no_tugas_penilaian` varchar(255) DEFAULT NULL,
  `nilai_item_perilaku` varchar(255) DEFAULT NULL,
  `nilai_item_kerjasama` varchar(255) DEFAULT NULL,
  `nilai_item_layanan` varchar(255) DEFAULT NULL,
  `nilai_item_disiplin` varchar(255) DEFAULT NULL,
  `nilai_item_integritas` varchar(255) DEFAULT NULL,
  `nilai_item_kepempipinan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `perilaku`
--

CREATE TABLE `perilaku` (
  `nilai_item_perilaku` varchar(255) NOT NULL,
  `uraian_item_perilaku` varchar(255) NOT NULL,
  `unsur_item_perilaku` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `skp`
--

CREATE TABLE `skp` (
  `id_skp` varchar(300) NOT NULL,
  `tahun` int(100) NOT NULL,
  `is_approved_awal` tinyint(1) NOT NULL,
  `tgl_approved_awal` date NOT NULL,
  `is_approved_akhir` tinyint(1) NOT NULL,
  `tgl_approved_akhir` date NOT NULL,
  `tgl_real_awal` date NOT NULL,
  `tgl_real_akhir` date NOT NULL,
  `tgl_kemajuan_awal` date NOT NULL,
  `tgl_kemajuan_akhir` date NOT NULL,
  `status_real_awal` varchar(1024) NOT NULL,
  `status_real_akhir` varchar(1024) NOT NULL,
  `nilai_skp_awal` int(100) NOT NULL,
  `nilai_skp_akhir` int(100) NOT NULL,
  `pesan` text NOT NULL,
  `kode_penilai` varchar(255) DEFAULT NULL,
  `id_dtl_skp` varchar(255) DEFAULT NULL,
  `nip` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tugas_tambahan`
--

CREATE TABLE `tugas_tambahan` (
  `no_tugas` varchar(255) NOT NULL,
  `nama_tugas` text NOT NULL,
  `nilai_tugas_awal` int(11) NOT NULL,
  `nilai_tugas_akhir` int(11) NOT NULL,
  `kode_penilaian` varchar(255) DEFAULT NULL,
  `id_skp_master` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `unit_kerja`
--

CREATE TABLE `unit_kerja` (
  `kode_unit` varchar(255) NOT NULL,
  `nama_unit` varchar(255) NOT NULL,
  `sk_unit` varchar(255) NOT NULL,
  `kode_enselon` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `unit_kerja`
--

INSERT INTO `unit_kerja` (`kode_unit`, `nama_unit`, `sk_unit`, `kode_enselon`) VALUES
('1', 'admin', 'adm', NULL),
('360000', 'Kementerian Koordinator Bidang Pembangunan Manusia dan Kebudayaan', 'Menko PMK', NULL),
('361000', 'Sekretariat Kementerian Koordinator Bidang Pembangunan Manusia dan Kebudayaan', 'Sesmenko PMK', NULL),
('361100', 'Biro Perencanaan dan Kerjasama', 'Roren', NULL),
('361110', 'Bagian Perencanaan Program dan Anggaran', 'Roren 1', NULL),
('361111', 'Subbagian Penyusunan Program', 'Roren 1.1', NULL),
('361112', 'Subbagian Penyusunan Anggaran I', 'Roren 1.2', NULL),
('361113', 'Subbagian Penyusunan Anggaran II', 'Roren 1.3', NULL),
('361120', 'Bagian Kerjasama Luar Negeri', 'Roren 2', NULL),
('361121', 'Subbagian Kerjasama Bilateral dan Organisasi Internasional', 'Roren 2.1', NULL),
('361122', 'Subbagian Kerjasama Regional dan Multilateral', 'Roren 2.2', NULL),
('361130', 'Bagian Pengelolaan Kegiatan Strategis dan Kerjasama Antar Lembaga', 'Roren 3', NULL),
('361131', 'Subbagian Pengelolaan Kegiatan Strategis', 'Roren 3.1', NULL),
('361132', 'Subbagian Kerjasama Antar Lembaga', 'Roren 3.2', NULL),
('361140', 'Bagian Akuntabilitas Kinerja dan Pelaporan', 'Roren 4', NULL),
('361141', 'Subbagian Akuntabilitas Kinerja', 'Roren 4.1', NULL),
('361142', 'Subbagian Pelaporan', 'Roren 4.2', NULL),
('361200', 'Biro Hukum, Informasi dan Persidangan', 'Rohip', NULL),
('361210', 'Bagian Hukum dan Organisasi', 'Rohip 1', NULL),
('361211', 'Subbagian Penyusunan Peraturan Perundang-undangan', 'Rohip 1.1', NULL),
('361212', 'Subbagian Advokasi Hukum', 'Rohip 1.2', NULL),
('361213', 'Subbagian Organisasi dan Tatalaksana', 'Rohip 1.3', NULL),
('361220', 'Bagian Sistem dan Teknologi Informasi', 'Rohip 2', NULL),
('361221', 'Subbagian Sistem Informasi', 'Rohip 2.1', NULL),
('361222', 'Subbagian Jaringan Informasi', 'Rohip 2.2', NULL),
('361223', 'Subbagian Pendayagunaan Teknologi Informasi', 'Rohip 2.3', NULL),
('361230', 'Bagian Hubungan Masyarakat dan Perpustakaan', 'Rohip 3', NULL),
('361231', 'Subbagian Hubungan Masyarakat', 'Rohip 3.1', NULL),
('361232', 'Subbagian Publikasi dan Dokumentasi', 'Rohip 3.2', NULL),
('361233', 'Subbagian Perpustakaan', 'Rohip 3.3', NULL),
('361240', 'Bagian Persidangan dan Pengelolaan Data', 'Rohip 4', NULL),
('361241', 'Subbagian Penyusunan Bahan Persidangan', 'Rohip 4.1', NULL),
('361242', 'Subbagian Penyusunan Hasil Persidangan', 'Rohip 4.2', NULL),
('361243', 'Subbagian Pengelolaan Hasil Persidangan', 'Rohip 4.3', NULL),
('361300', 'Biro Umum', 'Roum', NULL),
('361310', 'Bagian Tata Usaha Pimpinan dan Protokol', 'Roum 1', NULL),
('361311', 'Subbagian Tata Usaha Menteri Koordinator', 'Roum 1.1', NULL),
('361312', 'Subbagian Tata Usaha Sekretaris Kementerian Koordinator', 'Roum 1.2', NULL),
('361313', 'Subbagian Tata Usaha Staf Ahli', 'Roum 1.3', NULL),
('361314', 'Subbagian Protokol', 'Roum 1.4', NULL),
('361315', 'Subbagian Perjalanan Dinas', 'Roum 1.5', NULL),
('361320', 'Bagian Kepegawaian dan Kearsipan', 'Roum 2', NULL),
('361321', 'Subbagian Mutasi dan Data Kepegawaian', 'Roum 2.1', NULL),
('361322', 'Subbagian Pengembangan dan Seleksi', 'Roum 2.2', NULL),
('361323', 'Subbagian Kearsipan', 'Roum 2.3', NULL),
('361330', 'Bagian Keuangan', 'Roum 3', NULL),
('361331', 'Subbagian Perbendaharaan', 'Roum 3.1', NULL),
('361332', 'Subbagian Verifikasi', 'Roum 3.2', NULL),
('361333', 'Subbagian Akuntansi dan Pelaporan', 'Roum 3.3', NULL),
('361340', 'Bagian Rumah Tangga', 'Roum 4', NULL),
('361341', 'Subbagian Perlengkapan', 'Roum 4.1', NULL),
('361342', 'Subbagian Urusan Dalam', 'Roum 4.2', NULL),
('361343', 'Subbagian Inventaris dan Perawatan', 'Roum 4.3', NULL),
('361400', 'Inspektorat', 'Inspektorat', NULL),
('361401', 'Subbagian Tata Usaha Inspektorat', 'TUINS', NULL),
('361500', 'Sekretariat Dewan Jaminan Sosial Nasional', 'DJSN', NULL),
('361510', 'Bagian Umum', 'DJSN 1', NULL),
('361511', 'Subbagian Perencanaan Program, Anggaran dan Pelaporan', 'DJSN 1.1', NULL),
('361512', 'Subbagian Tata Usaha', 'DJSN 1.2', NULL),
('361513', 'Subbagian Keuangan', 'DJSN 1.3', NULL),
('361520', 'Bagian Hubungan Antarlembaga dan Partisipasi Masyarakat', 'DJSN 2', NULL),
('361521', 'Subbagian Hubungan Antar Lembaga', 'DJSN 2.1', NULL),
('361522', 'Subbagian Partisipasi Masyarakat', 'DJSN 2.2', NULL),
('361530', 'Bagian Penyiapan Kebijakan Jaminan Sosial', 'DJSN 3', NULL),
('361531', 'Subbagian Penyiapan Kebijakan Jaminan Sosial Kesehatan', 'DJSN 3.1', NULL),
('361532', 'Subbagian Penyiapan Kebijakan Jaminan Sosial Ketenagakerjaan', 'DJSN 3.2', NULL),
('361540', 'Bagian Penyiapan Monitoring dan Evaluasi Penyelenggaraan Jaminan Sosial', 'DJSN 4', NULL),
('361541', 'Subbagian Penyiapan Monitoring dan Evaluasi Penyelenggaraan Jaminan Sosial Kesehatan', 'DJSN 4.1', NULL),
('361542', 'Subbagian Penyiapan Monitoring dan Evaluasi Penyelenggaraan Jaminan Sosial Ketenagakerjaan', 'DJSN 4.2', NULL),
('361543', 'Subbagian Data dan Informasi', 'DJSN 4.3', NULL),
('361600', 'Sekretariat KORPRI', 'KORPRI', NULL),
('362000', 'Deputi Bidang Koordinasi Kerawanan Sosial dan Dampak Bencana', 'Deputi 1', NULL),
('362100', 'Asisten Deputi Pengurangan Resiko Bencana', 'Asdep 1.1', NULL),
('362110', 'Bidang Mitigasi', 'Bidang 1.1.1', NULL),
('362111', 'Subbidang Peringatan Dini', 'Subbidang 1.1.1.1', NULL),
('362112', 'Subbidang Respon Dini', 'Subbidang 1.1.1.2', NULL),
('362120', 'Bidang Penguatan Kapasitas Masyarakat', 'Bidang 1.1.2', NULL),
('362121', 'Subbidang Penguatan Kapasitas Kelembagaan', 'Subbidang 1.1.2.1', NULL),
('362122', 'Subbidang Penguatan Kesadaran Masyarakat', 'Subbidang 1.1.2.2', NULL),
('362130', 'Bidang Penguatan Kegiatan dan Tata Kelola', 'Bidang 1.1.3', NULL),
('362131', 'Subbidang Penguatan Kegiatan', 'Subbidang 1.1.3.1', NULL),
('362132', 'Subbidang Tata Kelola', 'Subbidang 1.1.3.2', NULL),
('362200', 'Asisten Deputi Tanggap Cepat Bencana', 'Asdep 1.2', NULL),
('362210', 'Bidang Penanganan Pengungsi', 'Bidang 1.2.1', NULL),
('362211', 'Subbidang Penyelamatan dan Evakuasi', 'Subbidang 1.2.1.1', NULL),
('362212', 'Subbidang Penanganan Logistik', 'Subbidang 1.2.1.2', NULL),
('362220', 'Bidang Bantuan Darurat', 'Bidang 1.2.2', NULL),
('362221', 'Subbidang Bantuan Pemerintah', 'Subbidang 1.2.2.1', NULL),
('362222', 'Subbidang Bantuan Non Pemerintah', 'Subbidang 1.2.2.2', NULL),
('362300', 'Asisten Deputi Penanganan Pasca Bencana', 'Asdep 1.3', NULL),
('362310', 'Bidang Pemulihan', 'Bidang 1.3.1', NULL),
('362311', 'Subbidang Rehabilitasi', 'Subbidang 1.3.1.1', NULL),
('362312', 'Subbidang Rekonstruksi', 'Subbidang 1.3.1.2', NULL),
('362320', 'Bidang Pemberdayaan Masyarakat', 'Bidang 1.3.2', NULL),
('362321', 'Subbidang Pemberdayaan Ekonomi', 'Subbidang 1.3.2.1', NULL),
('362322', 'Subbidang Pemberdayaan Sosial', 'Subbidang 1.3.2.2', NULL),
('362400', 'Asisten Deputi Konflik Sosial', 'Asdep 1.4', NULL),
('362410', 'Bidang Pencegahan Konflik Sosial', 'Bidang 1.4.1', NULL),
('362411', 'Subbidang Pemetaan Konflik Sosial', 'Subbidang 1.4.1.1', NULL),
('362412', 'Subbidang Advokasi Konflik Sosial', 'Subbidang 1.4.1.2', NULL),
('362420', 'Bidang Pemulihan Pasca Konflik Sosial', 'Bidang 1.4.2', NULL),
('362421', 'Subbidang Pemulihan Fisik', 'Subbidang 1.4.2.1', NULL),
('362422', 'Subbidang Pemulihan Masyarakat', 'Subbidang 1.4.2.2', NULL),
('363000', 'Deputi Bidang Koordinasi Penangulangan Kemiskinan dan Perlindungan Sosial', 'Deputi 2', NULL),
('363100', 'Asisten Deputi Penanganan Kemiskinan', 'Asdep 2.1', NULL),
('363110', 'Bidang Sinkronisasi Data Kemiskinan', 'Bidang 2.1.1', NULL),
('363111', 'Subbidang Analisis Data', 'Subbidang 2.1.1.1', NULL),
('363112', 'Subbidang Penyajian dan Pelaporan Data', 'Subbidang 2.1.1.2', NULL),
('363120', 'Bidang Penanganan Kemiskinan Perkotaan dan Perdesaan', 'Bidang 2.1.2', NULL),
('363121', 'Subbidang Penanganan Kemiskinan Perkotaan', 'Subbidang 2.1.2.1', NULL),
('363122', 'Subbidang Penanganan Kemiskinan Perdesaan', 'Subbidang 2.1.2.2', NULL),
('363130', 'Bidang Penguatan Kegiatan dan Tata Kelola', 'Bidang 2.1.3', NULL),
('363131', 'Subbidang Penguatan Kegiatan', 'Subbidang 2.1.3.1', NULL),
('363132', 'Subbidang Tata Kelola', 'Subbidang 2.1.3.2', NULL),
('363200', 'Asisten Deputi Kompensasi Sosial', 'Asdep 2.2', NULL),
('363210', 'Bidang Kompensasi Pangan', 'Bidang 2.2.1', NULL),
('363211', 'Subbidang Kompensasi Pangan Bersyarat', 'Subbidang 2.2.1.1', NULL),
('363212', 'Subbidang Kompensasi Pangan Tidak Bersyarat', 'Subbidang 2.2.1.2', NULL),
('363220', 'Bidang Kompensasi Non Pangan', 'Bidang 2.2.2', NULL),
('363221', 'Subbidang Kompensasi Non Pangan Bersyarat', 'Subbidang 2.2.2.1', NULL),
('363222', 'Subbidang Kompensasi Non Pangan Tidak Bersyarat', 'Subbidang 2.2.2.2', NULL),
('363300', 'Asisten Deputi Jaminan Sosial', 'Asdep 2.3', NULL),
('363310', 'Bidang Asistensi Sosial', 'Bidang 2.3.1', NULL),
('363311', 'Subbidang Program Asistensi Sosial', 'Subbidang 2.3.1.1', NULL),
('363312', 'Subbidang Kerjasama Asistensi Sosial', 'Subbidang 2.3.1.2', NULL),
('363320', 'Bidang Asuransi Sosial', 'Bidang 2.3.2', NULL),
('363321', 'Subbidang Program Asuransi Sosial', 'Subbidang 2.3.2.1', NULL),
('363322', 'Subbidang Kerjasama Asuransi Sosial', 'Subbidang 2.3.2.2', NULL),
('363400', 'Asisten Deputi Pemberdayaan Disabilitas dan Lanjut Usia', 'Asdep 2.4', NULL),
('363410', 'Bidang Pemberdayaan Disabilitas', 'Bidang 2.4.1', NULL),
('363411', 'Subbidang Kelembagaan Disabilitas', 'Subbidang 2.4.1.1', NULL),
('363412', 'Subbidang Kesejahteraan Disabilitas', 'Subbidang 2.4.1.2', NULL),
('363420', 'Bidang Pemberdayaan Lanjut Usia', 'Bidang 2.4.2', NULL),
('363421', 'Subbidang Kelembagaan Lanjut Usia', 'Subbidang 2.4.2.1', NULL),
('363422', 'Subbidang Kesejahteraan Lanjut Usia', 'Subbidang 2.4.2.2', NULL),
('364000', 'Deputi Bidang Koordinasi Peningkatan Kesehatan', 'Deputi 3', NULL),
('364100', 'Asisten Deputi Ketahanan Gizi, Kesehatan Ibu dan Anak, dan Kesehatan Lingkungan', 'Asdep 3.1', NULL),
('364110', 'Bidang Ketahanan Gizi dan Kesehatan Ibu dan Anak', 'Bidang 3.1.1', NULL),
('364111', 'Subbidang Perbaikan Gizi Masyarakat, Kesehatan Ibu dan Anak', 'Subbidang 3.1.1.1', NULL),
('364112', 'Subbidang Mutu Gizi', 'Subbidang 3.1.1.2', NULL),
('364120', 'Bidang Kesehatan Lingkungan', 'Bidang 3.1.2', NULL),
('364121', 'Subbidang Sanitasi', 'Subbidang 3.1.2.1', NULL),
('364122', 'Subbidang Penyehatan Air Bersih', 'Subbidang 3.1.2.2', NULL),
('364130', 'Bidang Penguatan Kegiatan dan Tata Kelola', 'Bidang 3.1.3', NULL),
('364131', 'Subbidang Penguatan Kegiatan', 'Subbidang 3.1.3.1', NULL),
('364132', 'Subbidang Tata Kelola', 'Subbidang 3.1.3.2', NULL),
('364200', 'Asisten Deputi Pencegahan dan Penanggulangan Penyakit', 'Asdep 3.2', NULL),
('364210', 'Bidang Penyakit Tidak Menular', 'Bidang 3.2.1', NULL),
('364211', 'Subbidang Pengendalian Penyakit Tidak Menular', 'Subbidang 3.2.1.1', NULL),
('364212', 'Subbidang Dampak NAPZA', 'Subbidang 3.2.1.2', NULL),
('364220', 'Bidang Penyakit Menular', 'Bidang 3.2.2', NULL),
('364221', 'Subbidang Zoonosis', 'Subbidang 3.2.2.1', NULL),
('364222', 'Subbidang Non Zoonosis', 'Subbidang 3.2.2.2', NULL),
('364300', 'Asisten Deputi Pelayanan Kesehatan', 'Asdep 3.3', NULL),
('364310', 'Bidang Pelayanan Dasar dan Rujukan', 'Bidang 3.3.1', NULL),
('364311', 'Subbidang Pelayanan Kesehatan Dasar', 'Subbidang 3.3.1.1', NULL),
('364312', 'Subbidang Pelayanan Rujukan Spesialistik', 'Subbidang 3.3.1.2', NULL),
('364320', 'Bidang Pembiayaan Kesehatan dan Farmasi', 'Bidang 3.3.2', NULL),
('364321', 'Subbidang Pembiayaan dan Asuransi Sosial', 'Subbidang 3.3.2.1', NULL),
('364322', 'Subbidang Farmasi dan Kesehatan Tradisional', 'Subbidang 3.3.2.2', NULL),
('364400', 'Asisten Deputi Kependudukan dan Keluarga Berencana', 'Asdep 3.4', NULL),
('364410', 'Bidang Kependudukan', 'Bidang 3.4.1', NULL),
('364411', 'Subbidang Penyebaran Penduduk', 'Subbidang 3.4.1.1', NULL),
('364412', 'Subbidang Administrasi Kependudukan', 'Subbidang 3.4.1.2', NULL),
('364420', 'Bidang Keluarga Berencana', 'Bidang 3.4.2', NULL),
('364421', 'Subbidang Partisipasi Masyarakat', 'Subbidang 3.4.2.1', NULL),
('364422', 'Subbidang Pelayanan Kontrasepsi', 'Subbidang 3.4.2.2', NULL),
('365000', 'Deputi Bidang Koordinasi Pendidikan dan Agama', 'Deputi 4', NULL),
('365100', 'Asisten Deputi Pendidikan Menengah dan Keterampilan Bekerja', 'Asdep 4.1', NULL),
('365110', 'Bidang Pendidikan Menengah', 'Bidang 4.1.1', NULL),
('365111', 'Subbidang Ketenagaan dan Kesiswaan', 'Subbidang 4.1.1.1', NULL),
('365112', 'Subbidang Mutu Sarana dan Prasarana', 'Subbidang 4.1.1.2', NULL),
('365120', 'Bidang Pendidikan Keterampilan Bekerja', 'Bidang 4.1.2', NULL),
('365121', 'Subbidang Ketenagaan dan Kesiswaan', 'Subbidang 4.1.2.1', NULL),
('365122', 'Subbidang Mutu Sarana dan Prasarana', 'Subbidang 4.1.2.2', NULL),
('365130', 'Bidang Penguatan Kegiatan dan Tata Kelola', 'Bidang 4.1.3', NULL),
('365131', 'Subbidang Penguatan Kegiatan', 'Subbidang 4.1.3.1', NULL),
('365132', 'Subbidang Tata Kelola', 'Subbidang 4.1.3.2', NULL),
('365200', 'Asisten Deputi PAUD, DIKDAS dan Pendidikan Masyarakat', 'Asdep 4.2', NULL),
('365210', 'Bidang PAUD dan Pendidikan Masyarakat', 'Bidang 4.2.1', NULL),
('365211', 'Subbidang Ketenagaan dan Kesiswaan', 'Subbidang 4.2.1.1', NULL),
('365212', 'Subbidang Mutu Sarana dan Prasarana', 'Subbidang 4.2.1.2', NULL),
('365220', 'Bidang Pendidikan Dasar', 'Bidang 4.2.2', NULL),
('365221', 'Subbidang Ketenagaan dan Kesiswaan', 'Subbidang 4.2.2.1', NULL),
('365222', 'Subbidang Mutu Sarana dan Prasarana', 'Subbidang 4.2.2.2', NULL),
('365300', 'Asisten Deputi Pendidikan Tinggi dan Pemanfaatan IPTEK', 'Asdep 4.3', NULL),
('365310', 'Bidang Pendidikan Tinggi', 'Bidang 4.3.1', NULL),
('365311', 'Subbidang Kemahasiswaan dan Akademik', 'Subbidang 4.3.1.1', NULL),
('365312', 'Subbidang Ketenagaan, Sarana dan Prasarana', 'Subbidang 4.3.1.2', NULL),
('365320', 'Bidang Pemanfaatan Ilmu Pengetahuan dan Teknologi', 'Bidang 4.3.2', NULL),
('365321', 'Subbidang Kreatifitas dan Inovasi Teknologi', 'Subbidang 4.3.2.1', NULL),
('365322', 'Subbidang Kerjasama dan Kelembagaan', 'Subbidang 4.3.2.2', NULL),
('365400', 'Asisten Deputi Pemberdayaan dan Kerukunan Umat  Beragama', 'Asdep 4.4', NULL),
('365410', 'Bidang Pemberdayaan Umat Beragama', 'Bidang 4.4.1', NULL),
('365411', 'Subbidang Pemberdayaan Zakat, Infak, Shadaqoh, Wakaf, dan Jaminan Produk Halal', 'Subbidang 4.4.1.1', NULL),
('365412', 'Subbidang Kerjasama dan Kelembagaan', 'Subbidang 4.4.1.2', NULL),
('365420', 'Bidang Kerukunan Umat  Beragama', 'Bidang 4.4.2', NULL),
('365421', 'Subbidang Penanganan Isu Kerukunan', 'Subbidang 4.4.2.1', NULL),
('365422', 'Subbidang Pengembangan Dialog Antar Umat', 'Subbidang 4.4.2.2', NULL),
('365500', 'Asisten Deputi Pembinaan Umat Beragama, Pendidikan Agama dan Keagamaan', 'Asdep 4.5', NULL),
('365510', 'Bidang Pembinaan Umat Beragama', 'Bidang 4.5.1', NULL),
('365511', 'Subbidang Pelayanan dan Penghayatan Agama', 'Subbidang 4.5.1.1', NULL),
('365512', 'Subbidang Bimbingan Haji dan Umroh', 'Subbidang 4.5.1.2', NULL),
('365520', 'Bidang Pendidikan Agama dan Pendidikan Keagamaan', 'Bidang 4.5.2', NULL),
('365521', 'Subbidang Pendidikan Agama', 'Subbidang 4.5.2.1', NULL),
('365522', 'Subbidang Pendidikan Keagamaan', 'Subbidang 4.5.2.2', NULL),
('366000', 'Deputi Bidang Koordinasi Kebudayaan', 'Deputi 5', NULL),
('366100', 'Asisten Deputi Kepemudaan', 'Asdep 5.1', NULL),
('366110', 'Bidang Pemberdayaan Pemuda', 'Bidang 5.1.1', NULL),
('366111', 'Subbidang Kepemimpinan Pemuda', 'Subbidang 5.1.1.1', NULL),
('366112', 'Subbidang Karakter Pemuda', 'Subbidang 5.1.1.2', NULL),
('366120', 'Bidang Pengembangan Pemuda', 'Bidang 5.1.2', NULL),
('366121', 'Subbidang Peningkatan Kreativitas Pemuda', 'Subbidang 5.1.2.1', NULL),
('366122', 'Subbidang Kewirausahaan Pemuda', 'Subbidang 5.1.2.2', NULL),
('366130', 'Bidang Penguatan Kegiatan dan Tata Kelola', 'Bidang 5.1.3', NULL),
('366131', 'Subbidang Penguatan Kegiatan', 'Subbidang 5.1.3.1', NULL),
('366132', 'Subbidang Tata Kelola', 'Subbidang 5.1.3.2', NULL),
('366200', 'Asisten Deputi Nilai dan Kreativitas Budaya', 'Asdep 5.2', NULL),
('366210', 'Bidang Nilai Budaya dan Karakter Bangsa', 'Bidang 5.2.1', NULL),
('366211', 'Subbidang Pengembangan Nilai Budaya', 'Subbidang 5.2.1.1', NULL),
('366212', 'Subbidang Kelembagaan dan Pembudayaan Karakter Bangsa', 'Subbidang 5.2.1.2', NULL),
('366220', 'Bidang Industri Budaya', 'Bidang 5.2.2', NULL),
('366221', 'Subbidang Seni dan Film', 'Subbidang 5.2.2.1', NULL),
('366222', 'Subbidang Budaya Kreatif', 'Subbidang 5.2.2.2', NULL),
('366300', 'Asisten Deputi Warisan Budaya', 'Asdep 5.3', NULL),
('366310', 'Bidang Cagar Budaya dan Permuseuman', 'Bidang 5.3.1', NULL),
('366311', 'Subbidang Cagar Budaya', 'Subbidang 5.3.1.1', NULL),
('366312', 'Subbidang Permuseuman', 'Subbidang 5.3.1.2', NULL),
('366320', 'Bidang Sejarah dan Warisan Dunia', 'Bidang 5.3.2', NULL),
('366321', 'Subbidang Sejarah', 'Subbidang 5.3.2.1', NULL),
('366322', 'Subbidang Warisan Dunia', 'Subbidang 5.3.2.2', NULL),
('366400', 'Asisten Deputi Keolahragaan', 'Asdep 5.4', NULL),
('366410', 'Bidang Prestasi Olahraga', 'Bidang 5.4.1', NULL),
('366411', 'Subbidang Pembibitan dan IPTEK Olahraga', 'Subbidang 5.4.1.1', NULL),
('366412', 'Subbidang Organisasi dan Tenaga Keolahragaan', 'Subbidang 5.4.1.2', NULL),
('366420', 'Bidang Pembudayaan Olahraga', 'Bidang 5.4.2', NULL),
('366421', 'Subbidang Olahraga Pendidikan dan Layanan Khusus', 'Subbidang 5.4.2.1', NULL),
('366422', 'Subbidang Olahraga Rekreasi dan Industri Olahraga', 'Subbidang 5.4.2.2', NULL),
('367000', 'Deputi Bidang Koordinasi Perlindungan Perempuan dan Anak', 'Deputi 6', NULL),
('367100', 'Asisten Deputi Ketahanan dan Kesejahteraan Keluarga', 'Asdep 6.1', NULL),
('367110', 'Bidang Ketahanan Keluarga', 'Bidang 6.1.1', NULL),
('367111', 'Subbidang Peningkatan Ketahanan Fisik Keluarga', 'Subbidang 6.1.1.1', NULL),
('367112', 'Subbidang Peningkatan Ketahanan Mental Spiritual Keluarga', 'Subbidang 6.1.1.2', NULL),
('367120', 'Bidang Peningkatan Kesejahteraan Keluarga', 'Bidang 6.1.2', NULL),
('367121', 'Subbidang Pemberdayaan Keluarga', 'Subbidang 6.1.2.1', NULL),
('367122', 'Subbidang Bina Pra Keluarga', 'Subbidang 6.1.2.2', NULL),
('367130', 'Bidang Penguatan Kegiatan dan Tata Kelola', 'Bidang 6.1.3', NULL),
('367131', 'Subbidang Penguatan Kegiatan', 'Subbidang 6.1.3.1', NULL),
('367132', 'Subbidang Tata Kelola', 'Subbidang 6.1.3.2', NULL),
('367200', 'Asisten Deputi Pemberdayaan Perempuan', 'Asdep 6.2', NULL),
('367210', 'Bidang Pemberdayaan Bidang Ekonomi', 'Bidang 6.2.1', NULL),
('367211', 'Subbidang Pengembangan Permodalan dan Usaha', 'Subbidang 6.2.1.1', NULL),
('367212', 'Subbidang Peningkatan Kompetensi', 'Subbidang 6.2.1.2', NULL),
('367220', 'Bidang Pemberdayaan Bidang Sosial dan Budaya', 'Bidang 6.2.2', NULL),
('367221', 'Subbidang Pemberdayaan Bidang Sosial', 'Subbidang 6.2.2.1', NULL),
('367222', 'Subbidang Pemberdayaan Bidang Budaya', 'Subbidang 6.2.2.2', NULL),
('367300', 'Asisten Deputi Pemenuhan Hak dan Perlindungan Perempuan', 'Asdep 6.3', NULL),
('367310', 'Bidang Pemenuhan Hak Perempuan', 'Bidang 6.3.1', NULL),
('367311', 'Subbidang Pemenuhan Hak Sosial dan Budaya', 'Subbidang 6.3.1.1', NULL),
('367312', 'Subbidang Pemenuhan Hak Politik dan Hukum', 'Subbidang 6.3.1.2', NULL),
('367320', 'Bidang Perlindungan Perempuan', 'Bidang 6.3.2', NULL),
('367321', 'Subbidang Penanganan Kekerasan Terhadap Perempuan', 'Subbidang 6.3.2.1', NULL),
('367322', 'Subbidang Penanganan Masalah Sosial Perempuan', 'Subbidang 6.3.2.2', NULL),
('367400', 'Asisten Deputi Pemenuhan Hak dan Perlindungan Anak', 'Asdep 6.4', NULL),
('367410', 'Bidang Pemenuhan Hak Anak', 'Bidang 6.4.1', NULL),
('367411', 'Subbidang Tumbuh Kembang Anak', 'Subbidang 6.4.1.1', NULL),
('367412', 'Subbidang Pemenuhan Hak Sipil, Pendidikan, dan Kesehatan Anak', 'Subbidang 6.4.1.2', NULL),
('367420', 'Bidang Perlindungan Anak', 'Bidang 6.4.2', NULL),
('367421', 'Subbidang Penanganan Kekerasan Terhadap Anak', 'Subbidang 6.4.2.1', NULL),
('367422', 'Subbidang Penanganan Masalah Sosial Anak', 'Subbidang 6.4.2.2', NULL),
('368000', 'Deputi Bidang Koordinasi Pemberdayaan Masyarakat, Desa dan Kawasan', 'Deputi 7', NULL),
('368100', 'Asisten Deputi Pemberdayaan Masyarakat', 'Asdep 7.1', NULL),
('368110', 'Bidang Pengembangan Ekonomi', 'Bidang 7.1.1', NULL),
('368111', 'Subbidang Permodalan dan Keuangan Mikro', 'Subbidang 7.1.1.1', NULL),
('368112', 'Subbidang Pengembangan Usaha dan Pemasaran', 'Subbidang 7.1.1.2', NULL),
('368120', 'Bidang Pengembangan Sosial Budaya', 'Bidang 7.1.2', NULL),
('368121', 'Subbidang Infrastruktur dan Teknologi', 'Subbidang 7.1.2.1', NULL),
('368122', 'Subbidang Kelembagaan dan Kemitraan', 'Subbidang 7.1.2.2', NULL),
('368130', 'Bidang Penguatan Kegiatan dan Tata Kelola', 'Bidang 7.1.3', NULL),
('368131', 'Subbidang Penguatan Kegiatan', 'Subbidang 7.1.3.1', NULL),
('368132', 'Subbidang Tata Kelola', 'Subbidang 7.1.3.2', NULL),
('368200', 'Asisten Deputi Pemberdayaan Desa', 'Asdep 7.2', NULL),
('368210', 'Bidang Pengembangan Sarana dan Prasarana', 'Bidang 7.2.1', NULL),
('368211', 'Subbidang Sarana Desa', 'Subbidang 7.2.1.1', NULL),
('368212', 'Subbidang Prasarana Desa', 'Subbidang 7.2.1.2', NULL),
('368220', 'Bidang Pengelolaan Sumber Daya', 'Bidang 7.2.2', NULL),
('368221', 'Subbidang Ekonomi Kreatif', 'Subbidang 7.2.2.1', NULL),
('368222', 'Subbidang Kearifan Lokal', 'Subbidang 7.2.2.2', NULL),
('368300', 'Asisten Deputi Pemberdayaan Kawasan Pedesaan', 'Asdep 7.3', NULL),
('368310', 'Bidang Pengembangan Sarana dan Prasarana Kawasan Tertinggal', 'Bidang 7.3.1', NULL),
('368311', 'Subbidang Sarana dan Prasarana Perdesaan', 'Subbidang 7.3.1.1', NULL),
('368312', 'Subbidang Sarana dan Prasarana Pesisir', 'Subbidang 7.3.1.2', NULL),
('368320', 'Bidang Pengembangan Kemitraan dan Kelembagaan Kawasan Berkembang', 'Bidang 7.3.2', NULL),
('368321', 'Subbidang Pengembangan Kemitraan', 'Subbidang 7.3.2.1', NULL),
('368322', 'Subbidang Penguatan Kelembagaan', 'Subbidang 7.3.2.2', NULL),
('368400', 'Asisten Deputi Pemberdayaan Kawasan Strategis dan Khusus', 'Asdep 7.4', NULL),
('368410', 'Bidang Pemberdayaan Kawasan Strategis', 'Bidang 7.4.1', NULL),
('368411', 'Subbidang Permukiman dan Transmigrasi', 'Subbidang 7.4.1.1', NULL),
('368412', 'Subbidang Kawasan Terluar, Terisolir, dan Terpencil', 'Subbidang 7.4.1.2', NULL),
('368420', 'Bidang Pengembangan Kawasan Khusus', 'Bidang 7.4.2', NULL),
('368421', 'Subbidang Kawasan Industri dan Produktif', 'Subbidang 7.4.2.1', NULL),
('368422', 'Subbidang Kawasan Konservasi', 'Subbidang 7.4.2.2', NULL),
('369100', 'Staf Ahli Bidang Politik, Hukum, Keamanan, dan Hak Asasi Manusia', 'SA1', NULL),
('369200', 'Staf Ahli Bidang Multikulturalisme, Restorasi Sosial, dan Jati Diri Bangsa', 'SA2', NULL),
('369300', 'Staf Ahli Bidang Usaha Mikro, Kecil dan Menengah, Ekonomi Kreatif, dan Ketengakerjaan', 'SA3', NULL),
('369400', 'Staf Ahli Bidang Sustainable Development Goals Pasca 2015', 'SA4', NULL),
('369500', 'Staf Ahli Bidang Kependudukan', 'SA5', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_data`
--

CREATE TABLE `user_data` (
  `id` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `nama_user` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_data`
--

INSERT INTO `user_data` (`id`, `username`, `nama_user`, `password`, `level`) VALUES
('1', 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aktivitas`
--
ALTER TABLE `aktivitas`
  ADD PRIMARY KEY (`id_aktivitas`),
  ADD KEY `id_dtl_aktivitas` (`id_dtl_skp`),
  ADD KEY `fk_nip_aktivitas` (`nip`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `disiplin`
--
ALTER TABLE `disiplin`
  ADD PRIMARY KEY (`nilai_item_disiplin`);

--
-- Indexes for table `dtl_skp`
--
ALTER TABLE `dtl_skp`
  ADD PRIMARY KEY (`id_dtl_skp`),
  ADD KEY `fk_id_skp` (`id_skp`);

--
-- Indexes for table `enselon`
--
ALTER TABLE `enselon`
  ADD PRIMARY KEY (`kode_enselon`),
  ADD KEY `fk_kode_unit_enselon` (`kode_unit`);

--
-- Indexes for table `golongan`
--
ALTER TABLE `golongan`
  ADD PRIMARY KEY (`kode_golongan`);

--
-- Indexes for table `integritas`
--
ALTER TABLE `integritas`
  ADD PRIMARY KEY (`nilai_item_integritas`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`kode_jabatan`),
  ADD KEY `fk_kode_unit_jabatan` (`kode_unit`),
  ADD KEY `fk_kode_kel_jabatan` (`kode_kelompok`);

--
-- Indexes for table `kel_jabatan`
--
ALTER TABLE `kel_jabatan`
  ADD PRIMARY KEY (`kode_kelompok`);

--
-- Indexes for table `kepempipinan`
--
ALTER TABLE `kepempipinan`
  ADD PRIMARY KEY (`nilai_item_kepempipinan`);

--
-- Indexes for table `kerjasama`
--
ALTER TABLE `kerjasama`
  ADD PRIMARY KEY (`nilai_item_kerjasama`);

--
-- Indexes for table `komitmen`
--
ALTER TABLE `komitmen`
  ADD PRIMARY KEY (`nilai_item_komitmen`);

--
-- Indexes for table `layanan`
--
ALTER TABLE `layanan`
  ADD PRIMARY KEY (`nilai_item_layanan`);

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
-- Indexes for table `penilai`
--
ALTER TABLE `penilai`
  ADD PRIMARY KEY (`kode_penilai`),
  ADD KEY `fk_nip_penilai` (`nip_penilai`),
  ADD KEY `fk_nip_dinilai` (`nip_dinilai`);

--
-- Indexes for table `penilaian`
--
ALTER TABLE `penilaian`
  ADD PRIMARY KEY (`kode_penilaian`),
  ADD KEY `fk_id_skp_penilaian` (`id_skp_penilaian`),
  ADD KEY `fk_no_tugas_penilaian` (`no_tugas_penilaian`),
  ADD KEY `fk_nilai_perilaku` (`nilai_item_perilaku`),
  ADD KEY `fk_nilai_kerjasama` (`nilai_item_kerjasama`),
  ADD KEY `fk_nilai_layanan` (`nilai_item_layanan`),
  ADD KEY `fk_nilai_disiplin` (`nilai_item_disiplin`),
  ADD KEY `fk_nilai_integritas` (`nilai_item_integritas`),
  ADD KEY `fk_nilai_kepempipinan` (`nilai_item_kepempipinan`);

--
-- Indexes for table `perilaku`
--
ALTER TABLE `perilaku`
  ADD PRIMARY KEY (`nilai_item_perilaku`);

--
-- Indexes for table `skp`
--
ALTER TABLE `skp`
  ADD PRIMARY KEY (`id_skp`),
  ADD KEY `fk_kode_penilai` (`kode_penilai`),
  ADD KEY `fk_id_dtl_skp` (`id_dtl_skp`),
  ADD KEY `fk_nip` (`nip`);

--
-- Indexes for table `tugas_tambahan`
--
ALTER TABLE `tugas_tambahan`
  ADD PRIMARY KEY (`no_tugas`),
  ADD KEY `fk_kode_penilaian` (`kode_penilaian`),
  ADD KEY `fk_id_skp_master` (`id_skp_master`);

--
-- Indexes for table `unit_kerja`
--
ALTER TABLE `unit_kerja`
  ADD PRIMARY KEY (`kode_unit`),
  ADD KEY `fk_kode_enselon` (`kode_enselon`);

--
-- Indexes for table `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=366;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `aktivitas`
--
ALTER TABLE `aktivitas`
  ADD CONSTRAINT `fk_nip_aktivitas` FOREIGN KEY (`nip`) REFERENCES `pegawai` (`nip`),
  ADD CONSTRAINT `id_dtl_aktivitas` FOREIGN KEY (`id_dtl_skp`) REFERENCES `dtl_skp` (`id_dtl_skp`);

--
-- Ketidakleluasaan untuk tabel `dtl_skp`
--
ALTER TABLE `dtl_skp`
  ADD CONSTRAINT `fk_id_skp` FOREIGN KEY (`id_skp`) REFERENCES `skp` (`id_skp`);

--
-- Ketidakleluasaan untuk tabel `enselon`
--
ALTER TABLE `enselon`
  ADD CONSTRAINT `fk_kode_unit_enselon` FOREIGN KEY (`kode_unit`) REFERENCES `unit_kerja` (`kode_unit`);

--
-- Ketidakleluasaan untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  ADD CONSTRAINT `fk_kode_kel_jabatan` FOREIGN KEY (`kode_kelompok`) REFERENCES `kel_jabatan` (`kode_kelompok`),
  ADD CONSTRAINT `fk_kode_unit_jabatan` FOREIGN KEY (`kode_unit`) REFERENCES `unit_kerja` (`kode_unit`);

--
-- Ketidakleluasaan untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `fk_golongan_kode_golongan` FOREIGN KEY (`kode_golongan`) REFERENCES `golongan` (`kode_golongan`),
  ADD CONSTRAINT `fk_jabatan_kode_jabatan` FOREIGN KEY (`kode_jabatan`) REFERENCES `jabatan` (`kode_jabatan`),
  ADD CONSTRAINT `fk_nip_atasan` FOREIGN KEY (`nip_atasan`) REFERENCES `pegawai` (`nip`),
  ADD CONSTRAINT `fk_unit_kode_unit` FOREIGN KEY (`kode_unit`) REFERENCES `unit_kerja` (`kode_unit`);

--
-- Ketidakleluasaan untuk tabel `penilai`
--
ALTER TABLE `penilai`
  ADD CONSTRAINT `fk_nip_dinilai` FOREIGN KEY (`nip_dinilai`) REFERENCES `pegawai` (`nip`),
  ADD CONSTRAINT `fk_nip_penilai` FOREIGN KEY (`nip_penilai`) REFERENCES `pegawai` (`nip`);

--
-- Ketidakleluasaan untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  ADD CONSTRAINT `fk_id_skp_penilaian` FOREIGN KEY (`id_skp_penilaian`) REFERENCES `skp` (`id_skp`),
  ADD CONSTRAINT `fk_nilai_disiplin` FOREIGN KEY (`nilai_item_disiplin`) REFERENCES `disiplin` (`nilai_item_disiplin`),
  ADD CONSTRAINT `fk_nilai_integritas` FOREIGN KEY (`nilai_item_integritas`) REFERENCES `integritas` (`nilai_item_integritas`),
  ADD CONSTRAINT `fk_nilai_kepempipinan` FOREIGN KEY (`nilai_item_kepempipinan`) REFERENCES `kepempipinan` (`nilai_item_kepempipinan`),
  ADD CONSTRAINT `fk_nilai_kerjasama` FOREIGN KEY (`nilai_item_kerjasama`) REFERENCES `kerjasama` (`nilai_item_kerjasama`),
  ADD CONSTRAINT `fk_nilai_layanan` FOREIGN KEY (`nilai_item_layanan`) REFERENCES `layanan` (`nilai_item_layanan`),
  ADD CONSTRAINT `fk_nilai_perilaku` FOREIGN KEY (`nilai_item_perilaku`) REFERENCES `perilaku` (`nilai_item_perilaku`),
  ADD CONSTRAINT `fk_no_tugas_penilaian` FOREIGN KEY (`no_tugas_penilaian`) REFERENCES `tugas_tambahan` (`no_tugas`);

--
-- Ketidakleluasaan untuk tabel `skp`
--
ALTER TABLE `skp`
  ADD CONSTRAINT `fk_id_dtl_skp` FOREIGN KEY (`id_dtl_skp`) REFERENCES `dtl_skp` (`id_dtl_skp`),
  ADD CONSTRAINT `fk_kode_penilai` FOREIGN KEY (`kode_penilai`) REFERENCES `penilai` (`kode_penilai`),
  ADD CONSTRAINT `fk_nip` FOREIGN KEY (`nip`) REFERENCES `pegawai` (`nip`);

--
-- Ketidakleluasaan untuk tabel `tugas_tambahan`
--
ALTER TABLE `tugas_tambahan`
  ADD CONSTRAINT `fk_id_skp_master` FOREIGN KEY (`id_skp_master`) REFERENCES `skp` (`id_skp`),
  ADD CONSTRAINT `fk_kode_penilaian` FOREIGN KEY (`kode_penilaian`) REFERENCES `penilaian` (`kode_penilaian`);

--
-- Ketidakleluasaan untuk tabel `unit_kerja`
--
ALTER TABLE `unit_kerja`
  ADD CONSTRAINT `fk_kode_enselon` FOREIGN KEY (`kode_enselon`) REFERENCES `enselon` (`kode_enselon`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
