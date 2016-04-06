
conf=/usr/local/var/postgres/postgresql.conf

function canceltail() {
  echo cancelling tail $_TAIL_PID
  kill $_TAIL_PID
  unset _TAIL_PID
  sed -i .bak "s/^log_statement = 'all'/#log_statement = 'all'/" $conf
  pg_ctl reload
  echo reloaded pg
}

function tailpostgres() {
  sed -i .bak "s/^#log_statement = 'all'/log_statement = 'all'/" $conf
  pg_ctl reload
  trap canceltail INT
  tail -f /usr/local/var/postgres/server.log &
  export _TAIL_PID=$!
  wait $_TAIL_PID
}
