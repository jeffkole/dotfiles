# Swap between java 1.6 and java 1.7
function java6() {
    export JAVA_HOME=$(/usr/libexec/java_home -Fv 1.6)
    export JAVA_VERS=6
}

function java7() {
    export JAVA_HOME=$(/usr/libexec/java_home -Fv 1.7)
    export JAVA_VERS=7
}

java6
