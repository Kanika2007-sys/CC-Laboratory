## --- Install Java (prerequisite) ---
sudo apt-get update
sudo apt-get install openjdk-7-jdk
sudo apt-get install openjdk-7-jre
java -version

## --- SSH setup ---
apt-get install openssh-server
ssh-keygen -t rsa -P "" -f ~/.ssh/id_rsa
cat $HOME/.ssh/id_rsa.pub >> $HOME/.ssh/authorized_keys

## --- Create hadoop group/user ---
sudo addgroup hadoop
sudo adduser --ingroup hadoop hadoop

## --- Extract Hadoop and set ownership ---
sudo tar -xzvf hadoop-2.7.0.tar.gz -C /usr/local/lib/
sudo chown -R hadoop:hadoop /usr/local/lib/hadoop-2.7.0

## --- Create HDFS directories ---
sudo mkdir -p /var/lib/hadoop/hdfs/namenode
sudo mkdir -p /var/lib/hadoop/hdfs/datanode
sudo chown -R hadoop /var/lib/hadoop

## --- Environment variables (~/.bashrc) ---
# export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# export HADOOP_INSTALL=/usr/local/lib/hadoop-2.7.0
# export PATH=$PATH:$HADOOP_INSTALL/bin
# export PATH=$PATH:$HADOOP_INSTALL/sbin
# export HADOOP_MAPRED_HOME=$HADOOP_INSTALL
# export HADOOP_COMMON_HOME=$HADOOP_INSTALL
# export HADOOP_HDFS_HOME=$HADOOP_INSTALL
# export YARN_HOME=$HADOOP_INSTALL
# export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_INSTALL/lib/native
# export HADOOP_OPTS="-Djava.library.path=$HADOOP_INSTALL/lib/native"
source ~/.bashrc

## --- Format NameNode and start cluster ---
hdfs namenode -format
start-dfs.sh
start-yarn.sh
jps

## --- Compile and run WordCount ---
export JAVA_HOME=/usr/java/default
export PATH=${JAVA_HOME}/bin:${PATH}
export HADOOP_CLASSPATH=${JAVA_HOME}/lib/tools.jar

bin/hadoop com.sun.tools.javac.Main WordCount.java
jar cf wc.jar WordCount*.class
bin/hadoop jar wc.jar WordCount /user/joe/wordcount/input /user/joe/wordcount/output

## --- View output ---
bin/hadoop fs -cat /user/joe/wordcount/output/part-r-00000
