# Add private keys to the ssh-agent

function __add_ssh_keys() {
  local keys=$(ls ~/.ssh | grep -vE "config|known_hosts|.pub")
  for key in $keys; do
    key=~/.ssh/${key}
    ssh-add -K $key
  done
}

__add_ssh_keys
