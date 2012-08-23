# This displays the last change comment for the named files
function lastcomment() {
    cvs log -rHEAD $*
}

# This displays diffs between the most recent version and the prior version
function lastchange() {
    basever=`lastcomment $1 |\
             grep ^head: |\
             cut -d'.' -f 2`
    priorv=`expr $basever - 1`

    cvs diff -r1.$priorv -r1.$basever $1
}
