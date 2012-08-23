# Generic environment variables

export EDITOR=vi
export LC_CTYPE=en_US.UTF-8

export LESS="-i -R -S"
if [ `which lesspipe.sh` ]; then
    export LESSOPEN="|lesspipe.sh %s"
fi

export GREP_OPTIONS=--color
export LSCOLORS=gxfxcxdxbxegedabagacad
