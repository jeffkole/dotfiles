git_prompt=/usr/local/etc/bash_completion.d/git-prompt.sh
if [ -e $git_prompt ]; then
    echo "Sourcing prompt: $git_prompt"
    source $git_prompt
    export GIT_PS1_SHOWDIRTYSTATE=true
    export GIT_PS1_SHOWSTASHSTATE=
    export GIT_PS1_SHOWUNTRACKEDFILES=
    export GIT_PS1_SHOWUPSTREAM="auto"
fi
