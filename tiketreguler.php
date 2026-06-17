<?php
// TiketRegular.php
require_once 'Tiket.php';

class TiketRegular extends Tiket {
    // Properti tambahan spesifik
    private $tipeAudio;
    private $lokasiBaris;

    public function __construct($id_tiket, $nama_film, $jadwal_tayang, $jumlah_kursi, $hargaDasarTiket, $tipeAudio, $lokasiBaris) {
        // Memanggil constructor dari abstract class Tiket
        parent::__construct($id_tiket, $nama_film, $jadwal_tayang, $jumlah_kursi, $hargaDasarTiket);
        $this->tipeAudio = $tipeAudio;
        $this->lokasiBaris = $lokasiBaris;
    }

    // Implementasi metode abstrak hitungTotalHarga()
    public function hitungTotalHarga() {
        // Contoh kalkulasi: harga dasar x jumlah kursi
        return $this->hargaDasarTiket * $this->jumlah_kursi;
    }

    // Implementasi metode abstrak tampilkanInfoFasilitas()
    public function tampilkanInfoFasilitas() {
        return "Fasilitas Studio Regular -> Tipe Audio: " . ($this->tipeAudio ?? '-') . ", Lokasi Baris: " . ($this->lokasiBaris ?? '-');
    }
}
?>