// Login menggunakan root
// arangosh --server.username root --server.database _system
arangosh --server.endpoint tcp://10.0.2.15:8529 --server.username root --server.database _system

var users = require("@arangodb/users");

users.save("report_user", "passwordsementara!", true);

users.grantDatabase("report_user", "transport_db", "ro");

users.grantCollection("report_user", "transport_db", "trips", "ro");

users.grantCollection("report_user", "transport_db", "routes", "ro");

users.permission("report_user", "transport_db");
users.permission("report_user", "transport_db", "trips");

// Login menggunakan report_user
// arangosh --server.username report_user --server.database transport_db
arangosh --server.endpoint tcp://10.0.2.15:8529 --server.username report_user --server.database transport_db

db._query('FOR t IN trips RETURN t').toArray();

// Pengujian penghapusan data
db._query('FOR t IN trips FILTER t.trip_id == "T001" REMOVE t IN trips');

// Cabut akses trips
users.grantCollection("report_user", "transport_db", "trips", "none");

// Pengujian akses setelah dicabut
db._query('FOR t IN trips RETURN t').toArray();
