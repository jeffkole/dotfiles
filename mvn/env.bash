if [ -d `brew --prefix maven`/libexec ]; then
    export M2_HOME=`brew --prefix maven`/libexec
fi

MAVEN_SHARED_OPTS="-Djava.awt.headless=true -Dflex.home=$FLEX_SDK -Xmx256m -XX:MaxPermSize=128m -Dmaven.junit.forkmode=perTest"
export MAVEN_DEBUG_OPTS="$MAVEN_SHARED_OPTS"
export MAVEN_GC_OPTS="$MAVEN_SHARED_OPTS -verbose:gc -Xloggc:/tmp/gc.log -XX:+PrintGCDetails -XX:+PrintClassHistogram -XX:+HeapDumpOnOutOfMemoryError"
export MAVEN_OPTS="$MAVEN_SHARED_OPTS"
