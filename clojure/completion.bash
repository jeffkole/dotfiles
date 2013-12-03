lein_completion=/usr/local/etc/bash_completion.d/lein-completion.bash
if [ -e $lein_completion ]; then
    echo "Sourcing completion: $lein_completion"
    source $lein_completion
fi
unset lein_completion
