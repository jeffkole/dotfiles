# Default prompt is '\h:\W \u\$'
function __safe_git_prompt() {
    if [ `type -t __git_ps1` ]; then
        __git_ps1 "$*"
    fi
}

PS1='[\u@\h \w$(__safe_git_prompt " (%s)")]\$ '
