import json
from decimal import Decimal


def ubah_baris(baris):
    spes = baris["spesifikasi"]
    if isinstance(spes, (str, bytes)):
        try:
            spes = json.loads(spes)
        except json.JSONDecodeError:
            print("JSON tidak valid, id_katalog =", baris["id_katalog"])
            spes = None

    harga = baris["harga"]
    return {
        "id_katalog": baris["id_katalog"],
        "id_kategori": baris["id_kategori"],
        "nama_kategori": baris["nama_kategori"],
        "nama_item": baris["nama_item"],
        "harga": float(harga) if isinstance(harga, Decimal) else harga,
        "spesifikasi": spes,
    }