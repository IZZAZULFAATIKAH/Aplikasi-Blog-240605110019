-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jun 2026 pada 09.20
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.5.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id` int(11) NOT NULL,
  `id_penulis` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `hari_tanggal` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id`, `id_penulis`, `id_kategori`, `judul`, `isi`, `gambar`, `hari_tanggal`) VALUES
(10, 8, 7, 'Pengenalan PHP', 'PHP (Hypertext Preprocessor) adalah bahasa pemrograman server‑side yang dirancang khusus untuk pengembangan web. PHP pertama kali dibuat oleh Rasmus Lerdorf pada tahun 1995, dan sejak itu berkembang menjadi salah satu bahasa paling populer di dunia. Keunggulan utama PHP adalah kemampuannya untuk berintegrasi dengan HTML, sehingga memudahkan developer membuat halaman web dinamis.\r\n\r\nPHP bekerja di sisi server: ketika pengguna mengakses sebuah halaman, server akan mengeksekusi kode PHP lalu mengirimkan hasilnya berupa HTML ke browser. Dengan cara ini, PHP bisa digunakan untuk membuat sistem login, mengelola database, menampilkan data secara dinamis, hingga membangun aplikasi web skala besar.\r\n\r\nSelain itu, PHP memiliki ekosistem yang luas: banyak framework, library, dan CMS (seperti WordPress, Joomla, Drupal) yang dibangun dengan PHP. Dukungan komunitas yang besar membuat PHP terus berkembang, dengan versi terbaru menghadirkan fitur modern seperti tipe data yang lebih ketat, performa lebih cepat, dan keamanan yang lebih baik.', '6a2c34d3612e2.png', 'Jumat, 12 Juni 2026 | 23:33'),
(13, 8, 11, 'Mengenal Linked List dalam Pemrograman', 'Linked List adalah salah satu struktur data dasar yang digunakan untuk menyimpan kumpulan data secara dinamis. Berbeda dengan array yang ukurannya tetap, Linked List memungkinkan penambahan dan penghapusan elemen tanpa harus menggeser data lain. Setiap elemen disebut node, yang berisi data dan pointer ke node berikutnya. Keunggulan Linked List adalah fleksibilitas dalam manajemen memori, namun kelemahannya adalah akses data lebih lambat karena harus menelusuri node satu per satu. Dalam praktiknya, Linked List sering digunakan untuk implementasi stack, queue, dan sistem navigasi data yang berubah‑ubah.', '6a2d097f72273.png', 'Sabtu, 13 Juni 2026 | 14:40'),
(14, 8, 11, 'Perbedaan Algoritma dan Struktur Data', 'Algoritma adalah langkah‑langkah sistematis untuk menyelesaikan suatu masalah, sedangkan struktur data adalah cara mengorganisasi dan menyimpan data agar algoritma bisa berjalan efisien. Misalnya, algoritma sorting seperti Bubble Sort atau Quick Sort membutuhkan struktur data array untuk bekerja. Sebaliknya, struktur data seperti stack atau queue membutuhkan algoritma push dan pop untuk berfungsi. Dengan memahami keduanya, programmer dapat memilih kombinasi yang tepat sesuai kebutuhan aplikasi, sehingga hasilnya lebih optimal dan efisien.', '6a2d09fad0bce.png', 'Sabtu, 13 Juni 2026 | 14:42'),
(15, 8, 10, 'Cara Kerja Algoritma Machine Learning', 'Machine Learning bekerja dengan cara melatih komputer menggunakan data agar bisa membuat prediksi atau keputusan tanpa diprogram secara eksplisit. Prosesnya dimulai dari mengumpulkan data, melakukan preprocessing, lalu melatih model dengan algoritma tertentu seperti regresi linear, decision tree, atau neural network. Setelah model dilatih, sistem bisa melakukan prediksi terhadap data baru. Contoh sederhana adalah sistem rekomendasi film yang belajar dari riwayat tontonan pengguna. Konsep ini menjadi dasar dari banyak aplikasi modern seperti deteksi wajah, analisis sentimen, dan prediksi cuaca.', '6a2d0a367e8f4.png', 'Sabtu, 13 Juni 2026 | 14:43'),
(16, 8, 10, 'AI dan Etika Penggunaan Data', 'Penggunaan data dalam machine learning membawa manfaat besar, namun juga menimbulkan tantangan etika. Data pribadi pengguna sering dipakai untuk melatih model, sehingga risiko privasi sangat tinggi. Dalam perspektif etika Islam, menjaga amanah data adalah kewajiban. Penyalahgunaan data untuk tujuan manipulasi atau penyebaran hoaks jelas bertentangan dengan prinsip kejujuran. Oleh karena itu, pengembang sistem AI harus memastikan transparansi, keamanan, dan keadilan dalam penggunaan data agar teknologi benar‑benar membawa manfaat bagi umat.', '6a2d0bdc26260.png', 'Sabtu, 13 Juni 2026 | 14:45'),
(17, 8, 7, 'Membangun CRUD Laravel dengan Upload Foto', 'CRUD (Create, Read, Update, Delete) adalah konsep dasar dalam pengembangan aplikasi web. Di Laravel, CRUD bisa dibuat dengan mudah menggunakan Eloquent ORM. Sebagai contoh, untuk entitas Penulis, kita bisa membuat migration, model, dan controller. Fitur upload foto ditambahkan dengan memanfaatkan method storeAs() agar file tersimpan di folder storage/app/public/foto. Dengan kombinasi Blade template untuk form input dan validasi di controller, aplikasi akan lebih interaktif. CRUD dengan upload foto ini sangat berguna untuk sistem manajemen blog, e‑commerce, atau aplikasi profil pengguna.', '6a2d0b00f21be.jpg', 'Sabtu, 13 Juni 2026 | 14:47'),
(18, 8, 7, 'Belajar Pemrograman Web untuk Pemula', 'Belajar pemrograman web bisa terasa menantang, tetapi dengan strategi yang tepat akan lebih mudah. Mulailah dari dasar HTML dan CSS untuk memahami struktur dan tampilan halaman. Lanjutkan dengan JavaScript agar halaman lebih interaktif. Setelah itu, pelajari framework seperti Laravel atau React untuk membangun aplikasi yang kompleks. Gunakan proyek kecil sebagai latihan, misalnya membuat blog sederhana atau sistem login. Jangan lupa untuk memahami konsep database karena hampir semua aplikasi web membutuhkan penyimpanan data. Konsistensi belajar adalah kunci agar cepat mahir.', '6a2d0b4c76d0d.jpg', 'Sabtu, 13 Juni 2026 | 14:48'),
(19, 8, 9, 'Mengatasi Error “Unknown column updated_at” di Laravel', 'Error ini sering muncul ketika tabel database tidak memiliki kolom created_at dan updated_at, sementara Eloquent Laravel otomatis menambahkannya saat insert. Solusinya ada dua: pertama, tambahkan $table->timestamps() di migration agar kolom tersebut dibuat. Kedua, jika memang tidak ingin menggunakan timestamps, tambahkan public $timestamps = false; di model. Dengan langkah ini, error akan hilang dan aplikasi berjalan normal. Memahami error seperti ini penting agar developer tidak bingung saat debugging.', '6a2d0c3e1e9a9.png', 'Sabtu, 13 Juni 2026 | 14:52'),
(20, 8, 9, 'Langkah Cepat Troubleshooting XAMPP', 'XAMPP adalah tool populer untuk menjalankan PHP dan MySQL secara lokal, tetapi sering muncul masalah. Jika Apache tidak bisa jalan, biasanya karena port 80 atau 443 sudah dipakai aplikasi lain seperti Skype. Solusinya adalah mengganti port di file httpd.conf. Jika MySQL gagal start, cek apakah ada service MySQL lain yang aktif, lalu hentikan service tersebut. Untuk reset password phpMyAdmin, gunakan perintah ALTER USER \'root\'@\'localhost\' IDENTIFIED BY \'newpassword\'; di MySQL console. Dengan langkah sederhana ini, XAMPP bisa kembali normal tanpa harus reinstall.', '6a2d0c7d49753.png', 'Sabtu, 13 Juni 2026 | 14:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` varchar(255) NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` smallint(5) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_artikel`
--

CREATE TABLE `kategori_artikel` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategori_artikel`
--

INSERT INTO `kategori_artikel` (`id`, `nama_kategori`, `keterangan`) VALUES
(7, 'Pemrograman Web', 'berisi tutorial PHP, Laravel, JavaScript.'),
(9, 'Tips & Trick', 'solusi cepat troubleshooting XAMPP, phpMyAdmin, error Laravel.'),
(10, 'Machine Learning', 'konsep dasar, algoritma, implementasi Python.'),
(11, 'Algoritma & Struktur Data', 'materi dasar algoritma, analisis kompleksitas, contoh implementasi....');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penulis`
--

CREATE TABLE `penulis` (
  `id` int(11) NOT NULL,
  `nama_depan` varchar(100) NOT NULL,
  `nama_belakang` varchar(100) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `penulis`
--

INSERT INTO `penulis` (`id`, `nama_depan`, `nama_belakang`, `user_name`, `password`, `foto`) VALUES
(8, 'izza', 'zulfa atikah', 'IZZA ZULFA ATIKAH', '$2y$12$pzwzgwc0G.UNDNjX6MycB.C2N3qR78PGvzCHNhYRbHZ4gqUkl8Cv2', 'foto_6a22f2daabb94.jpeg'),
(12, 'Mursiyah', 'dwi erlena', 'Mursiyah', '$2y$12$sPrEFTxYpCIdXBhYO70U5.Jw6VlBay0rb5.qGibxqG8bWjMtETCw6', '6a2d08d587486.png'),
(13, 'Nor', 'Khairina', 'haikhai_', '$2y$12$CFERc4r2/Q4aWcb/xRr50O8MBmvSiYOoh2ju1B2AW7s45vSAdk4im', 'default.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('qEJ9mHzgthytgogz43vk8wC4m0KwTMx2doaDIIJL', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJTSG5HWHBVdU1RSE8zMzRlcGdPNG9FczM0aW9BRVRFQ2xXcFNUeFZFIiwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119LCJfcHJldmlvdXMiOnsidXJsIjoiaHR0cDpcL1wvbG9jYWxob3N0OjgwMDAiLCJyb3V0ZSI6InBlbmd1bmp1bmcuaW5kZXgifX0=', 1781339405);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_artikel_penulis` (`id_penulis`),
  ADD KEY `fk_artikel_kategori` (`id_kategori`);

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`),
  ADD KEY `failed_jobs_connection_queue_failed_at_index` (`connection`,`queue`,`failed_at`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori_artikel`
--
ALTER TABLE `kategori_artikel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_nama_kategori` (`nama_kategori`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `penulis`
--
ALTER TABLE `penulis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_user_name` (`user_name`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategori_artikel`
--
ALTER TABLE `kategori_artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `penulis`
--
ALTER TABLE `penulis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD CONSTRAINT `fk_artikel_kategori` FOREIGN KEY (`id_kategori`) REFERENCES `kategori_artikel` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_artikel_penulis` FOREIGN KEY (`id_penulis`) REFERENCES `penulis` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
