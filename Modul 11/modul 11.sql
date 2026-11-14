SELECT VERSION();
SELECT @@version_comment;
SHOW DATABASES;
SHOW ENGINES;
SHOW VARIABLES LIKE 'character_set_server';
SHOW VARIABLES LIKE 'collation_server';
SELECT JSON_VALID('{"nama":"Budi"}') AS json_valid, JSON_EXTRACT('{"nama":"Budi"}', '$.nama') AS nama;
SELECT NOW();
SELECT DATABASE();


-- 1. Membuat & Memilih Database
CREATE DATABASE IF NOT EXISTS db_motomind_modul11;
USE db_motomind_modul11;

-- 2. Membuat Tabel Katalog dengan Kolom JSON
CREATE TABLE IF NOT EXISTS katalog_motomind (
    id_katalog INT AUTO_INCREMENT PRIMARY KEY,
    kode_item VARCHAR(20) NOT NULL UNIQUE,
    nama_item VARCHAR(100) NOT NULL,
    kategori ENUM('Servis', 'Suku Cadang', 'Paket Member') NOT NULL,
    harga DECIMAL(10, 2) NOT NULL,
    spesifikasi JSON NOT NULL,
    dibuat_pada TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

-- 3. Memasukkan Data Awal (INSERT) dengan Struktur JSON Bervariasi
INSERT INTO katalog_motomind (kode_item, nama_item, kategori, harga, spesifikasi) VALUES
('SRV-001', 'Servis Rutin Injeksi Matic', 'Servis', 75000.00,
 '{"jenis_motor": "Matic 110cc-125cc", "estimasi_menit": 45, "item_cek": ["Throttle Body", "CVT", "Busi", "Filter Udara"], "oli_rekomendasi": "X-Ten Matic 10W-30"}'),
('PRT-001', 'Ban Tubeless Presisi Sport 90/80-14', 'Suku Cadang', 245000.00,
 '{"ukuran_ban": "90/80-14", "tipe_ban": "Tubeless", "posisi": "Depan", "garansi_bulan": 12}'),
('MEM-001', 'Paket MotoMind Care Plus', 'Paket Member', 150000.00,
 '{"durasi_hari": 180, "gratis_nitrogen": true, "batas_servis": 3, "fitur_app": ["Notifikasi WhatsApp Otomatis", "Riwayat Digital", "Prioritas Antrean"]}');

-- Pengujian Manipulasi dan Pencarian JSON

-- 1. Membaca Atribut Spesifik di dalam JSON (JSON_EXTRACT & Operator ->>)
SELECT 
    id_katalog,
    nama_item,
    harga,
    JSON_EXTRACT(spesifikasi, '$.jenis_motor') AS jenis_motor,
    spesifikasi->>'$.ukuran_ban' AS ukuran_ban,
    spesifikasi->>'$.durasi_hari' AS durasi_hari
FROM katalog_motomind;

-- 2. Menghapus Atribut Tertentu (JSON_REMOVE)
UPDATE katalog_motomind
SET spesifikasi = JSON_REMOVE(spesifikasi, '$.garansi_bulan')
WHERE nama_item = 'Ban Tubeless Presisi Sport 90/80-14';

-- 3. Pencarian Berdasarkan Atribut & Array JSON (WHERE & JSON_CONTAINS)
-- Cari berdasarkan tipe ban Tubeless
SELECT nama_item, harga, spesifikasi
FROM katalog_motomind
WHERE JSON_UNQUOTE(JSON_EXTRACT(spesifikasi, '$.tipe_ban')) = 'Tubeless';

-- Cari item yang memiliki fitur aplikasi tertentu di dalam array
SELECT nama_item, harga, spesifikasi
FROM katalog_motomind
WHERE JSON_CONTAINS(spesifikasi, '"Notifikasi WhatsApp Otomatis"', '$.fitur_app');
