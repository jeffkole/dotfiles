git_completion=/usr/local/etc/bash_completion.d/git-completion.bash
if [ -e $git_completion ]; then
    echo "Sourcing completion: $git_completion"
    source $git_completion
fi
