<?php
// TiketVelvet.php
require_once 'Tiket.php';

class TiketVelvet extends Tiket {
    // Properti tambahan spesifik
    private $bantalSelimutPack;
    private $layananButler;

    public function __construct($id_tiket, $nama_film, $jadwal_tayang, $jumlah_kursi, $hargaDasarTiket, $bantalSelimutPack, $layananButler) {
        parent::__construct($id_tiket, $nama_film, $jadwal_tayang, $jumlah_kursi, $hargaDasarTiket);
        $this->bantalSelimutPack = $bantalSelimutPack;
        $this->layananButler = $layananButler;
    }

    // Implementasi metode abstrak hitungTotalHarga()
    public function hitungTotalHarga() {
        // Contoh kalkulasi: Kelas premium Velvet (misal ada tambahan Rp 30.000 per kursi)
        $biayaPremium = 30000;
        return ($this->hargaDasarTiket + $biayaPremium) * $this->jumlah_kursi;
    }

    // Implementasi metode abstrak tampilkanInfoFasilitas()
    public function tampilkanInfoFasilitas() {
        return "Fasilitas Studio Velvet -> Paket Bantal/Selimut: " . ($this->bantalSelimutPack ?? '-') . ", Layanan Butler: " . ($this->layananButler ?? '-');
    }
}
?>