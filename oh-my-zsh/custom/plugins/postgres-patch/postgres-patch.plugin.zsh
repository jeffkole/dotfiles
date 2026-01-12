PGDATA=/usr/local/var/postgres
if [ -d ${PGDATA} ]; then
    export PGDATA
else
    unset PGDATA
fi

local PG_CONF_FILE=/usr/local/var/postgres/postgresql.conf

function canceltail() {
  echo cancelling tail $_TAIL_PID
  # Reset INT trap to default
  trap - INT
  kill $_TAIL_PID
  unset _TAIL_PID
  sed -i .bak "s/^log_statement = 'all'/#log_statement = 'all'/" $PG_CONF_FILE
  pg_ctl reload
  echo reloaded pg
}

function tailpostgres() {
  sed -i .bak "s/^#log_statement = 'all'/log_statement = 'all'/" $PG_CONF_FILE
  pg_ctl reload
  trap canceltail INT
  tail -f /usr/local/var/postgres/server.log &
  export _TAIL_PID=$!
  wait $_TAIL_PID
}
