hadoop_root=/opt/hadoop

cdh3_hadoop_home=$hadoop_root/hadoop-0.20.2-cdh3u4
cdh4_hadoop_home=$hadoop_root/hadoop-2.0.0-cdh4.1.1

cdh3_hbase_home=$hadoop_root/hbase-0.90.6-cdh3u4
cdh4_hbase_home=$hadoop_root/hbase-0.92.1-cdh4.1.1

cdh3_wibi_home=/opt/wibi-1.7.1
cdh4_wibi_home=/opt/wibi-2.0.0

function __add_hadoop_to_path() {
    path=$PATH
    # Remove all references to hadoop in the PATH
    path=$(__remove_path_entry "$path" "$hadoop_root")
    path=$(__remove_path_entry "$path" "/opt/wibi")
    export PATH=$path:$HADOOP_HOME/bin:$HBASE_HOME/bin:$WIBI_HOME/bin
}

function cdh3() {
    export HADOOP_HOME=$cdh3_hadoop_home
    export HBASE_HOME=$cdh3_hbase_home
    export WIBI_HOME=$cdh3_wibi_home
    export CDH=cdh3

    __add_hadoop_to_path
}

function cdh4() {
    export HADOOP_HOME=$cdh4_hadoop_home
    export HBASE_HOME=$cdh4_hbase_home
    export WIBI_HOME=$cdh4_wibi_home
    export CDH=cdh4

    __add_hadoop_to_path
}

function tail-hbase() {
    tail -f $HBASE_HOME/logs/*.log
}

function tail-hadoop() {
    tail -f $HADOOP_HOME/logs/*.log
}

cdh4
