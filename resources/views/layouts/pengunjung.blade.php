<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title', 'Blog Kami')</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* ===== Base ===== */
        body {
            background-color: #f4f4f9;
            font-family: 'Segoe UI', system-ui, -apple-system, sans-serif;
            font-size: 14px;
            color: #333;
        }

        /* ===== Navbar ===== */
        .navbar-blog {
            background-color: #2C3E50;
            padding: 0;
        }
        .navbar-blog .container {
            padding-top: 12px;
            padding-bottom: 12px;
        }
        .navbar-blog .brand-wrap .brand-name {
            font-size: 18px;
            font-weight: 700;
            color: #ffffff;
            text-decoration: none;
            line-height: 1.2;
            display: block;
        }
        .navbar-blog .brand-wrap .brand-tagline {
            font-size: 11px;
            color: #aaaaaa;
            margin: 0;
        }
        .navbar-blog .nav-links {
            display: flex;
            align-items: center;
            gap: 4px;
            list-style: none;
            margin: 0;
            padding: 0;
        }
        .navbar-blog .nav-links a {
            color: #cccccc;
            text-decoration: none;
            font-size: 13px;
            padding: 6px 10px;
            border-radius: 4px;
            transition: color 0.2s;
        }
        .navbar-blog .nav-links a:hover,
        .navbar-blog .nav-links a.active {
            color: #ffffff;
        }
        .nav-btn-login {
            background-color: #4CAF50 !important;
            color: #ffffff !important;
            padding: 6px 14px !important;
            border-radius: 5px !important;
            font-weight: 600 !important;
            transition: background 0.2s !important;
        }
        .nav-btn-login:hover {
            background-color: #388E3C !important;
        }
        .nav-btn-dashboard {
            background-color: rgba(255,255,255,0.1) !important;
            color: #ffffff !important;
            padding: 6px 14px !important;
            border-radius: 5px !important;
            font-weight: 500 !important;
        }
        .nav-btn-dashboard:hover {
            background-color: rgba(255,255,255,0.2) !important;
        }
        .nav-btn-logout {
            background: none;
            border: 1px solid rgba(255,255,255,0.3);
            color: #cccccc;
            font-size: 13px;
            padding: 5px 13px;
            border-radius: 5px;
            cursor: pointer;
            transition: all 0.2s;
        }
        .nav-btn-logout:hover {
            border-color: #e57373;
            color: #e57373;
            background: none;
        }

        /* ===== Main layout ===== */
        .main-wrapper {
            max-width: 1100px;
            margin: 0 auto;
            padding: 32px 16px;
        }

        /* ===== Article Card (Index) ===== */
        .artikel-card {
            background: #ffffff;
            border: none;
            border-radius: 8px;
            box-shadow: 0 1px 4px rgba(0,0,0,0.07);
            margin-bottom: 28px;
            overflow: hidden;
        }
        .artikel-card .artikel-img-wrap {
            width: 100%;
            height: 220px;
            overflow: hidden;
        }
        .artikel-card .artikel-img-wrap img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            display: block;
        }
        .artikel-card .card-body {
            padding: 20px 24px 24px;
        }
        .badge-kategori {
            background-color: #e8f5e9;
            color: #2e7d32;
            font-size: 11px;
            font-weight: 600;
            padding: 3px 10px;
            border-radius: 20px;
            display: inline-block;
            margin-bottom: 10px;
            letter-spacing: 0.03em;
        }
        .artikel-card h2 {
            font-size: 20px;
            font-weight: 700;
            color: #1a1a1a;
            margin-bottom: 8px;
            line-height: 1.35;
        }
        .artikel-meta {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-bottom: 12px;
        }
        .avatar-initial {
            width: 30px;
            height: 30px;
            background-color: #2e7d32;
            color: #fff;
            border-radius: 50%;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            font-size: 12px;
            font-weight: 700;
            flex-shrink: 0;
        }
        .artikel-meta .meta-text {
            font-size: 12px;
            color: #888;
        }
        .artikel-card p.excerpt {
            font-size: 13.5px;
            color: #555;
            line-height: 1.65;
            margin-bottom: 18px;
        }
        .btn-baca {
            background-color: #4CAF50;
            color: #ffffff;
            border: none;
            font-size: 13px;
            font-weight: 600;
            padding: 8px 18px;
            border-radius: 5px;
            text-decoration: none;
            display: inline-block;
            transition: background 0.2s;
        }
        .btn-baca:hover {
            background-color: #388E3C;
            color: #fff;
        }

        /* ===== Sidebar ===== */
        .sidebar-card {
            background: #ffffff;
            border: none;
            border-radius: 8px;
            box-shadow: 0 1px 4px rgba(0,0,0,0.07);
            overflow: hidden;
            margin-bottom: 20px;
        }
        .sidebar-card .sidebar-title {
            background-color: #2C3E50;
            color: #ffffff;
            font-size: 13px;
            font-weight: 700;
            padding: 12px 16px;
            letter-spacing: 0.04em;
            text-transform: uppercase;
        }
        .kategori-list {
            list-style: none;
            margin: 0;
            padding: 0;
        }
        .kategori-list li {
            border-bottom: 1px solid #f0f0f0;
        }
        .kategori-list li:last-child {
            border-bottom: none;
        }
        .kategori-list li a {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 10px 16px;
            font-size: 13px;
            color: #444;
            text-decoration: none;
            transition: background 0.15s;
        }
        .kategori-list li a:hover {
            background-color: #f4f4f9;
            color: #2e7d32;
        }
        .kategori-list li a.active-kategori {
            background-color: #e8f5e9;
            color: #2e7d32;
            font-weight: 600;
        }
        .kategori-count {
            background-color: #e8f5e9;
            color: #2e7d32;
            font-size: 11px;
            font-weight: 700;
            min-width: 22px;
            height: 22px;
            border-radius: 11px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            padding: 0 6px;
        }
        .kategori-count.active {
            background-color: #4CAF50;
            color: #fff;
        }

        /* ===== Detail Article ===== */
        .detail-wrap {
            background: #ffffff;
            border-radius: 8px;
            box-shadow: 0 1px 4px rgba(0,0,0,0.07);
            padding: 28px 32px;
        }
        .detail-wrap .artikel-img-full {
            width: 100%;
            max-height: 380px;
            object-fit: cover;
            border-radius: 6px;
            margin-bottom: 20px;
            display: block;
        }
        .detail-wrap h1 {
            font-size: 24px;
            font-weight: 800;
            color: #1a1a1a;
            margin-bottom: 10px;
            line-height: 1.3;
        }
        .detail-wrap .detail-meta {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-bottom: 20px;
        }
        .detail-meta .meta-sub {
            font-size: 12px;
            color: #888;
            line-height: 1.4;
        }
        .detail-meta .meta-sub strong {
            display: block;
            font-size: 13px;
            color: #333;
        }
        .detail-wrap .artikel-body {
            font-size: 14.5px;
            line-height: 1.8;
            color: #444;
        }
        .detail-wrap .artikel-body p {
            margin-bottom: 16px;
        }

        /* ===== Breadcrumb ===== */
        .breadcrumb {
            background: none;
            padding: 0;
            margin-bottom: 20px;
            font-size: 12.5px;
        }
        .breadcrumb-item a {
            color: #4CAF50;
            text-decoration: none;
        }
        .breadcrumb-item.active {
            color: #888;
        }
        .breadcrumb-item + .breadcrumb-item::before {
            color: #aaa;
        }

        /* ===== Related Articles Sidebar ===== */
        .terkait-item {
            display: flex;
            gap: 10px;
            padding: 12px 16px;
            border-bottom: 1px solid #f0f0f0;
            text-decoration: none;
            color: inherit;
            transition: background 0.15s;
        }
        .terkait-item:last-child {
            border-bottom: none;
        }
        .terkait-item:hover {
            background-color: #f4f4f9;
        }
        .terkait-thumb {
            width: 60px;
            height: 50px;
            object-fit: cover;
            border-radius: 4px;
            flex-shrink: 0;
            background-color: #e0e0e0;
        }
        .terkait-thumb-placeholder {
            width: 60px;
            height: 50px;
            border-radius: 4px;
            flex-shrink: 0;
            background-color: #e8f5e9;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #4CAF50;
            font-size: 18px;
        }
        .terkait-info .terkait-judul {
            font-size: 13px;
            font-weight: 600;
            color: #222;
            line-height: 1.35;
            margin-bottom: 3px;
            display: block;
        }
        .terkait-info .terkait-tanggal {
            font-size: 11px;
            color: #aaa;
        }

        /* ===== Back Button ===== */
        .btn-kembali {
            background: none;
            border: 1.5px solid #4CAF50;
            color: #4CAF50;
            font-size: 13px;
            font-weight: 600;
            padding: 8px 18px;
            border-radius: 5px;
            text-decoration: none;
            display: inline-block;
            transition: all 0.2s;
        }
        .btn-kembali:hover {
            background-color: #4CAF50;
            color: #fff;
        }

        /* ===== Footer ===== */
        .footer-blog {
            background-color: #2C3E50;
            color: #aaaaaa;
            text-align: center;
            padding: 18px;
            font-size: 12.5px;
            margin-top: 40px;
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar-blog">
        <div class="container d-flex align-items-center justify-content-between flex-wrap gap-2">
            <div class="brand-wrap">
                <a class="brand-name" href="{{ route('pengunjung.index') }}">Blog Kami</a>
                <p class="brand-tagline">Artikel terbaru seputar teknologi dan pemrograman</p>
            </div>
            <ul class="nav-links">
                <li><a href="{{ route('pengunjung.index') }}" class="{{ request()->routeIs('pengunjung.index') && !request('kategori') ? 'active' : '' }}">Beranda</a></li>
                <li><a href="{{ route('pengunjung.index') }}">Artikel</a></li>
                <li><a href="{{ route('pengunjung.index') }}">Kategori</a></li>
                <li><a href="#">Tentang</a></li>
                @auth
                    <li>
                        <a href="{{ route('dashboard') }}" class="nav-btn-dashboard">Dashboard</a>
                    </li>
                    <li>
                        <form action="{{ route('logout') }}" method="POST" style="display:inline;">
                            @csrf
                            <button type="submit" class="nav-btn-logout">Keluar</button>
                        </form>
                    </li>
                @else
                    <li>
                        <a href="{{ route('login') }}" class="nav-btn-login">Login</a>
                    </li>
                @endauth
            </ul>
        </div>
    </nav>

    <!-- Content + Sidebar -->
    <div class="main-wrapper">
        <div class="row g-4">
            <!-- Main content -->
            <div class="col-lg-8">
                @yield('content')
            </div>

            <!-- Sidebar -->
            <div class="col-lg-4">
                @yield('sidebar')
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="footer-blog">
        &copy; 2026 Blog Kami. Seluruh hak cipta dilindungi.
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
