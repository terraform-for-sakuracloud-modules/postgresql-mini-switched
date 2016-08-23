# Variables
variable admin_password {} # required
variable user_name {} # required
variable user_password {} # required

variable name { default = "postgresql-mini" }
variable description { default = "" }
variable tags { default = [] }

variable allow_networks { default = [] }
variable port { default = 5432 }

variable switch_id {  } # required
variable ipaddress1 { } # required
variable nw_mask_len { } # required
variable default_route { default = "" }
variable backup_rotate { default = 8 }
variable backup_time { default = "00:00" }
variable zone { default = "tk1a" }
