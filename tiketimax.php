<?php
// TiketIMAX.php
require_once 'Tiket.php';

class TiketIMAX extends Tiket {
    // Properti tambahan spesifik
    private $kacamata3dId;
    private $efekGerakFitur;

    public function __construct($id_tiket, $nama_film, $jadwal_tayang, $jumlah_kursi, $hargaDasarTiket, $kacamata3dId, $efekGerakFitur) {
        parent::__construct($id_tiket, $nama_film, $jadwal_tayang, $jumlah_kursi, $hargaDasarTiket);
        $this->kacamata3dId = $kacamata3dId;
        $this->efekGerakFitur = $efekGerakFitur;
    }

    // Implementasi metode abstrak hitungTotalHarga()
    public function hitungTotalHarga() {
        // Contoh kalkulasi: Ada biaya tambahan flat untuk IMAX per tiket (misal + Rp 15.000)
        $biayaTambahanIMAX = 15000;
        return ($this->hargaDasarTiket + $biayaTambahanIMAX) * $this->jumlah_kursi;
    }

    // Implementasi metode abstrak tampilkanInfoFasilitas()
    public function tampilkanInfoFasilitas() {
        return "Fasilitas Studio IMAX -> ID Kacamata 3D: " . ($this->kacamata3dId ?? '-') . ", Efek Gerak: " . ($this->efekGerakFitur ?? '-');
    }
}
?>