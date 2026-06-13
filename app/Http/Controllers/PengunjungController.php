<?php

namespace App\Http\Controllers;

use App\Models\Artikel;
use App\Models\KategoriArtikel;
use Illuminate\Http\Request;

class PengunjungController extends Controller
{
    public function index(Request $request)
    {
        // Ambil kategori beserta jumlah artikel
        $kategori = KategoriArtikel::withCount('artikel')->get();

        if ($request->has('kategori')) {
            $artikel = Artikel::with('penulis','kategori')
                ->where('id_kategori', $request->kategori)
                ->orderBy('hari_tanggal','desc')
                ->take(5)
                ->get();
        } else {
            $artikel = Artikel::with('penulis','kategori')
                ->orderBy('hari_tanggal','desc')
                ->take(5)
                ->get();
        }

        return view('pengunjung.index', compact('artikel','kategori'));
    }

    public function show($id)
    {
        $artikel = Artikel::with('penulis','kategori')->findOrFail($id);

        $terkait = Artikel::with('penulis')
            ->where('id_kategori', $artikel->id_kategori)
            ->where('id','!=',$artikel->id)
            ->orderBy('hari_tanggal','desc')
            ->take(5)
            ->get();

        return view('pengunjung.show', compact('artikel','terkait'));
    }
}
