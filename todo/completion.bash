todo_completion=/usr/local/etc/bash_completion.d/todo_completion
if [ -e $todo_completion ]; then
    echo "Sourcing completion: $todo_completion"
    source $todo_completion

    # Since I alias todo.sh to `t`, map the completion function to it as well
    complete -F _todo t
fi
