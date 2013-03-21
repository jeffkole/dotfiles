scala_completion=/usr/local/etc/bash_completion.d/scala
if [ -e $scala_completion ]; then
    echo "Sourcing completion: $scala_completion"
    source $scala_completion
fi
unset scala_completion
