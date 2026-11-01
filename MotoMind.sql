 =======================================================
-- MODUL 9: REDUNDANSI DAN DENORMALISASI
-- SYSTEM: MOTOMIND (MITRA: PLANET BAN - TAMAN 2)
-- =======================================================

-- 1. DDL PEMBUATAN TABEL

CREATE TABLE pelanggan (
    id_pelanggan VARCHAR(20) PRIMARY KEY,
    nama_pelanggan VARCHAR(100) NOT NULL,
    no_whatsapp VARCHAR(20),
    tanggal_daftar DATE
);

CREATE TABLE kendaraan (
    plat_nomor VARCHAR(20) PRIMARY KEY,
    merek VARCHAR(50) NOT NULL,
    tipe_motor VARCHAR(50) NOT NULL,
    tahun_produksi INT,
    id_pelanggan VARCHAR(20),
    CONSTRAINT fk_kendaraan_pelanggan FOREIGN KEY (id_pelanggan) 
        REFERENCES pelanggan(id_pelanggan) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE bengkel (
    id_bengkel VARCHAR(20) PRIMARY KEY,
    nama_bengkel VARCHAR(100) NOT NULL,
    alamat TEXT,
    no_telepon VARCHAR(20)
);

CREATE TABLE servis (
    no_servis VARCHAR(20) PRIMARY KEY,
    tanggal_servis DATE NOT NULL,
    jam_servis TIME,
    asal_pendaftaran VARCHAR(50),
    status_servis VARCHAR(30),
    keluhan TEXT,
    hasil_pemeriksaan TEXT,
    waktu_selesai TIME,
    plat_nomor VARCHAR(20),
    id_bengkel VARCHAR(20),
    CONSTRAINT fk_servis_kendaraan FOREIGN KEY (plat_nomor) 
        REFERENCES kendaraan(plat_nomor) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_servis_bengkel FOREIGN KEY (id_bengkel) 
        REFERENCES bengkel(id_bengkel) ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE jenis_servis (
    id_jenis_servis VARCHAR(20) PRIMARY KEY,
    nama_servis VARCHAR(100) NOT NULL,
    kategori VARCHAR(50),
    estimasi_menit INT
);

CREATE TABLE detail_servis (
    no_servis VARCHAR(20),
    id_jenis_servis VARCHAR(20),
    catatan TEXT,
    PRIMARY KEY (no_servis, id_jenis_servis),
    CONSTRAINT fk_detail_servis_servis FOREIGN KEY (no_servis) 
        REFERENCES servis(no_servis) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_detail_servis_jenis FOREIGN KEY (id_jenis_servis) 
        REFERENCES jenis_servis(id_jenis_servis) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE pengingat_servis (
    id_pengingat VARCHAR(20) PRIMARY KEY,
    jenis_pengingat VARCHAR(50),
    tanggal_jatuh_tempo DATE,
    status_pengingat VARCHAR(30),
    plat_nomor VARCHAR(20),
    CONSTRAINT fk_pengingat_kendaraan FOREIGN KEY (plat_nomor) 
        REFERENCES kendaraan(plat_nomor) ON DELETE CASCADE ON UPDATE CASCADE
);


-- 2. INSERT DATA DUMMY

INSERT INTO bengkel (id_bengkel, nama_bengkel, alamat, no_telepon) VALUES
('BKL-001', 'Planet Ban - Taman 2', 'Jl. Kapuas No. 1, Madiun', '08170006005');

INSERT INTO pelanggan (id_pelanggan, nama_pelanggan, no_whatsapp, tanggal_daftar) VALUES
('PLG-001', 'Rehan Prasetya', '085123456781', '2026-09-01'),
('PLG-002', 'Budi Pratama', '085123456782', '2026-09-05'),
('PLG-003', 'Siti Rahma', '085123456783', '2026-09-10');

INSERT INTO kendaraan (plat_nomor, merek, tipe_motor, tahun_produksi, id_pelanggan) VALUES
('AE-4321-XX', 'Honda', 'BeAT Street', 2022, 'PLG-001'),
('AE-1234-AB', 'Yamaha', 'NMAX 155', 2023, 'PLG-002'),
('AE-5678-CD', 'Honda', 'Vario 150', 2021, 'PLG-003');

INSERT INTO jenis_servis (id_jenis_servis, nama_servis, kategori, estimasi_menit) VALUES
('SRV-TYP-01', 'Ganti Oli Mesin (X-Ray)', 'Oli & Pelumas', 15),
('SRV-TYP-02', 'Servis Ringan / Tune Up', 'Mesin', 30),
('SRV-TYP-03', 'Ganti Ban Belakang Tubeless', 'Kaki-kaki', 20);

INSERT INTO servis (no_servis, tanggal_servis, jam_servis, asal_pendaftaran, status_servis, keluhan, hasil_pemeriksaan, waktu_selesai, plat_nomor, id_bengkel) VALUES
('SRV-2026-001', '2026-10-01', '10:00:00', 'Aplikasi MotoMind', 'Selesai', 'Oli sudah waktunya ganti dan tarikan agak kasar', 'Oli diganti, filter bersih', '10:30:00', 'AE-4321-XX', 'BKL-001'),
('SRV-2026-002', '2026-10-05', '13:15:00', 'Aplikasi MotoMind', 'Selesai', 'Ban belakang gundul / aus', 'Ban diganti baru', '13:40:00', 'AE-1234-AB', 'BKL-001');

INSERT INTO detail_servis (no_servis, id_jenis_servis, catatan) VALUES
('SRV-2026-001', 'SRV-TYP-01', 'Menggunakan oli matic rekomendasi Planet Ban'),
('SRV-2026-001', 'SRV-TYP-02', 'Pembersihan CVT bonus servis ringan'),
('SRV-2026-002', 'SRV-TYP-03', 'Penggantian ban tubeless ukuran standar');

INSERT INTO pengingat_servis (id_pengingat, jenis_pengingat, tanggal_jatuh_tempo, status_pengingat, plat_nomor) VALUES
('PNG-001', 'Ganti Oli Berikutnya', '2026-12-01', 'Aktif', 'AE-4321-XX'),
('PNG-002', 'Cek Tekanan Ban', '2026-11-05', 'Aktif', 'AE-1234-AB');


-- 3. TAHAP 1: QUERY JOIN KOMPLEKS

SELECT
    p.id_pelanggan,
    p.nama_pelanggan,
    COUNT(ds.id_jenis_servis) AS total_layanan_servis
FROM pelanggan p
JOIN kendaraan k ON p.id_pelanggan = k.id_pelanggan
JOIN servis s ON k.plat_nomor = s.plat_nomor
JOIN detail_servis ds ON s.no_servis = ds.no_servis
JOIN jenis_servis js ON ds.id_jenis_servis = js.id_jenis_servis
GROUP BY p.id_pelanggan, p.nama_pelanggan;


-- 4. TAHAP 2: PENERAPAN DENORMALISASI (DDL & UPDATE)

ALTER TABLE pelanggan ADD COLUMN total_layanan_servis INT DEFAULT 0;

UPDATE pelanggan p
SET total_layanan_servis = COALESCE((
    SELECT COUNT(ds.id_jenis_servis)
    FROM kendaraan k
    JOIN servis s ON k.plat_nomor = s.plat_nomor
    JOIN detail_servis ds ON s.no_servis = ds.no_servis
    WHERE k.id_pelanggan = p.id_pelanggan
), 0);


-- 5. TAHAP 3: QUERY SEDERHANA (PEMBUKTIAN TANPA JOIN)

SELECT
    id_pelanggan,
    nama_pelanggan,
    total_layanan_servis
FROM pelanggan;
