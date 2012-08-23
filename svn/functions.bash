function commit() {
    F=/tmp/svnst$$
    if [ ! -e $F ]; then
       svn st > $F
       $EDITOR $F
    fi
    FL=`cat $F | cut -c7- | perl -pe 's/\n//g'`
    svn diff $FL | less
    REPLY=""
    read -e -p "Look good? [y/n] " REPLY
    if [ "$REPLY" == "y" ]; then
        svn ci $FL
        rm -f $F
    fi
}
