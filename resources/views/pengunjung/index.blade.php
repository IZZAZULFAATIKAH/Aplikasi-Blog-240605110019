@extends('layouts.pengunjung')

@section('title', isset($kategoriAktif) ? $kategoriAktif->nama_kategori . ' - Blog Kami' : 'Blog Kami')

@section('content')
    @forelse($artikel as $a)
        <div class="artikel-card">
            @if($a->gambar)
                <div class="artikel-img-wrap">
                    <img src="{{ asset('storage/gambar/' . $a->gambar) }}" alt="{{ $a->judul }}">
                </div>
            @endif
            <div class="card-body">
                <span class="badge-kategori">{{ $a->kategori->nama_kategori }}</span>
                <h2>{{ $a->judul }}</h2>
                <div class="artikel-meta">
                    <div class="avatar-initial">
                        {{ strtoupper(substr($a->penulis->nama_depan, 0, 1)) }}
                    </div>
                    <span class="meta-text">
                        {{ $a->penulis->nama_depan }} {{ $a->penulis->nama_belakang }}
                        &nbsp;•&nbsp;
                        @php
                            $ts = is_numeric($a->hari_tanggal) ? (int)$a->hari_tanggal : strtotime($a->hari_tanggal);
                        @endphp
                        {{ date('d M Y', $ts) }}
                    </span>
                </div>
                <p class="excerpt">{{ Str::limit($a->isi, 220) }}</p>
                <a href="{{ route('pengunjung.show', $a->id) }}" class="btn-baca">Baca Selengkapnya &rarr;</a>
            </div>
        </div>
    @empty
        <div class="sidebar-card p-4 text-center text-muted">
            <p class="mb-0">Belum ada artikel pada kategori ini.</p>
        </div>
    @endforelse
@endsection

@section('sidebar')
    <div class="sidebar-card">
        <div class="sidebar-title">Kategori Artikel</div>
        <ul class="kategori-list">
            @php $totalArtikel = $kategori->sum('artikel_count'); @endphp
            <li>
                <a href="{{ route('pengunjung.index') }}"
                   class="{{ !request('kategori') ? 'active-kategori' : '' }}">
                    <span>Semua Artikel</span>
                    <span class="kategori-count {{ !request('kategori') ? 'active' : '' }}">
                        {{ $totalArtikel }}
                    </span>
                </a>
            </li>
            @foreach($kategori as $k)
                <li>
                    <a href="{{ route('pengunjung.index', ['kategori' => $k->id]) }}"
                       class="{{ request('kategori') == $k->id ? 'active-kategori' : '' }}">
                        <span>{{ $k->nama_kategori }}</span>
                        <span class="kategori-count {{ request('kategori') == $k->id ? 'active' : '' }}">
                            {{ $k->artikel_count }}
                        </span>
                    </a>
                </li>
            @endforeach
        </ul>
    </div>
@endsection
