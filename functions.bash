# Functions to be included and used by other scripts

function __remove_path_entry() {
    path=$1
    # replace / in a path with \/
    regex=${2//\//\\/}

    echo $path | sed "s/[^:]*$regex[^:]*/::/g" | sed 's/::*/:/g'
    return 0
}
