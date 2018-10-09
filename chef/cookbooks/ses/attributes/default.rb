override[:ses][:user]="ses"
override[:ses][:group]="ses"

default[:ses][:debug] = false 

default[:ses][:enable_v3_api] = false
default[:ses][:max_header_line] = 16384

default[:ses][:db][:password] = "" # set by wrapper
default[:ses][:db][:user] = "ses"
default[:ses][:db][:database] = "ses"

default[:ses][:api][:protocol] = "http"
default[:ses][:api][:bind_port] = "8042"
default[:ses][:api][:log_file] = "/var/log/ses/api.log"
default[:ses][:api][:config_file] = "/etc/ses/ses-api.conf.d/100-ses-api.conf"
default[:ses][:api][:service_name] = "ses-api"

default[:ses][:ceph_internal_external] = "internal"
