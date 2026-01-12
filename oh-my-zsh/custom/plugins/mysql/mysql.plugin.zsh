export MYSQL_PS1="mysql (\U) [\d]> "

function tailmysql() {
  logfile=$(mysql -BANe "show variables like 'general_log_file'" | cut -f2)
  logging=$(mysql -BANe "show variables like 'general_log'" | cut -f2)
  if [[ "$logging" == "OFF" ]]; then
    mysql -BANe "set global general_log = 'ON'"
  fi
  tail -f $logfile
  mysql -BANe "set global general_log = 'OFF'"
}
