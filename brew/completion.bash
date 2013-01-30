brew_completion=$(brew --repository)/Library/Contributions/brew_bash_completion.sh
if [ -e $brew_completion ]; then
    echo "Sourcing completion: $brew_completion"
    source $brew_completion
fi
