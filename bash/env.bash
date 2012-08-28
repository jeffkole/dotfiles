# Generic environment variables

export EDITOR=vi
export LC_CTYPE=en_US.UTF-8

export LESS="-i -R -S"
if [ `which lesspipe.sh` ]; then
    export LESSOPEN="|lesspipe.sh %s"
fi

# --color=always is awesome for less, but is bad for things like
# vi `find . -name "*.java" | grep Type | head -1`
export GREP_OPTIONS="--color=auto"
export LSCOLORS=gxfxcxdxbxegedabagacad
