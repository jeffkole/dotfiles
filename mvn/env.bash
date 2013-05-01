MAVEN_SHARED_OPTS="-Djava.awt.headless=true -Dflex.home=$FLEX_SDK -Xmx256m -XX:MaxPermSize=128m -Dmaven.junit.forkmode=perTest"
export MAVEN_DEBUG_OPTS="$MAVEN_SHARED_OPTS"
export MAVEN_GC_OPTS="$MAVEN_SHARED_OPTS -verbose:gc -Xloggc:/tmp/gc.log -XX:+PrintGCDetails -XX:+PrintClassHistogram -XX:+HeapDumpOnOutOfMemoryError"
export MAVEN_OPTS="$MAVEN_SHARED_OPTS"

# Add an alias for Maven 3 until it becomes the default
if [[ -d $(brew --prefix maven) ]] && [[ -e $(brew --prefix maven)/bin/mvn ]]; then
    alias mvn3="$(brew --prefix maven)/bin/mvn"
fi
