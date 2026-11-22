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
