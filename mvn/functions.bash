function compile() {
    mvn compiler:compile
}

function mvnTestDebug() {
    mvn -Dmaven.surefire.debug
}

function fless() {
    less `grep -lRs "FAIL" ./target/surefire-reports | head -n 1`
}

function mci() {
    ORIG_OPTS=$MAVEN_OPTS
    export MAVEN_OPTS="-Xms1024M -Xmx1024M -XX:MaxPermSize=128M -Dmaven.junit.forkmode=perTest"
    mvn $@ clean install
    export MAVEN_OPTS=$ORIG_OPTS
}

function mci-exhaustive() {
    ORIG_OPTS=$MAVEN_OPTS
    export MAVEN_OPTS="-Xms1024M -Xmx1024M -XX:MaxPermSize=128M -Dmaven.junit.forkmode=perTest"
    mvn $@ -Dexhaustive install
    export MAVEN_OPTS=$ORIG_OPTS
}

function mci-no-test() {
    mvn $@ -Dmaven.test.skip.exec=true clean install
}

function mjr_local() {
    if [ -z $1 ]; then
        echo "mjr_local <client>"
        echo "Set MVN_OFFLINE=-o if you want to run offline"
        return 1;
    fi
    CLIENT=$1
    mvn ${MVN_OFFLINE} -Djetty.port=8080 -Dclient=$CLIENT -DCONFIG_DOMAIN=local.dev.dc6.$CLIENT.local jetty:run
}

function rerun() {
    F=`grep -lRs "FAIL" ./target/surefire-reports | head -n 1`
    if [ -n "$F" ]; then
        T=`basename $F | perl -ne "@s=split /\./; print @s[\\$#s-1]"`
        echo "Rerunning $T"
        mvn $@ test -Dtest=$T
    else
        echo "No tests to rerun"
    fi
}
