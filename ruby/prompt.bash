# Sets up prompt functions to use with rbenv
function __rbenv_ps1() {
    if which rbenv > /dev/null; then
        local ruby_version=$(rbenv version | awk '{ print $1 }')
        if [ "$ruby_version" != "system" ]; then
            echo -e "|$ruby_version|"
        fi
    fi
}
