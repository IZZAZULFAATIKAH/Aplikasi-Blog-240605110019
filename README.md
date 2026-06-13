Aplikasi-Blog

Nama Lengkap: Izza Zulfa Atikah
NIM: 240605110019

Deskripsi Aplikasi

Aplikasi Blog adalah sistem manajemen konten (CMS) berbasis web yang dibangun menggunakan framework Laravel. Aplikasi ini terdiri dari dua bagian utama:
Halaman Administrator (CMS): Pengelolaan artikel, penulis, dan kategori artikel yang hanya dapat diakses oleh penulis yang sudah login.
Halaman Pengunjung (Publik): Halaman utama yang menampilkan lima artikel terbaru beserta widget kategori, dan halaman detail artikel beserta artikel terkait dapat diakses tanpa perlu login.
Langkah-Langkah Menjalankan Aplikasi Secara Lokal:
1. Clone repository dari GitHub
   git clone https://github.com/IZZAZULFAATIKAH/Aplikasi-Blog-240605110019.git
   cd Aplikasi-Blog-240605110019
2. Install dependency Laravel
   composer install
   npm install && npm run dev
3. Salin file .env.example menjadi .env
    Sesuaikan konfigurasi database, misalnya:
   DB_CONNECTION=mysql
    DB_HOST=127.0.0.1
    DB_PORT=3306
    DB_DATABASE=db_blog
    DB_USERNAME=root
    DB_PASSWORD=
4. Generate key aplikasi
   php artisan key:generate
5. Migrasi database dan isi data awal
   php artisan migrate --seed
6. Jalankan server lokal Laravel
   php artisan serve
7. Aplikasi dapat diakses di browser melalui http://localhost:8000.

LINK YOUTUBE: https://youtu.be/zSYt_OxsYoY


   
   

   
