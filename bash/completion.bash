_completion=/usr/local/etc/bash_completion
if [ -e $_completion ]; then
    echo "Sourcing completion: $_completion"
    source $_completion
fi
unset _completion
