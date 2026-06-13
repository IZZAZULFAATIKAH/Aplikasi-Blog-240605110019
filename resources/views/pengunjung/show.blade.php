@extends('layouts.pengunjung')

@section('title', $artikel->judul . ' - Blog Kami')

@section('content')
    <!-- Breadcrumb -->
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="{{ route('pengunjung.index') }}">Beranda</a>
            </li>
            <li class="breadcrumb-item">
                <a href="{{ route('pengunjung.index', ['kategori' => $artikel->id_kategori]) }}">
                    {{ $artikel->kategori->nama_kategori }}
                </a>
            </li>
            <li class="breadcrumb-item active" aria-current="page">
                {{ Str::limit($artikel->judul, 40) }}
            </li>
        </ol>
    </nav>

    <div class="detail-wrap">
        @if($artikel->gambar)
            <img src="{{ asset('storage/gambar/' . $artikel->gambar) }}"
                 alt="{{ $artikel->judul }}"
                 class="artikel-img-full">
        @endif

        <span class="badge-kategori">{{ $artikel->kategori->nama_kategori }}</span>

        <h1 class="mt-2">{{ $artikel->judul }}</h1>

        <div class="detail-meta">
            <div class="avatar-initial" style="width:38px;height:38px;font-size:14px;">
                {{ strtoupper(substr($artikel->penulis->nama_depan, 0, 1)) }}
            </div>
            <div class="meta-sub">
                <strong>{{ $artikel->penulis->nama_depan }} {{ $artikel->penulis->nama_belakang }}</strong>
                @php
                    $ts = is_numeric($artikel->hari_tanggal) ? (int)$artikel->hari_tanggal : strtotime($artikel->hari_tanggal);
                @endphp
                {{ date('d M Y', $ts) }}
            </div>
        </div>

        <div class="artikel-body">
            @foreach(explode("\n", $artikel->isi) as $paragraf)
                @if(trim($paragraf))
                    <p>{{ trim($paragraf) }}</p>
                @endif
            @endforeach
        </div>

        <div class="mt-4 pt-3" style="border-top: 1px solid #f0f0f0;">
            <a href="{{ route('pengunjung.index') }}" class="btn-kembali">&larr; Kembali ke Beranda</a>
        </div>
    </div>
@endsection

@section('sidebar')
    <div class="sidebar-card">
        <div class="sidebar-title">Artikel Terkait</div>
        @forelse($terkait as $t)
            <a href="{{ route('pengunjung.show', $t->id) }}" class="terkait-item">
                @if($t->gambar)
                    <img src="{{ asset('storage/gambar/' . $t->gambar) }}"
                         alt="{{ $t->judul }}"
                         class="terkait-thumb">
                @else
                    <div class="terkait-thumb-placeholder">&#128247;</div>
                @endif
                <div class="terkait-info">
                    <span class="terkait-judul">{{ Str::limit($t->judul, 55) }}</span>
                    <span class="terkait-tanggal">
                        @php $ts2 = is_numeric($t->hari_tanggal) ? (int)$t->hari_tanggal : strtotime($t->hari_tanggal); @endphp
                        {{ date('d M Y', $ts2) }}
                    </span>
                </div>
            </a>
        @empty
            <p class="text-muted p-3 mb-0" style="font-size:13px;">Tidak ada artikel terkait.</p>
        @endforelse
    </div>
@endsection
