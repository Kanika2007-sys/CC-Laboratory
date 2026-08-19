# Ex.No 07 – Install Hadoop Single Node Cluster and Run WordCount

## Aim
Install Hadoop single node cluster and run a simple application like WordCount.

## Files
- `WordCount.java` — MapReduce WordCount source.
- `commands.sh` — full install, configuration, and run sequence
  (Java, SSH, Hadoop user/group, HDFS dirs, `core-site.xml` / `hdfs-site.xml` /
  `mapred-site.xml` / `yarn-site.xml` edits, formatting the NameNode, starting
  the cluster, compiling and running WordCount).
- `output.txt` — WordCount output.

## Result
The one-node Hadoop cluster was installed, and the WordCount MapReduce program
was compiled and executed successfully. NameNode web UI: `http://localhost:50070`.
