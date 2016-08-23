resource "sakuracloud_database" "db" {

    admin_password = "${var.admin_password}"
    user_name = "${var.user_name}"
    user_password = "${var.user_password}"

    allow_networks = "${var.allow_networks}"

    port = "${var.port}"

    switch_id = "${var.switch_id}"
    ipaddress1 = "${var.ipaddress1}"
    nw_mask_len = "${var.nw_mask_len}"
    default_route = "${var.default_route}"

    backup_rotate = "${var.backup_rotate}"
    backup_time = "${var.backup_time}"

    name = "${var.name}"
    description = "${var.description}"
    tags = "${var.tags}"
}

