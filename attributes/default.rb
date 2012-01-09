
default[:pgbouncer][:databases] = {}
default[:pgbouncer][:userlist] = {}

# Administrative settings
default[:pgbouncer][:logfile] = "/var/log/postgresql/pgbouncer.log"
default[:pgbouncer][:pidfile] = "/var/run/postgresql/pgbouncer.pid"

# Where to wait for clients
default[:pgbouncer][:listen_addr] = "127.0.0.1"
default[:pgbouncer][:listen_port] = "6432"
default[:pgbouncer][:unix_socket_dir] = "/var/run/postgresql"

# Authentication settings
default[:pgbouncer][:auth_type] = "trust"
default[:pgbouncer][:auth_file] = "/etc/pgbouncer/userlist.txt"

# Users allowed into database 'pgbouncer'
default[:pgbouncer][:admin_users] = ""
default[:pgbouncer][:stats_users] = ""

# Pooler personality questions
default[:pgbouncer][:pool_mode] = "session"
default[:pgbouncer][:server_reset_query] = ""
default[:pgbouncer][:server_check_query] = "select 1"
default[:pgbouncer][:server_check_delay] = "10"

# Connection limits
default[:pgbouncer][:max_client_conn] = "100"
default[:pgbouncer][:default_pool_size] = "20"
default[:pgbouncer][:log_connections] = "1"
default[:pgbouncer][:log_disconnections] = "1"
default[:pgbouncer][:log_pooler_errors] = "1"

# Timeouts

# Low-level tuning options

