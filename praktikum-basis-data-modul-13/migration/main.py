from extraction.extract import sambung_mysql, hitung_baris, ambil_baris
from transformation.transform import ubah_baris
from loading.load import sambung_es, muat, hapus_yatim, INDEX

conn = sambung_mysql()
es = sambung_es()

print("Jumlah baris katalog_motomind di MySQL:", hitung_baris(conn))

dokumen = (ubah_baris(b) for b in ambil_baris(conn))
id_mysql, error = muat(es, dokumen)
hapus_yatim(es, id_mysql, error)

conn.close()
es.indices.refresh(index=INDEX)
print("Jumlah dokumen di Elasticsearch:", es.count(index=INDEX)["count"])