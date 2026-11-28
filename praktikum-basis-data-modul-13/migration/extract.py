import os
from getpass import getpass

import mysql.connector

QUERY = """
    SELECT k.id_katalog, k.id_kategori, c.nama_kategori,
           k.nama_item, k.harga, k.spesifikasi
    FROM katalog_motomind k
    LEFT JOIN kategori_layanan c ON k.id_kategori = c.id_kategori
"""


def sambung_mysql():
    pw = os.environ.get("MOTOMIND_MYSQL_PW") or getpass("Password MySQL: ")
    return mysql.connector.connect(
        host="localhost", port=3306, user="motomind_reader",
        password=pw, database="db_motomind",
    )


def hitung_baris(conn):
    cur = conn.cursor(dictionary=True)
    cur.execute("SELECT COUNT(*) AS total FROM katalog_motomind")
    total = cur.fetchone()["total"]
    cur.close()
    return total


def ambil_baris(conn):
    cur = conn.cursor(dictionary=True)
    cur.execute(QUERY)
    for baris in cur:
        yield baris
    cur.close()