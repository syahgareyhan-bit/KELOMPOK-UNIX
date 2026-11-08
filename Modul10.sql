SELECT @@version_comment;
SELECT table_name, engine from information_schema.tables
WHERE  table_schema = "motomind";

-- Menambah data pelanggan baru

INSERT INTO pelanggan (id_pelanggan, nama_pelanggan, no @whatsapp, tanggal_daftar)
VALUES ('PLG-101', 'Indah Permatasari', '087654367654', '2025-09-20');
SELECT k.plat_nomor, k.merek, k.tipe_motor, p.nama_pelanggan
FROM kendaraan k
JOIN pelanggan p ON p.id_pelanggan = k.id_pelanggan
WHERE k.merek = 'Honda';
DELETE FROM pelanggan WHERE id_pelanggan = 'PLG-004'
SELECT * FROM pelanggan
  
INSERT INTO kendaraan (plat_nomor, merek, tipe_motor, tahun_produksi, id_pelanggan)
VALUES ('AE-9999-ZZ', 'Honda', 'Scoopy', 2020, 'PLG-999')
  
INSERT INTO servis (no_servis, tanggal_servis, plat_nomor, id_bengkel)
VALUES ('SRV-2026-900', '2026-10-12', 'AE-0000-XX', 'BKL-001'); 

INSERT INTO detail_servis (no_servis, id_jenis_servis, catatan)
VALUES ('SRV-2026-001', 'SRV-TYP-99', 'jenis tidak ada');
 
INSERT INTO pelanggan (id_pelanggan, nama_pelanggan) VALUES ('PLG-001', 'Duplikat');

INSERT INTO pelanggan (id_pelanggan, nama_pelanggan) VALUES ('PLG-010', NULL);

START TRANSACTION;
DELETE FROM pelanggan WHERE id_pelanggan = 'PLG-001';
SELECT COUNT(*) FROM kendaraan WHERE id_pelanggan = 'PLG-001'; 
SELECT COUNT(*) FROM servis WHERE no_servis = 'SRV-2026-001'; 
ROLLBACK;
 
START TRANSACTION;
DELETE FROM bengkel WHERE id_bengkel = 'BKL-001';
SELECT no_servis, id_bengkel FROM servis;   -- id_bengkel menjadi NULL
ROLLBACK;

EXPLAIN
SELECT no_servis, tanggal_servis, status_servis, plat_nomor
FROM servis
WHERE tanggal_servis >= '2026-10-01' AND tanggal_servis < '2026-11-01';

CREATE INDEX idx_servis_tanggal ON servis(tanggal_servis);
SHOW INDEX FROM servis;

SELECT 
    s.no_servis,
    s.tanggal_servis,
    p.id_pelanggan,
    p.nama_pelanggan,
    k.plat_nomor,
    k.merek,
    k.tipe_motor,
    b.nama_bengkel,
    s.status_servis
FROM servis s
JOIN kendaraan k ON s.plat_nomor = k.plat_nomor
JOIN pelanggan p ON k.id_pelanggan = p.id_pelanggan
JOIN bengkel b ON s.id_bengkel = b.id_bengkel;

SELECT 
    id_pelanggan,
    nama_pelanggan,
    total_layanan_servis
FROM pelanggan;
