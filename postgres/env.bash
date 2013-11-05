PGDATA=/usr/local/var/postgres
if [ -d ${PGDATA} ]; then
    export PGDATA
else
    unset PGDATA
fi
