output database_id { value = "${sakuracloud_database.db.id}"}
output admin_password { value = "${sakuracloud_database.db.admin_password}"}
output allow_networks { value = "${sakuracloud_database.db.allow_networks}"}
output backup_rotate { value = "${sakuracloud_database.db.backup_rotate}"}
output backup_time { value = "${sakuracloud_database.db.backup_time}"}
output default_route { value = "${sakuracloud_database.db.default_route}"}
output description { value = "${sakuracloud_database.db.description}"}
output ipaddress1 { value = "${sakuracloud_database.db.ipaddress1}"}
output name { value = "${sakuracloud_database.db.name}"}
output nw_mask_len { value = "${sakuracloud_database.db.nw_mask_len}"}
output port { value = "${sakuracloud_database.db.port}"}
output switch_id { value = "${sakuracloud_database.db.switch_id}"}
output tags { value = "${sakuracloud_database.db.tags}"}
output user_name { value = "${sakuracloud_database.db.user_name}"}
output user_password { value = "${sakuracloud_database.db.user_password}"}
output zone { value = "${sakuracloud_database.db.zone}"}
output admin_psql {
    value = "psql -h ${sakuracloud_database.db.ipaddress1} -U postgres"
}
output user_psql {
    value = "psql -h ${sakuracloud_database.db.ipaddress1} -U ${sakuracloud_database.db.user_name}"
}