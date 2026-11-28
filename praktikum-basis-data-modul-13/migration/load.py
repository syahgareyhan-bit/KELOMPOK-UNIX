import os
from getpass import getpass

from elasticsearch import Elasticsearch, helpers

CA_CERT = r"C:\Users\mdg-e\Downloads\elasticsearch-9.5.7-windows-x86_64\elasticsearch-9.5.7\config\certs\http_ca.crt"
INDEX = "katalog_motomind"


def sambung_es():
    pw = os.environ.get("MOTOMIND_ES_PW") or getpass("Password motomind_app: ")
    return Elasticsearch(
        "https://localhost:9200",
        basic_auth=("motomind_app", pw),
        ca_certs=CA_CERT,
        request_timeout=120,
        retry_on_timeout=True,
        max_retries=3,
    )


def muat(es, dokumen):
    id_mysql = set()

    def aksi():
        for d in dokumen:
            id_mysql.add(str(d["id_katalog"]))
            yield {"_index": INDEX, "_id": d["id_katalog"], "_source": d}

    sukses, error = helpers.bulk(es, aksi(), chunk_size=100, raise_on_error=False)
    print("Berhasil dikirim:", sukses)
    print("Gagal:", len(error))
    for e in error[:5]:
        print(e)
    return id_mysql, error


def hapus_yatim(es, id_mysql, error):
    if not id_mysql or error:
        print("Pembersihan dilewati (MySQL kosong atau ada error bulk).")
        return
    id_es = {
        h["_id"]
        for h in helpers.scan(
            es, index=INDEX, query={"query": {"match_all": {}}}, _source=False
        )
    }
    id_hapus = id_es - id_mysql
    if not id_hapus:
        print("Tidak ada dokumen yatim.")
        return
    aksi = ({"_op_type": "delete", "_index": INDEX, "_id": i} for i in id_hapus)
    terhapus, gagal = helpers.bulk(es, aksi, raise_on_error=False)
    print("Dokumen yatim dihapus:", terhapus, "| gagal:", len(gagal))