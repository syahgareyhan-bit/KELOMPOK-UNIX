db.version()                           
db.serverStatus().storageEngine           
show dbs                            
db.hello()                              
db.getCollectionInfos({ name: "servis" }) 
db.servis.getIndexes()                
rs.status().ok                        
db.adminCommand({ getParameter: 1, featureCompatibilityVersion: 1 })
new Date()                            
db.getName()

use MotoMind

// 1. BENGKEL — 1 dokumen
db.bengkel.insertMany([
  {
    id_bengkel: "BKL-001",
    nama_bengkel: "Planet Ban - Taman 2",
    alamat: "Jl. Kapuas No. 1, Madiun",
    no_telepon: "08170006055"
  }
]);

// 2. PELANGGAN — 100 dokumen
db.pelanggan.insertMany([
  {id_pelanggan:"PLG-001",nama_pelanggan:"Rehan Prasetya",no_whatsapp:"085123456781",tanggal_daftar:new Date("2026-09-01"),total_layanan_servis:2},
  {id_pelanggan:"PLG-002",nama_pelanggan:"Budi Pratama",no_whatsapp:"085123456782",tanggal_daftar:new Date("2026-09-05"),total_layanan_servis:1},
  {id_pelanggan:"PLG-003",nama_pelanggan:"Siti Rahma",no_whatsapp:"085123456783",tanggal_daftar:new Date("2026-09-10"),total_layanan_servis:1},
  {id_pelanggan:"PLG-005",nama_pelanggan:"Dwi Santoso",no_whatsapp:"085123456785",tanggal_daftar:new Date("2025-01-20"),total_layanan_servis:3},
  {id_pelanggan:"PLG-006",nama_pelanggan:"Eko Wijaya",no_whatsapp:"085123456786",tanggal_daftar:new Date("2025-01-22"),total_layanan_servis:5},
  {id_pelanggan:"PLG-007",nama_pelanggan:"Rina Lestari",no_whatsapp:"085123456787",tanggal_daftar:new Date("2025-01-25"),total_layanan_servis:2},
  {id_pelanggan:"PLG-008",nama_pelanggan:"Dewi Saputra",no_whatsapp:"085123456788",tanggal_daftar:new Date("2025-01-28"),total_layanan_servis:1},
  {id_pelanggan:"PLG-009",nama_pelanggan:"Andi Utami",no_whatsapp:"085123456789",tanggal_daftar:new Date("2025-02-01"),total_layanan_servis:6},
  {id_pelanggan:"PLG-010",nama_pelanggan:"Fajar Hidayat",no_whatsapp:"085123456790",tanggal_daftar:new Date("2025-02-03"),total_layanan_servis:0},
  {id_pelanggan:"PLG-011",nama_pelanggan:"Joko Susilo",no_whatsapp:"085123456791",tanggal_daftar:new Date("2025-02-05"),total_layanan_servis:3},
  {id_pelanggan:"PLG-012",nama_pelanggan:"Maya Anggraini",no_whatsapp:"085123456792",tanggal_daftar:new Date("2025-02-08"),total_layanan_servis:2},
  {id_pelanggan:"PLG-013",nama_pelanggan:"Bayu Pratama",no_whatsapp:"085123456793",tanggal_daftar:new Date("2025-02-10"),total_layanan_servis:4},
  {id_pelanggan:"PLG-014",nama_pelanggan:"Fitri Handayani",no_whatsapp:"085123456794",tanggal_daftar:new Date("2025-02-12"),total_layanan_servis:1},
  {id_pelanggan:"PLG-015",nama_pelanggan:"Rizky Ramadhan",no_whatsapp:"085123456795",tanggal_daftar:new Date("2025-02-15"),total_layanan_servis:0},
  {id_pelanggan:"PLG-016",nama_pelanggan:"Siska Permata",no_whatsapp:"085123456796",tanggal_daftar:new Date("2025-02-18"),total_layanan_servis:7},
  {id_pelanggan:"PLG-017",nama_pelanggan:"Dimas Pangestu",no_whatsapp:"085123456797",tanggal_daftar:new Date("2025-02-20"),total_layanan_servis:2},
  {id_pelanggan:"PLG-018",nama_pelanggan:"Putri Wulandari",no_whatsapp:"085123456798",tanggal_daftar:new Date("2025-02-22"),total_layanan_servis:3},
  {id_pelanggan:"PLG-019",nama_pelanggan:"Gilang Pratama",no_whatsapp:"085123456799",tanggal_daftar:new Date("2025-02-25"),total_layanan_servis:1},
  {id_pelanggan:"PLG-020",nama_pelanggan:"Nia Ramadhani",no_whatsapp:"085123456800",tanggal_daftar:new Date("2025-02-28"),total_layanan_servis:5},
  {id_pelanggan:"PLG-021",nama_pelanggan:"Agus Setiawan",no_whatsapp:"085123456801",tanggal_daftar:new Date("2025-03-02"),total_layanan_servis:0},
  {id_pelanggan:"PLG-022",nama_pelanggan:"Indah Permatasari",no_whatsapp:"085123456802",tanggal_daftar:new Date("2025-03-05"),total_layanan_servis:2},
  {id_pelanggan:"PLG-023",nama_pelanggan:"Hendra Gunawan",no_whatsapp:"085123456803",tanggal_daftar:new Date("2025-03-07"),total_layanan_servis:3},
  {id_pelanggan:"PLG-024",nama_pelanggan:"Wahyudi Saputra",no_whatsapp:"085123456804",tanggal_daftar:new Date("2025-03-10"),total_layanan_servis:1},
  {id_pelanggan:"PLG-025",nama_pelanggan:"Reni Anggraeni",no_whatsapp:"085123456805",tanggal_daftar:new Date("2025-03-12"),total_layanan_servis:4},
  {id_pelanggan:"PLG-026",nama_pelanggan:"Yudi Setiawan",no_whatsapp:"085123456806",tanggal_daftar:new Date("2025-03-15"),total_layanan_servis:2},
  {id_pelanggan:"PLG-027",nama_pelanggan:"Lestari Wulandari",no_whatsapp:"085123456807",tanggal_daftar:new Date("2025-03-18"),total_layanan_servis:0},
  {id_pelanggan:"PLG-028",nama_pelanggan:"Doni Kusuma",no_whatsapp:"085123456808",tanggal_daftar:new Date("2025-03-20"),total_layanan_servis:6},
  {id_pelanggan:"PLG-029",nama_pelanggan:"Mega Lestari",no_whatsapp:"085123456809",tanggal_daftar:new Date("2025-03-22"),total_layanan_servis:1},
  {id_pelanggan:"PLG-030",nama_pelanggan:"Taufik Hidayat",no_whatsapp:"085123456810",tanggal_daftar:new Date("2025-03-25"),total_layanan_servis:3},
  {id_pelanggan:"PLG-031",nama_pelanggan:"Arif Budiman",no_whatsapp:"085123456811",tanggal_daftar:new Date("2025-03-28"),total_layanan_servis:2},
  {id_pelanggan:"PLG-032",nama_pelanggan:"Sartika Ningsih",no_whatsapp:"085123456812",tanggal_daftar:new Date("2025-04-01"),total_layanan_servis:5},
  {id_pelanggan:"PLG-033",nama_pelanggan:"Rian Hidayat",no_whatsapp:"085123456813",tanggal_daftar:new Date("2025-04-03"),total_layanan_servis:0},
  {id_pelanggan:"PLG-034",nama_pelanggan:"Anita Rahmawati",no_whatsapp:"085123456814",tanggal_daftar:new Date("2025-04-05"),total_layanan_servis:1},
  {id_pelanggan:"PLG-035",nama_pelanggan:"Yoga Pratama",no_whatsapp:"085123456815",tanggal_daftar:new Date("2025-04-08"),total_layanan_servis:4},
  {id_pelanggan:"PLG-036",nama_pelanggan:"Sri Lestari",no_whatsapp:"085123456816",tanggal_daftar:new Date("2025-04-10"),total_layanan_servis:2},
  {id_pelanggan:"PLG-037",nama_pelanggan:"Doni Setiawan",no_whatsapp:"085123456817",tanggal_daftar:new Date("2025-04-12"),total_layanan_servis:3},
  {id_pelanggan:"PLG-038",nama_pelanggan:"Wati Kusuma",no_whatsapp:"085123456818",tanggal_daftar:new Date("2025-04-15"),total_layanan_servis:1},
  {id_pelanggan:"PLG-039",nama_pelanggan:"Bambang Supriyadi",no_whatsapp:"085123456819",tanggal_daftar:new Date("2025-04-18"),total_layanan_servis:0},
  {id_pelanggan:"PLG-040",nama_pelanggan:"Ratna Sari",no_whatsapp:"085123456820",tanggal_daftar:new Date("2025-04-20"),total_layanan_servis:8},
  {id_pelanggan:"PLG-041",nama_pelanggan:"Joko Purnomo",no_whatsapp:"085123456821",tanggal_daftar:new Date("2025-04-22"),total_layanan_servis:2},
  {id_pelanggan:"PLG-042",nama_pelanggan:"Lia Marlina",no_whatsapp:"085123456822",tanggal_daftar:new Date("2025-04-25"),total_layanan_servis:1},
  {id_pelanggan:"PLG-043",nama_pelanggan:"Feri Irawan",no_whatsapp:"085123456823",tanggal_daftar:new Date("2025-04-28"),total_layanan_servis:4},
  {id_pelanggan:"PLG-044",nama_pelanggan:"Diana Puspita",no_whatsapp:"085123456824",tanggal_daftar:new Date("2025-05-01"),total_layanan_servis:3},
  {id_pelanggan:"PLG-045",nama_pelanggan:"Heri Susanto",no_whatsapp:"085123456825",tanggal_daftar:new Date("2025-05-03"),total_layanan_servis:0},
  {id_pelanggan:"PLG-046",nama_pelanggan:"Tuti Alawiyah",no_whatsapp:"085123456826",tanggal_daftar:new Date("2025-05-05"),total_layanan_servis:2},
  {id_pelanggan:"PLG-047",nama_pelanggan:"Roni Wijaya",no_whatsapp:"085123456827",tanggal_daftar:new Date("2025-05-08"),total_layanan_servis:5},
  {id_pelanggan:"PLG-048",nama_pelanggan:"Nining Suryani",no_whatsapp:"085123456828",tanggal_daftar:new Date("2025-05-10"),total_layanan_servis:1},
  {id_pelanggan:"PLG-049",nama_pelanggan:"Agus Prayitno",no_whatsapp:"085123456829",tanggal_daftar:new Date("2025-05-12"),total_layanan_servis:3},
  {id_pelanggan:"PLG-050",nama_pelanggan:"Yuni Astuti",no_whatsapp:"085123456830",tanggal_daftar:new Date("2025-05-15"),total_layanan_servis:2},
  {id_pelanggan:"PLG-051",nama_pelanggan:"Denny Kurniawan",no_whatsapp:"085123456831",tanggal_daftar:new Date("2025-05-18"),total_layanan_servis:0},
  {id_pelanggan:"PLG-052",nama_pelanggan:"Siti Aminah",no_whatsapp:"085123456832",tanggal_daftar:new Date("2025-05-20"),total_layanan_servis:4},
  {id_pelanggan:"PLG-053",nama_pelanggan:"Eko Prasetyo",no_whatsapp:"085123456833",tanggal_daftar:new Date("2025-05-22"),total_layanan_servis:1},
  {id_pelanggan:"PLG-054",nama_pelanggan:"Rika Handayani",no_whatsapp:"085123456834",tanggal_daftar:new Date("2025-05-25"),total_layanan_servis:3},
  {id_pelanggan:"PLG-055",nama_pelanggan:"Dedi Mulyadi",no_whatsapp:"085123456835",tanggal_daftar:new Date("2025-05-28"),total_layanan_servis:2},
  {id_pelanggan:"PLG-056",nama_pelanggan:"Wahyuni",no_whatsapp:"085123456836",tanggal_daftar:new Date("2025-06-01"),total_layanan_servis:6},
  {id_pelanggan:"PLG-057",nama_pelanggan:"Hendrik Saputra",no_whatsapp:"085123456837",tanggal_daftar:new Date("2025-06-03"),total_layanan_servis:0},
  {id_pelanggan:"PLG-058",nama_pelanggan:"Nurul Hidayah",no_whatsapp:"085123456838",tanggal_daftar:new Date("2025-06-05"),total_layanan_servis:2},
  {id_pelanggan:"PLG-059",nama_pelanggan:"Iwan Setiawan",no_whatsapp:"085123456839",tanggal_daftar:new Date("2025-06-08"),total_layanan_servis:1},
  {id_pelanggan:"PLG-060",nama_pelanggan:"Fitriana",no_whatsapp:"085123456840",tanggal_daftar:new Date("2025-06-10"),total_layanan_servis:4},
  {id_pelanggan:"PLG-061",nama_pelanggan:"Agung Nugroho",no_whatsapp:"085123456841",tanggal_daftar:new Date("2025-06-12"),total_layanan_servis:3},
  {id_pelanggan:"PLG-062",nama_pelanggan:"Desi Ratnasari",no_whatsapp:"085123456842",tanggal_daftar:new Date("2025-06-15"),total_layanan_servis:0},
  {id_pelanggan:"PLG-063",nama_pelanggan:"Yanto Supriyanto",no_whatsapp:"085123456843",tanggal_daftar:new Date("2025-06-18"),total_layanan_servis:2},
  {id_pelanggan:"PLG-064",nama_pelanggan:"Kartika Wati",no_whatsapp:"085123456844",tanggal_daftar:new Date("2025-06-20"),total_layanan_servis:5},
  {id_pelanggan:"PLG-065",nama_pelanggan:"Budi Santoso",no_whatsapp:"085123456845",tanggal_daftar:new Date("2025-06-22"),total_layanan_servis:1},
  {id_pelanggan:"PLG-066",nama_pelanggan:"Mimin Mintarsih",no_whatsapp:"085123456846",tanggal_daftar:new Date("2025-06-25"),total_layanan_servis:3},
  {id_pelanggan:"PLG-067",nama_pelanggan:"Imam Syafi i",no_whatsapp:"085123456847",tanggal_daftar:new Date("2025-06-28"),total_layanan_servis:2},
  {id_pelanggan:"PLG-068",nama_pelanggan:"Siti Rohmah",no_whatsapp:"085123456848",tanggal_daftar:new Date("2025-07-01"),total_layanan_servis:0},
  {id_pelanggan:"PLG-069",nama_pelanggan:"Acep Hermawan",no_whatsapp:"085123456849",tanggal_daftar:new Date("2025-07-03"),total_layanan_servis:4},
  {id_pelanggan:"PLG-070",nama_pelanggan:"Endang Setyawati",no_whatsapp:"085123456850",tanggal_daftar:new Date("2025-07-05"),total_layanan_servis:1},
  {id_pelanggan:"PLG-071",nama_pelanggan:"Fajar Sidik",no_whatsapp:"085123456851",tanggal_daftar:new Date("2025-07-08"),total_layanan_servis:3},
  {id_pelanggan:"PLG-072",nama_pelanggan:"Gita Gutawa",no_whatsapp:"085123456852",tanggal_daftar:new Date("2025-07-10"),total_layanan_servis:2},
  {id_pelanggan:"PLG-073",nama_pelanggan:"Hadi Ismanto",no_whatsapp:"085123456853",tanggal_daftar:new Date("2025-07-12"),total_layanan_servis:0},
  {id_pelanggan:"PLG-074",nama_pelanggan:"Iis Dahlia",no_whatsapp:"085123456854",tanggal_daftar:new Date("2025-07-15"),total_layanan_servis:5},
  {id_pelanggan:"PLG-075",nama_pelanggan:"Junaedi",no_whatsapp:"085123456855",tanggal_daftar:new Date("2025-07-18"),total_layanan_servis:1},
  {id_pelanggan:"PLG-076",nama_pelanggan:"Kiki Fatmala",no_whatsapp:"085123456856",tanggal_daftar:new Date("2025-07-20"),total_layanan_servis:2},
  {id_pelanggan:"PLG-077",nama_pelanggan:"Lukman Hakim",no_whatsapp:"085123456857",tanggal_daftar:new Date("2025-07-22"),total_layanan_servis:4},
  {id_pelanggan:"PLG-078",nama_pelanggan:"Marlina",no_whatsapp:"085123456858",tanggal_daftar:new Date("2025-07-25"),total_layanan_servis:0},
  {id_pelanggan:"PLG-079",nama_pelanggan:"Nanang Hidayat",no_whatsapp:"085123456859",tanggal_daftar:new Date("2025-07-28"),total_layanan_servis:3},
  {id_pelanggan:"PLG-080",nama_pelanggan:"Oki Setiana",no_whatsapp:"085123456860",tanggal_daftar:new Date("2025-08-01"),total_layanan_servis:1},
  {id_pelanggan:"PLG-081",nama_pelanggan:"Panji Petualang",no_whatsapp:"085123456861",tanggal_daftar:new Date("2025-08-03"),total_layanan_servis:2},
  {id_pelanggan:"PLG-082",nama_pelanggan:"Qori Sandioriva",no_whatsapp:"085123456862",tanggal_daftar:new Date("2025-08-05"),total_layanan_servis:6},
  {id_pelanggan:"PLG-083",nama_pelanggan:"Rudi Tabuti",no_whatsapp:"085123456863",tanggal_daftar:new Date("2025-08-08"),total_layanan_servis:0},
  {id_pelanggan:"PLG-084",nama_pelanggan:"Siskaeee",no_whatsapp:"085123456864",tanggal_daftar:new Date("2025-08-10"),total_layanan_servis:3},
  {id_pelanggan:"PLG-085",nama_pelanggan:"Tukul Arwana",no_whatsapp:"085123456865",tanggal_daftar:new Date("2025-08-12"),total_layanan_servis:1},
  {id_pelanggan:"PLG-086",nama_pelanggan:"Ussy Sulistiawaty",no_whatsapp:"085123456866",tanggal_daftar:new Date("2025-08-15"),total_layanan_servis:4},
  {id_pelanggan:"PLG-087",nama_pelanggan:"Vicky Prasetyo",no_whatsapp:"085123456867",tanggal_daftar:new Date("2025-08-18"),total_layanan_servis:2},
  {id_pelanggan:"PLG-088",nama_pelanggan:"Wulan Guritno",no_whatsapp:"085123456868",tanggal_daftar:new Date("2025-08-20"),total_layanan_servis:0},
  {id_pelanggan:"PLG-089",nama_pelanggan:"Xaverius",no_whatsapp:"085123456869",tanggal_daftar:new Date("2025-08-22"),total_layanan_servis:5},
  {id_pelanggan:"PLG-090",nama_pelanggan:"Yati Octavia",no_whatsapp:"085123456870",tanggal_daftar:new Date("2025-08-25"),total_layanan_servis:1},
  {id_pelanggan:"PLG-091",nama_pelanggan:"Zainal Abidin",no_whatsapp:"085123456871",tanggal_daftar:new Date("2025-08-28"),total_layanan_servis:2},
  {id_pelanggan:"PLG-092",nama_pelanggan:"Adinda Azani",no_whatsapp:"085123456872",tanggal_daftar:new Date("2025-09-01"),total_layanan_servis:3},
  {id_pelanggan:"PLG-093",nama_pelanggan:"Billy Syahputra",no_whatsapp:"085123456873",tanggal_daftar:new Date("2025-09-03"),total_layanan_servis:0},
  {id_pelanggan:"PLG-094",nama_pelanggan:"Cinta Laura",no_whatsapp:"085123456874",tanggal_daftar:new Date("2025-09-05"),total_layanan_servis:4},
  {id_pelanggan:"PLG-095",nama_pelanggan:"Desta Mahendra",no_whatsapp:"085123456875",tanggal_daftar:new Date("2025-09-08"),total_layanan_servis:1},
  {id_pelanggan:"PLG-096",nama_pelanggan:"Enzy Storia",no_whatsapp:"085123456876",tanggal_daftar:new Date("2025-09-10"),total_layanan_servis:2},
  {id_pelanggan:"PLG-097",nama_pelanggan:"Felicya Angelista",no_whatsapp:"085123456877",tanggal_daftar:new Date("2025-09-12"),total_layanan_servis:3},
  {id_pelanggan:"PLG-098",nama_pelanggan:"Gading Marten",no_whatsapp:"085123456878",tanggal_daftar:new Date("2025-09-15"),total_layanan_servis:0},
  {id_pelanggan:"PLG-099",nama_pelanggan:"Hesti Purwadinata",no_whatsapp:"085123456879",tanggal_daftar:new Date("2025-09-18"),total_layanan_servis:2},
  {id_pelanggan:"PLG-100",nama_pelanggan:"Iqbaal Ramadhan",no_whatsapp:"085123456880",tanggal_daftar:new Date("2025-09-20"),total_layanan_servis:1},
  {id_pelanggan:"PLG-101",nama_pelanggan:"Indah Permatasari",no_whatsapp:"087654367654",tanggal_daftar:new Date("2025-09-20"),total_layanan_servis:0}
]);
// 3. KENDARAAN — 29 dokumen
db.kendaraan.insertMany([
  {plat_nomor:"AE-1001-AA",merek:"Honda",tipe_motor:"Vario 160",tahun_produksi:2023,id_pelanggan:"PLG-001"},
  {plat_nomor:"AE-1002-BB",merek:"Yamaha",tipe_motor:"NMAX",tahun_produksi:2022,id_pelanggan:"PLG-002"},
  {plat_nomor:"AE-1003-CC",merek:"Honda",tipe_motor:"BeAT",tahun_produksi:2023,id_pelanggan:"PLG-003"},
  {plat_nomor:"AE-1005-EE",merek:"Yamaha",tipe_motor:"Aerox",tahun_produksi:2024,id_pelanggan:"PLG-005"},
  {plat_nomor:"AE-1006-FF",merek:"Honda",tipe_motor:"Scoopy",tahun_produksi:2023,id_pelanggan:"PLG-006"},
  {plat_nomor:"AE-1007-GG",merek:"Yamaha",tipe_motor:"PCX",tahun_produksi:2022,id_pelanggan:"PLG-007"},
  {plat_nomor:"AE-1008-HH",merek:"Honda",tipe_motor:"Genio",tahun_produksi:2021,id_pelanggan:"PLG-008"},
  {plat_nomor:"AE-1009-II",merek:"Suzuki",tipe_motor:"Satria FU",tahun_produksi:2020,id_pelanggan:"PLG-009"},
  {plat_nomor:"AE-1010-JJ",merek:"Yamaha",tipe_motor:"Lexi",tahun_produksi:2024,id_pelanggan:"PLG-010"},
  {plat_nomor:"AE-1011-KK",merek:"Honda",tipe_motor:"Vario 125",tahun_produksi:2023,id_pelanggan:"PLG-011"},
  {plat_nomor:"AE-1012-LL",merek:"Yamaha",tipe_motor:"Mio M3",tahun_produksi:2021,id_pelanggan:"PLG-012"},
  {plat_nomor:"AE-1013-MM",merek:"Honda",tipe_motor:"CB150R",tahun_produksi:2022,id_pelanggan:"PLG-013"},
  {plat_nomor:"AE-1014-NN",merek:"Yamaha",tipe_motor:"Vixion",tahun_produksi:2020,id_pelanggan:"PLG-014"},
  {plat_nomor:"AE-1015-OO",merek:"Kawasaki",tipe_motor:"W175",tahun_produksi:2023,id_pelanggan:"PLG-015"},
  {plat_nomor:"AE-1016-PP",merek:"Honda",tipe_motor:"Revo",tahun_produksi:2019,id_pelanggan:"PLG-016"},
  {plat_nomor:"AE-1017-QQ",merek:"Yamaha",tipe_motor:"FreeGo",tahun_produksi:2022,id_pelanggan:"PLG-017"},
  {plat_nomor:"AE-1018-RR",merek:"Honda",tipe_motor:"Supra GTR",tahun_produksi:2021,id_pelanggan:"PLG-018"},
  {plat_nomor:"AE-1019-SS",merek:"Suzuki",tipe_motor:"GSX-R150",tahun_produksi:2022,id_pelanggan:"PLG-019"},
  {plat_nomor:"AE-1020-TT",merek:"Yamaha",tipe_motor:"Fazzio",tahun_produksi:2024,id_pelanggan:"PLG-020"},
  {plat_nomor:"AE-1021-UU",merek:"Honda",tipe_motor:"PCX 160",tahun_produksi:2023,id_pelanggan:"PLG-021"},
  {plat_nomor:"AE-1022-VV",merek:"Yamaha",tipe_motor:"XSR 155",tahun_produksi:2023,id_pelanggan:"PLG-022"},
  {plat_nomor:"AE-1023-WW",merek:"Honda",tipe_motor:"Verza",tahun_produksi:2020,id_pelanggan:"PLG-023"},
  {plat_nomor:"AE-1025-YY",merek:"Honda",tipe_motor:"Super Cub",tahun_produksi:2021,id_pelanggan:"PLG-025"},
  {plat_nomor:"AE-1026-ZZ",merek:"Yamaha",tipe_motor:"Grand Filano",tahun_produksi:2024,id_pelanggan:"PLG-026"},
  {plat_nomor:"AE-1027-AB",merek:"Honda",tipe_motor:"Sonic 150R",tahun_produksi:2021,id_pelanggan:"PLG-027"},
  {plat_nomor:"AE-1028-BC",merek:"Yamaha",tipe_motor:"MT-15",tahun_produksi:2022,id_pelanggan:"PLG-028"},
  {plat_nomor:"AE-1029-CD",merek:"Honda",tipe_motor:"Adv 160",tahun_produksi:2023,id_pelanggan:"PLG-029"},
  {plat_nomor:"AE-1030-DE",merek:"Suzuki",tipe_motor:"Nex II",tahun_produksi:2020,id_pelanggan:"PLG-030"},
  {plat_nomor:"AE-1031-EF",merek:"Honda",tipe_motor:"Blade",tahun_produksi:2019,id_pelanggan:"PLG-031"}
]);

