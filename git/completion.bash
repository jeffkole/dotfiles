git_completion=/usr/local/etc/bash_completion.d/git-completion.bash
if [ -e $git_completion ]; then
    echo "Sourcing completion: $git_completion"
    source $git_completion
fi
unset git_completion
hub_completion=/usr/local/etc/bash_completion.d/hub.bash_completion.sh
if [ -e $hub_completion ]; then
    echo "Sourcing completion: $hub_completion"
    source $hub_completion
fi
unset hub_completion
