-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Jan 2026 pada 13.11
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `campushub_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `image`, `created_at`) VALUES
(8, 'Manajemen Waktu Mahasiswa: Kunci Sukses Kuliah Tanpa Stres', 'Ujian Akhir Semester (UAS) sering menjadi momen yang menegangkan bagi mahasiswa. Banyak mahasiswa merasa cemas karena tekanan nilai dan banyaknya materi yang harus dipelajari dalam waktu singkat.\n\nPersiapan yang matang merupakan kunci utama menghadapi UAS dengan percaya diri. Mahasiswa disarankan untuk mulai belajar jauh hari sebelum ujian, bukan hanya mengandalkan sistem kebut semalam. Membuat rangkuman materi dan latihan soal dapat membantu memperkuat pemahaman.\n\nSelain belajar, menjaga kondisi fisik juga sangat penting. Tidur yang cukup, makan teratur, dan menjaga kesehatan tubuh akan membantu otak bekerja lebih optimal saat ujian. Hindari begadang berlebihan karena justru dapat menurunkan konsentrasi.\n\nDengan persiapan yang baik dan sikap positif, mahasiswa dapat menghadapi UAS dengan lebih tenang dan percaya diri. Ingat bahwa ujian adalah bagian dari proses belajar, bukan satu-satunya penentu kesuksesan.', 'https://images.unsplash.com/photo-1516321318423-f06f85e504b3', '2026-01-16 17:37:17'),
(9, 'Menghadapi UAS Tanpa Panik: Belajar Santai Tapi Tetep Masuk', 'Ujian Akhir Semester sering jadi momen paling bikin deg-degan. Materi banyak, waktu terbatas, dan tekanan buat dapet nilai bagus kadang bikin stres duluan sebelum ujian dimulai. Padahal, panik justru bikin susah fokus dan gampang lupa materi.\n\nSalah satu cara paling efektif buat ngurangin stres UAS adalah mulai belajar dari jauh-jauh hari. Nggak perlu lama-lama, yang penting konsisten. Belajar 30–60 menit per hari jauh lebih efektif dibanding kebut semalaman. Selain itu, coba pelajari pola soal dari tahun sebelumnya supaya punya gambaran.\n\nJangan lupa jaga kondisi badan. Tidur cukup dan makan teratur itu penting banget. Percuma belajar mati-matian kalau pas ujian badan drop. Ingat, UAS itu cuma salah satu bagian dari perjalanan kuliah, bukan penentu masa depan lu sepenuhnya.atu-satunya penentu kesuksesan.', 'https://images.unsplash.com/photo-1503676260728-1c00da094a0b', '2026-01-20 05:00:44'),
(11, 'Kuliah Online Bikin Mager? Ini Cara Biar Tetep Produktif', 'Kuliah online emang fleksibel, tapi jujur aja, sering bikin mager. Bangun kesiangan, kelas sambil rebahan, dan akhirnya materi nggak masuk sama sekali. Kalau dibiarkan terus, bisa-bisa satu semester cuma lewat gitu aja.\n\nSolusinya, coba buat rutinitas seolah-olah lu kuliah offline. Bangun lebih pagi, mandi, dan duduk di tempat khusus buat belajar. Hal kecil kayak gini ternyata bisa bantu otak lebih siap buat fokus.\n\nSelain itu, aktif di kelas online juga penting. Jangan cuma login terus ditinggal. Ikut diskusi, nanya, atau sekadar respon dosen bisa bikin lu lebih engaged sama materi. Kuliah online tetap bisa produktif asal dijalanin dengan disiplin.', 'https://ugm.ac.id/wp-content/uploads/2020/05/19052015898723711926612952.jpg', '2026-01-20 05:06:54'),
(12, 'Burnout Akademik Itu Nyata, Jangan Disepelekan', 'Pernah ngerasa capek banget sama kuliah sampai kehilangan motivasi? Bisa jadi itu tanda burnout akademik. Kondisi ini sering dialami mahasiswa yang terlalu memaksakan diri tanpa ngasih waktu istirahat yang cukup.\n\nBurnout biasanya muncul pelan-pelan. Awalnya cuma capek, lama-lama jadi malas, dan akhirnya kehilangan minat belajar. Kalau udah sampai tahap ini, prestasi akademik biasanya ikut turun.\n\nCara mencegahnya adalah dengan lebih peka sama kondisi diri sendiri. Jangan ragu buat istirahat, curhat ke teman, atau minta bantuan dosen kalau memang butuh. Ingat, kesehatan mental sama pentingnya dengan nilai akademik.', 'https://assets.kompasiana.com/items/album/2025/01/13/whatsapp-image-2025-01-13-at-10-57-05-am-1-67849ed6c925c42fc9583112.jpeg?t=o&v=770', '2026-01-20 05:10:25'),
(13, 'Skill Non-Akademik: Senjata Rahasia Mahasiswa Zaman Sekarang', 'Nilai IPK memang penting, tapi di dunia kerja nanti, itu bukan satu-satunya yang dilihat. Banyak lulusan pintar secara akademik, tapi kesulitan beradaptasi karena kurang skill non-akademik seperti komunikasi, kerja tim, dan problem solving.\n\nSkill ini bisa diasah sejak kuliah lewat organisasi, kepanitiaan, atau project bareng teman. Dari situ, mahasiswa belajar ngatur waktu, kerja sama, sampai menghadapi konflik. Pengalaman seperti ini sering kali justru lebih berharga daripada teori di kelas.\n\nDengan menggabungkan kemampuan akademik dan non-akademik, mahasiswa bakal lebih siap menghadapi dunia profesional. Jadi, jangan ragu buat aktif dan eksplor pengalaman selama masih kuliah.', 'https://inforadar.disway.id/upload/680631433ec9fa1dc0f98fa46713ac85.jpeg', '2026-01-20 05:11:38'),
(15, 'Kuliah Capek? Ini Cara Mahasiswa Tetap Waras di Tengah Deadline', 'Jadi mahasiswa itu sering keliatan santai dari luar, tapi yang ngejalanin tau sendiri capeknya kaya apa. Tugas datang silih berganti, deadline mepet, belum lagi kalo ada kuis mendadak atau revisi yang ga kelar-kelar. Kadang baru aja mau istirahat, eh inget masih ada satu tugas yang belum dikumpulin.\n\nDi kondisi kaya gini, wajar banget kalo lu ngerasa capek secara mental. Banyak mahasiswa maksa diri buat terus produktif tanpa ngasih waktu istirahat yang cukup. Padahal, otak juga punya batas. Kalau dipaksa terus, yang ada malah stres, fokus turun, dan kerjaan jadi ga maksimal.\n\nSalah satu cara paling sederhana buat bertahan adalah ngatur ritme hidup. Ga semua hal harus dikerjain sekaligus. Lu bisa mulai dengan bikin daftar prioritas, mana yang harus dikerjain sekarang, mana yang masih bisa nunggu. Kerjain satu per satu, jangan ditumpuk di kepala.\n\nDan yang paling penting, jangan ngerasa bersalah buat istirahat. Rebahan, nonton, atau sekadar jalan keluar bentar itu bukan malas, tapi bagian dari menjaga kesehatan mental. Mahasiswa yang waras jauh lebih kuat daripada mahasiswa yang terus maksa.', 'https://assets.pikiran-rakyat.com/crop/0x0:0x0/720x0/webp/photo/2025/11/16/2396530775.jpg', '2026-01-25 10:06:27'),
(16, 'Quarter Life Crisis di Bangku Kuliah Itu Nyata', 'Pernah ngerasa bingung sama masa depan padahal masih kuliah? Ngerasa salah jurusan, ga tau mau kerja apa, atau ngerasa tertinggal dari temen-temen sendiri? Kalau iya, lu ga sendirian.\n\nItu yang sering disebut quarter life crisis. Biasanya datang pelan-pelan, tapi efeknya lumayan berat. Lu mulai ngeraguin diri sendiri, overthinking, dan ngebandingin hidup lu sama orang lain di media sosial.\n\nHal yang perlu lu inget adalah: setiap orang punya jalan hidup masing-masing. Ga semua harus sukses di umur yang sama. Ada yang cepet, ada yang pelan, dan itu normal.\n\nYang penting, jangan berhenti bergerak. Mau kecil atau besar langkahnya, selama lu jalan, lu ga stuck. Bingung itu wajar, nyerah itu yang bahaya.', 'https://sukabumihitz.com/wp-content/uploads/2025/06/Apa_itu_quarter_life_crisis_ff1b28b1ae.webp', '2026-01-25 10:08:26'),
(17, 'Kenapa Mahasiswa IT Wajib Punya Portofolio dari Sekarang', 'Buat mahasiswa IT, satu hal penting yang sering diremehin adalah portofolio. Banyak yang mikir, “Nanti aja bikin pas mau lulus.” Padahal, portofolio itu bukan tujuan akhir, tapi proses belajar itu sendiri.\n\nPortofolio nunjukin apa yang beneran bisa lu kerjain. Mau itu website sederhana, aplikasi CRUD, atau project kecil dari tugas kuliah. Semua itu valid selama lu ngerjain sendiri dan ngerti alurnya.\n\nDengan ngerjain project, lu bakal sering ketemu error. Tapi justru dari situ skill lu naik. Lu belajar debugging, baca dokumentasi, dan mikir logis. Hal-hal yang ga bisa lu dapet cuma dari teori.\n\nGa perlu nunggu jago. Mulai dari yang sederhana dulu. Yang penting konsisten. Percaya deh, pas lu magang atau lulus nanti, portofolio itu bakal jadi senjata utama lu.', 'https://upy.ac.id/wp-content/uploads/2025/05/20250530_1620_Mahasiswa-di-Laboratorium-Canggih_simple_compose_01jwg7s4tveqgazgct3kfma9mj.png', '2026-01-25 10:10:02'),
(18, 'Organisasi vs Akademik: Emang Harus Pilih Salah Satu?', 'Pertanyaan klasik di dunia perkuliahan: ikut organisasi atau fokus akademik? Banyak mahasiswa takut nilainya anjlok kalau aktif organisasi. Di sisi lain, ada juga yang cuma fokus kuliah tapi ngerasa kurang berkembang secara soft skill.\n\nSebenernya, organisasi dan akademik itu bukan musuh. Keduanya bisa jalan bareng asal lu pinter ngatur waktu dan tau batas kemampuan diri sendiri. Organisasi ngajarin hal-hal yang ga lu dapetin di kelas, seperti komunikasi, leadership, dan kerja tim.\n\nMasalah biasanya muncul karena terlalu ambisius. Semua event diambil, semua jabatan diterima, tanpa mikirin kapasitas. Akhirnya capek sendiri, kuliah keteteran, organisasi juga ga maksimal.\n\nSolusinya simpel: tau prioritas. Di minggu UTS atau UAS, fokus akademik dulu. Di waktu luang, baru aktif organisasi. Ga perlu selalu jadi panitia inti, yang penting lu dapet pengalaman dan belajar.\n\nKuliah itu soal nyiapin diri buat dunia nyata, bukan cuma soal IPK di atas kertas.', 'https://asset.kompas.com/crops/QdfCxCz0Rz4uL6B6LLAr3kz1lP0=/0x0:780x520/1200x800/data/photo/2022/01/27/61f20d7227f62.jpg', '2026-01-25 10:12:18'),
(19, 'Mahasiswa Produktif Bukan yang Sibuk, Tapi yang Tau Kapan Berhenti', 'Banyak mahasiswa bangga kalo hidupnya sibuk. Jadwal penuh, tidur dikit, tugas numpuk. Padahal, sibuk belum tentu produktif. Kadang yang ada cuma capek tanpa hasil yang jelas.\n\nProduktif itu soal hasil, bukan soal seberapa rame jadwal lu. Orang yang produktif tau kapan harus fokus dan kapan harus istirahat. Mereka ngerti batas kemampuan diri sendiri.\n\nKalau lu ngerasa capek banget, itu tanda buat berhenti sebentar. Istirahat bukan berarti gagal. Justru dengan istirahat, lu bisa balik dengan energi dan fokus yang lebih baik.\n\nInget, kuliah itu maraton, bukan sprint. Yang bertahan sampai akhir bukan yang paling cepet, tapi yang paling konsisten.', 'https://image.idntimes.com/post/20250616/screenshot-2025-06-16-165629_020993bb-22b3-4af2-9d9d-a8638d4f2009.png', '2026-01-25 10:14:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `sender` enum('user','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `message`, `created_at`, `sender`) VALUES
(1, 1, 'test', NULL, 'user'),
(3, 1, 'masuk', NULL, 'admin'),
(28, 2, 'min', NULL, 'user'),
(29, 2, 'apa', NULL, 'admin'),
(30, 2, 'test doang min', NULL, 'user'),
(33, 3, 'halo', NULL, 'user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$hp/9PeBr7/301MDygFSM9e4iggheDDmmLzeLzJ4V.VVhnwgwTCIxG'),
(8, 'test', 'test@gmail.com', '$2y$10$VOsxZhGFYrzR2zTlsWw4b.I023u892HHHPlD1OHTYhh7h4qhMKxNu'),
(9, 'wahyu', 'wahyu@gmail.com', '$2y$10$mbZxLD7wIRSm86hucWsfKej5buAnCbPeSPj.Xfj6Un3rHcgXC2OD.');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