// 4. JENIS_SERVIS — 3 dokumen
db.jenis_servis.insertMany([
  {id_jenis_servis:"SRV-TYP-01",nama_servis:"Ganti Oli Mesin (X-Ray)",kategori:"Oli & Pelumas",estimasi_menit:15},
  {id_jenis_servis:"SRV-TYP-02",nama_servis:"Servis Ringan / Tune Up",kategori:"Mesin",estimasi_menit:30},
  {id_jenis_servis:"SRV-TYP-03",nama_servis:"Ganti Ban Belakang Tubeless",kategori:"Kaki-kaki",estimasi_menit:20}
]);

// 5. SERVIS — 28 dokumen
db.servis.insertMany([
  {no_servis:"SRV-2026-003",tanggal_servis:new Date("2026-10-03"),jam_servis:"09:00:00",asal_pendaftaran:"Aplikasi MotoMind",status_servis:"Proses",keluhan:"Mesin kasar",hasil_pemeriksaan:null,waktu_selesai:null,plat_nomor:"AE-1003-CC",id_bengkel:"BKL-001"},
  {no_servis:"SRV-2026-004",tanggal_servis:new Date("2026-10-04"),jam_servis:"11:30:00",asal_pendaftaran:"Datang Langsung",status_servis:"Selesai",keluhan:"Ban bocor halus",hasil_pemeriksaan:null,waktu_selesai:null,plat_nomor:"AE-1005-EE",id_bengkel:"BKL-001"},
  {no_servis:"SRV-2026-005",tanggal_servis:new Date("2026-10-05"),jam_servis:"13:00:00",asal_pendaftaran:"Aplikasi MotoMind",status_servis:"Selesai",keluhan:"Servis CVT",hasil_pemeriksaan:null,waktu_selesai:null,plat_nomor:"AE-1006-FF",id_bengkel:"BKL-001"},
  {no_servis:"SRV-2026-006",tanggal_servis:new Date("2026-10-06"),jam_servis:"08:00:00",asal_pendaftaran:"Datang Langsung",status_servis:"Selesai",keluhan:"Ganti kampas rem",hasil_pemeriksaan:null,waktu_selesai:null,plat_nomor:"AE-1007-GG",id_bengkel:"BKL-001"},
  {no_servis:"SRV-2026-007",tanggal_servis:new Date("2026-10-07"),jam_servis:"14:20:00",asal_pendaftaran:"Aplikasi MotoMind",status_servis:"Proses",keluhan:"Lampu depan mati",hasil_pemeriksaan:null,waktu_selesai:null,plat_nomor:"AE-1008-HH",id_bengkel:"BKL-001"},
  {no_servis:"SRV-2026-008",tanggal_servis:new Date("2026-10-08"),jam_servis:"09:45:00",asal_pendaftaran:"Datang Langsung",status_servis:"Selesai",keluhan:"Ganti aki",hasil_pemeriksaan:null,waktu_selesai:null,plat_nomor:"AE-1009-II",id_bengkel:"BKL-001"},
  {no_servis:"SRV-2026-009",tanggal_servis:new Date("2026-10-09"),jam_servis:"10:00:00",asal_pendaftaran:"Aplikasi MotoMind",status_servis:"Selesai",keluhan:"Tune up berkala",hasil_pemeriksaan:null,waktu_selesai:null,plat_nomor:"AE-1010-JJ",id_bengkel:"BKL-001"},
  {no_servis:"SRV-2026-010",tanggal_servis:new Date("2026-10-10"),jam_servis:"15:10:00",asal_pendaftaran:"Datang Langsung",status_servis:"Proses",keluhan:"Ganti v-belt",hasil_pemeriksaan:null,waktu_selesai:null,plat_nomor:"AE-1011-KK",id_bengkel:"BKL-001"},
  {no_servis:"SRV-2026-011",tanggal_servis:new Date("2026-10-11"),jam_servis:"08:30:00",asal_pendaftaran:"Aplikasi MotoMind",status_servis:"Selesai",keluhan:"Ganti oli",hasil_pemeriksaan:null,waktu_selesai:null,plat_nomor:"AE-1012-LL",id_bengkel:"BKL-001"},
  {no_servis:"SRV-2026-012",tanggal_servis:new Date("2026-10-11"),jam_servis:"09:15:00",asal_pendaftaran:"Datang Langsung",status_servis:"Selesai",keluhan:"Stater berat",hasil_pemeriksaan:null,waktu_selesai:null,plat_nomor:"AE-1013-MM",id_bengkel:"BKL-001"},
  {no_servis:"SRV-2026-013",tanggal_servis:new Date("2026-10-12"),jam_servis:"10:00:00",asal_pendaftaran:"Aplikasi MotoMind",status_servis:"Selesai",keluhan:"Ganti rantai",hasil_pemeriksaan:null,waktu_selesai:null,plat_nomor:"AE-1014-NN",id_bengkel:"BKL-001"},
  {no_servis:"SRV-2026-014",tanggal_servis:new Date("2026-10-12"),jam_servis:"11:00:00",asal_pendaftaran:"Datang Langsung",status_servis:"Proses",keluhan:"Kopling selip",hasil_pemeriksaan:null,waktu_selesai:null,plat_nomor:"AE-1015-OO",id_bengkel:"BKL-001"},
  {no_servis:"SRV-2026-015",tanggal_servis:new Date("2026-10-13"),jam_servis:"13:30:00",asal_pendaftaran:"Aplikasi MotoMind",status_servis:"Selesai",keluhan:"Servis karbu",hasil_pemeriksaan:null,waktu_selesai:null,plat_nomor:"AE-1016-PP",id_bengkel:"BKL-001"},
  {no_servis:"SRV-2026-016",tanggal_servis:new Date("2026-10-13"),jam_servis:"14:00:00",asal_pendaftaran:"Datang Langsung",status_servis:"Selesai",keluhan:"Ganti ban luar",hasil_pemeriksaan:null,waktu_selesai:null,plat_nomor:"AE-1017-QQ",id_bengkel:"BKL-001"},
  {no_servis:"SRV-2026-017",tanggal_servis:new Date("2026-10-14"),jam_servis:"08:45:00",asal_pendaftaran:"Aplikasi MotoMind",status_servis:"Proses",keluhan:"Kelistrikan redup",hasil_pemeriksaan:null,waktu_selesai:null,plat_nomor:"AE-1018-RR",id_bengkel:"BKL-001"},
  {no_servis:"SRV-2026-018",tanggal_servis:new Date("2026-10-14"),jam_servis:"09:30:00",asal_pendaftaran:"Datang Langsung",status_servis:"Selesai",keluhan:"Ganti busi",hasil_pemeriksaan:null,waktu_selesai:null,plat_nomor:"AE-1019-SS",id_bengkel:"BKL-001"},
  {no_servis:"SRV-2026-019",tanggal_servis:new Date("2026-10-15"),jam_servis:"10:00:00",asal_pendaftaran:"Aplikasi MotoMind",status_servis:"Selesai",keluhan:"Ganti kampas kopling",hasil_pemeriksaan:null,waktu_selesai:null,plat_nomor:"AE-1020-TT",id_bengkel:"BKL-001"},
  {no_servis:"SRV-2026-020",tanggal_servis:new Date("2026-10-15"),jam_servis:"15:00:00",asal_pendaftaran:"Datang Langsung",status_servis:"Selesai",keluhan:"Cek CVT",hasil_pemeriksaan:null,waktu_selesai:null,plat_nomor:"AE-1021-UU",id_bengkel:"BKL-001"},
  {no_servis:"SRV-2026-021",tanggal_servis:new Date("2026-10-16"),jam_servis:"08:15:00",asal_pendaftaran:"Aplikasi MotoMind",status_servis:"Selesai",keluhan:"Servis rutin",hasil_pemeriksaan:null,waktu_selesai:null,plat_nomor:"AE-1022-VV",id_bengkel:"BKL-001"},
  {no_servis:"SRV-2026-022",tanggal_servis:new Date("2026-10-16"),jam_servis:"09:00:00",asal_pendaftaran:"Datang Langsung",status_servis:"Selesai",keluhan:"Ganti oli gardan",hasil_pemeriksaan:null,waktu_selesai:null,plat_nomor:"AE-1023-WW",id_bengkel:"BKL-001"},
  {no_servis:"SRV-2026-024",tanggal_servis:new Date("2026-10-17"),jam_servis:"11:15:00",asal_pendaftaran:"Datang Langsung",status_servis:"Selesai",keluhan:"Ganti filter udara",hasil_pemeriksaan:null,waktu_selesai:null,plat_nomor:"AE-1025-YY",id_bengkel:"BKL-001"},
  {no_servis:"SRV-2026-025",tanggal_servis:new Date("2026-10-18"),jam_servis:"13:00:00",asal_pendaftaran:"Aplikasi MotoMind",status_servis:"Selesai",keluhan:"Cek kelistrikan",hasil_pemeriksaan:null,waktu_selesai:null,plat_nomor:"AE-1026-ZZ",id_bengkel:"BKL-001"},
  {no_servis:"SRV-2026-026",tanggal_servis:new Date("2026-10-18"),jam_servis:"14:00:00",asal_pendaftaran:"Datang Langsung",status_servis:"Selesai",keluhan:"Ganti oli mesin",hasil_pemeriksaan:null,waktu_selesai:null,plat_nomor:"AE-1027-AB",id_bengkel:"BKL-001"},
  {no_servis:"SRV-2026-027",tanggal_servis:new Date("2026-10-19"),jam_servis:"08:30:00",asal_pendaftaran:"Aplikasi MotoMind",status_servis:"Proses",keluhan:"Ganti kampas rem",hasil_pemeriksaan:null,waktu_selesai:null,plat_nomor:"AE-1028-BC",id_bengkel:"BKL-001"},
  {no_servis:"SRV-2026-028",tanggal_servis:new Date("2026-10-19"),jam_servis:"09:45:00",asal_pendaftaran:"Datang Langsung",status_servis:"Selesai",keluhan:"Setel rantai",hasil_pemeriksaan:null,waktu_selesai:null,plat_nomor:"AE-1029-CD",id_bengkel:"BKL-001"},
  {no_servis:"SRV-2026-029",tanggal_servis:new Date("2026-10-20"),jam_servis:"10:00:00",asal_pendaftaran:"Aplikasi MotoMind",status_servis:"Selesai",keluhan:"Servis besar",hasil_pemeriksaan:null,waktu_selesai:null,plat_nomor:"AE-1030-DE",id_bengkel:"BKL-001"},
  {no_servis:"SRV-2026-030",tanggal_servis:new Date("2026-10-20"),jam_servis:"15:20:00",asal_pendaftaran:"Datang Langsung",status_servis:"Selesai",keluhan:"Ganti bohlam",hasil_pemeriksaan:null,waktu_selesai:null,plat_nomor:"AE-1031-EF",id_bengkel:"BKL-001"},
  {no_servis:"SRV-2026-050",tanggal_servis:new Date("2026-10-10"),jam_servis:"09:00:00",asal_pendaftaran:"Aplikasi MotoMind",status_servis:"Proses",keluhan:"Rem berdecit",hasil_pemeriksaan:null,waktu_selesai:null,plat_nomor:"AE-1001-AA",id_bengkel:"BKL-001"}
]);

