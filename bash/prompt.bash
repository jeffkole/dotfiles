# Default prompt is '\h:\W \u\$'
function __safe_git_prompt() {
    if [ `type -t __git_ps1` ]; then
        __git_ps1 "$*"
    fi
}

# Colors borrowed from bash-it
black=$'\e[0;30m'
red=$'\e[0;31m'
green=$'\e[0;32m'
yellow=$'\e[0;33m'
blue=$'\e[0;34m'
purple=$'\e[0;35m'
cyan=$'\e[0;36m'
white=$'\e[1;37m'
orange=$'\e[33;40m'

bold_black=$'\e[1;30m'
bold_red=$'\e[1;31m'
bold_green=$'\e[1;32m'
bold_yellow=$'\e[1;33m'
bold_blue=$'\e[1;34m'
bold_purple=$'\e[1;35m'
bold_cyan=$'\e[1;36m'
bold_white=$'\e[1;37m'
bold_orange=$'\e[1;33;40m'

underline_black=$'\e[4;30m'
underline_red=$'\e[4;31m'
underline_green=$'\e[4;32m'
underline_yellow=$'\e[4;33m'
underline_blue=$'\e[4;34m'
underline_purple=$'\e[4;35m'
underline_cyan=$'\e[4;36m'
underline_white=$'\e[4;37m'
underline_orange=$'\e[4;33;40m'

background_black=$'\e[40m'
background_red=$'\e[41m'
background_green=$'\e[42m'
background_yellow=$'\e[43m'
background_blue=$'\e[44m'
background_purple=$'\e[45m'
background_cyan=$'\e[46m'
background_white=$'\e[47m'

normal=$'\e[00m'
reset_color=$'\e[39m'

PS1='\[${green}\]$(__safe_git_prompt "|%s|") \[${reset_color}\]on \[${orange}\]\h \[${reset_color}\]in \[${green}\]\w \[${reset_color}\]\[\n\[${green}\]→\[${reset_color}\] '
