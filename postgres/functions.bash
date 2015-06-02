function tailpostgres() {
  conf=/usr/local/var/postgres/postgresql.conf
  sed -i .bak "s/#log_statement = 'all'/log_statement = 'all'/" $conf
  pg_ctl reload
  tail -f /usr/local/var/postgres/server.log
  sed -i .bak "s/log_statement = 'all'/#log_statement = 'all'/" $conf
  pg_ctl reload
}