// 6. DETAIL_SERVIS — 28 dokumen
db.detail_servis.insertMany([
  {no_servis:"SRV-2026-003",id_jenis_servis:"SRV-TYP-01",catatan:"Cek injeksi"},
  {no_servis:"SRV-2026-004",id_jenis_servis:"SRV-TYP-02",catatan:"Tambal ban tubeless"},
  {no_servis:"SRV-2026-005",id_jenis_servis:"SRV-TYP-01",catatan:"Pembersihan CVT"},
  {no_servis:"SRV-2026-006",id_jenis_servis:"SRV-TYP-02",catatan:"Ganti kampas belakang"},
  {no_servis:"SRV-2026-007",id_jenis_servis:"SRV-TYP-01",catatan:"Ganti bohlam LED"},
  {no_servis:"SRV-2026-008",id_jenis_servis:"SRV-TYP-02",catatan:"Ganti aki kering"},
  {no_servis:"SRV-2026-009",id_jenis_servis:"SRV-TYP-01",catatan:"Tune up standar"},
  {no_servis:"SRV-2026-010",id_jenis_servis:"SRV-TYP-02",catatan:"Penggantian v-belt set"},
  {no_servis:"SRV-2026-011",id_jenis_servis:"SRV-TYP-01",catatan:"Ganti oli mesin"},
  {no_servis:"SRV-2026-012",id_jenis_servis:"SRV-TYP-02",catatan:"Servis dinamo stater"},
  {no_servis:"SRV-2026-013",id_jenis_servis:"SRV-TYP-01",catatan:"Ganti gir set"},
  {no_servis:"SRV-2026-014",id_jenis_servis:"SRV-TYP-02",catatan:"Ganti kampas kopling"},
  {no_servis:"SRV-2026-015",id_jenis_servis:"SRV-TYP-01",catatan:"Pembersihan karbu"},
  {no_servis:"SRV-2026-016",id_jenis_servis:"SRV-TYP-02",catatan:"Ganti ban luar belakang"},
  {no_servis:"SRV-2026-017",id_jenis_servis:"SRV-TYP-01",catatan:"Cek spull & kiprok"},
  {no_servis:"SRV-2026-018",id_jenis_servis:"SRV-TYP-02",catatan:"Ganti busi NGK"},
  {no_servis:"SRV-2026-019",id_jenis_servis:"SRV-TYP-01",catatan:"Ganti kampas ganda"},
  {no_servis:"SRV-2026-020",id_jenis_servis:"SRV-TYP-02",catatan:"Ganti roller CVT"},
  {no_servis:"SRV-2026-021",id_jenis_servis:"SRV-TYP-01",catatan:"Servis rutin 10k"},
  {no_servis:"SRV-2026-022",id_jenis_servis:"SRV-TYP-02",catatan:"Ganti oli gardan matic"},
  {no_servis:"SRV-2026-024",id_jenis_servis:"SRV-TYP-02",catatan:"Ganti filter udara"},
  {no_servis:"SRV-2026-025",id_jenis_servis:"SRV-TYP-01",catatan:"Pengecekan kelistrikan total"},
  {no_servis:"SRV-2026-026",id_jenis_servis:"SRV-TYP-02",catatan:"Ganti oli MPX 1"},
  {no_servis:"SRV-2026-027",id_jenis_servis:"SRV-TYP-01",catatan:"Ganti piringan cakram"},
  {no_servis:"SRV-2026-028",id_jenis_servis:"SRV-TYP-02",catatan:"Penyetelan rantai roda"},
  {no_servis:"SRV-2026-029",id_jenis_servis:"SRV-TYP-01",catatan:"Servis besar turun mesin ringan"},
  {no_servis:"SRV-2026-030",id_jenis_servis:"SRV-TYP-02",catatan:"Ganti lampu depan"},
  {no_servis:"SRV-2026-050",id_jenis_servis:"SRV-TYP-02",catatan:"Servis ringan"}
]);

// 7. PENGINGAT_SERVIS
// Tidak ada data pengingat_servis di backup SQL.
// Collection dibuat kosong:
db.createCollection("pengingat_servis");

db.kategori_layanan.insertMany([
  {
    _id: ObjectId("6af7f9a5d96facea6b0917f7"),
    nama_kategori: "Oli Mesin"
  },
  {
    _id: ObjectId("6af7f9a5d96facea6b0917f8"),
    nama_kategori: "Kampas Rem"
  },
  {
    _id: ObjectId("6af7f9a5d96facea6b0917f9"),
    nama_kategori: "Aki Motor"
  },
  {
    _id: ObjectId("6af7f9a5d96facea6b0917fa"),
    nama_kategori: "Paket Servis"
  }
]);

db.katalog_layanan.insertMany([
  {
    _id: ObjectId("6af7f9de926d46411329171a"),
    nama_item: "Oli Mesin",
    jenis_item: "OliMesin",
    spesifikasi: {
      viskositas: "10W-30",
      volume: "0.8L"
    }
  },
  {
    _id: ObjectId("6af7f9de926d46411329171b"),
    nama_item: "Kampas Rem",
    jenis_item: "KampasRem",
    spesifikasi: {
      posisi: "Depan",
      bahan: "Organik"
    }
  },
  {
    _id: ObjectId("6af7f9de926d46411329171c"),
    nama_item: "Aki Motor",
    jenis_item: "AkiMotor",
    spesifikasi: {
      voltase: "12V",
      kapasitas: "5Ah"
    }
  },
  {
    _id: ObjectId("6af7f9de926d46411329171d"),
    nama_item: "Paket Servis",
    jenis_item: "PaketServis",
    spesifikasi: {
      cakupan: [
        "Ganti oli",
        "Pemeriksaan rem"
      ]
    }
  }
]);

db.bengkel.countDocuments()
db.pelanggan.countDocuments()
db.kendaraan.countDocuments()
db.jenis_servis.countDocuments()
db.servis.countDocuments()
db.detail_servis.countDocuments()
db.pengingat_servis.countDocuments()
db.kategori_layanan.find()
db.katalog_layanan.find()
