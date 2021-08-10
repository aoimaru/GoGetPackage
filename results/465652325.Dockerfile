[app/sources/465652325.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:2d15da5fac811db7045af9933ba7ff89907c8bdc5edac132c7be19bbc78722a7" [label="/bin/sh -c apt-get update && apt-get install -y     python3     python3-pip     python3-wheel     openjdk-8-jdk     ssh     wget" shape="box"];
  "sha256:c48d4f5f1700d87a76a7a4560091158fd83071b545d4e3037ed299aa1a4938bc" [label="/bin/sh -c wget http://www-eu.apache.org/dist/hadoop/common/hadoop-3.1.1/hadoop-3.1.1.tar.gz &&     tar -xzf hadoop-3.1.1.tar.gz &&     mv hadoop-3.1.1 $HADOOP_HOME &&     for user in hadoop hdfs yarn mapred; do         useradd -U -M -d /opt/hadoop/ --shell /bin/bash ${user};     done &&     for user in root hdfs yarn mapred; do         usermod -G hadoop ${user};     done &&     echo \"export JAVA_HOME=$JAVA_HOME\" >> $HADOOP_HOME/etc/hadoop/hadoop-env.sh &&     echo \"export HDFS_DATANODE_USER=root\" >> $HADOOP_HOME/etc/hadoop/hadoop-env.sh &&     echo \"export HDFS_NAMENODE_USER=root\" >> $HADOOP_HOME/etc/hadoop/hadoop-env.sh &&     echo \"export HDFS_SECONDARYNAMENODE_USER=root\" >> $HADOOP_HOME/etc/hadoop/hadoop-env.sh &&     echo \"export YARN_RESOURCEMANAGER_USER=root\" >> $HADOOP_HOME/etc/hadoop/yarn-env.sh &&     echo \"export YARN_NODEMANAGER_USER=root\" >> $HADOOP_HOME/etc/hadoop/yarn-env.sh &&     echo \"PATH=$PATH:$HADOOP_HOME/bin\" >> ~/.bashrc" shape="box"];
  "sha256:9bbae9320c18fc507a62b0b1f1c437b19a0ebc62c1dccd838e8f757bf02b66be" [label="/bin/sh -c apt-get install openssh-client -y &&     ssh-keygen -t rsa -P '' -f ~/.ssh/id_rsa &&     cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys &&     chmod 0600 ~/.ssh/authorized_keys" shape="box"];
  "sha256:846154d6c07585f1a1c728f413b064a760e0536a04e23cfeec9f96a781a8f69a" [label="local://context" shape="ellipse"];
  "sha256:f89d624d87a08ae4cfdf5db62ac639e05d06c318fd85fe815217e271922bfe49" [label="copy{src=/*xml, dest=/opt/hadoop/etc/hadoop/}" shape="note"];
  "sha256:8fa85e6434df141bf411901c09768675974b101f0102026d9a3806b8b90c8f63" [label="copy{src=/ssh_config, dest=/root/.ssh/config}" shape="note"];
  "sha256:4f0847e6763440e380d14636ee36f0ea7a1b35483ac72fade6d76e9a25ad7865" [label="/bin/sh -c pip3 install Flask PyHive" shape="box"];
  "sha256:4e3c9c881670c29cee4e140e5d5ff9153e3f498210f614c803a6f6be4f14ea81" [label="/bin/sh -c wget http://www-eu.apache.org/dist/hive/hive-3.1.0/apache-hive-3.1.0-bin.tar.gz" shape="box"];
  "sha256:2884bc97297f25c1cdc679b270834707397a302cb2b48244892c29787cc148ea" [label="/bin/sh -c tar -xzf apache-hive-3.1.0-bin.tar.gz && mv apache-hive-3.1.0-bin $HIVE_HOME" shape="box"];
  "sha256:eb55abd5ef6f1e038cf25bd36daf6630bdc4da4e3fd92c4ba2bcad60e60238b5" [label="mkdir{path=/app}" shape="note"];
  "sha256:86046ef0c1690a9bab93ccab600355e96cbc0b7adfe66f6d68b9a2291a3d1a38" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:537b4a6e698dab84430c2752b0074006e78a97a44ba8995288260579dfc7de02" [label="/bin/sh -c apt-get install libsasl2-dev gcc -y" shape="box"];
  "sha256:bdc8f1ab3ffbfa7d026987d104c789c16f496499bf705e1fdff65b7a86895741" [label="/bin/sh -c pip3 install thrift pyhive[hive]" shape="box"];
  "sha256:e6cda106a658dfe814737c98a24986b8840e75b586d98994f151790cfcf597c5" [label="sha256:e6cda106a658dfe814737c98a24986b8840e75b586d98994f151790cfcf597c5" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:2d15da5fac811db7045af9933ba7ff89907c8bdc5edac132c7be19bbc78722a7" [label=""];
  "sha256:2d15da5fac811db7045af9933ba7ff89907c8bdc5edac132c7be19bbc78722a7" -> "sha256:c48d4f5f1700d87a76a7a4560091158fd83071b545d4e3037ed299aa1a4938bc" [label=""];
  "sha256:c48d4f5f1700d87a76a7a4560091158fd83071b545d4e3037ed299aa1a4938bc" -> "sha256:9bbae9320c18fc507a62b0b1f1c437b19a0ebc62c1dccd838e8f757bf02b66be" [label=""];
  "sha256:9bbae9320c18fc507a62b0b1f1c437b19a0ebc62c1dccd838e8f757bf02b66be" -> "sha256:f89d624d87a08ae4cfdf5db62ac639e05d06c318fd85fe815217e271922bfe49" [label=""];
  "sha256:846154d6c07585f1a1c728f413b064a760e0536a04e23cfeec9f96a781a8f69a" -> "sha256:f89d624d87a08ae4cfdf5db62ac639e05d06c318fd85fe815217e271922bfe49" [label=""];
  "sha256:f89d624d87a08ae4cfdf5db62ac639e05d06c318fd85fe815217e271922bfe49" -> "sha256:8fa85e6434df141bf411901c09768675974b101f0102026d9a3806b8b90c8f63" [label=""];
  "sha256:846154d6c07585f1a1c728f413b064a760e0536a04e23cfeec9f96a781a8f69a" -> "sha256:8fa85e6434df141bf411901c09768675974b101f0102026d9a3806b8b90c8f63" [label=""];
  "sha256:8fa85e6434df141bf411901c09768675974b101f0102026d9a3806b8b90c8f63" -> "sha256:4f0847e6763440e380d14636ee36f0ea7a1b35483ac72fade6d76e9a25ad7865" [label=""];
  "sha256:4f0847e6763440e380d14636ee36f0ea7a1b35483ac72fade6d76e9a25ad7865" -> "sha256:4e3c9c881670c29cee4e140e5d5ff9153e3f498210f614c803a6f6be4f14ea81" [label=""];
  "sha256:4e3c9c881670c29cee4e140e5d5ff9153e3f498210f614c803a6f6be4f14ea81" -> "sha256:2884bc97297f25c1cdc679b270834707397a302cb2b48244892c29787cc148ea" [label=""];
  "sha256:2884bc97297f25c1cdc679b270834707397a302cb2b48244892c29787cc148ea" -> "sha256:eb55abd5ef6f1e038cf25bd36daf6630bdc4da4e3fd92c4ba2bcad60e60238b5" [label=""];
  "sha256:eb55abd5ef6f1e038cf25bd36daf6630bdc4da4e3fd92c4ba2bcad60e60238b5" -> "sha256:86046ef0c1690a9bab93ccab600355e96cbc0b7adfe66f6d68b9a2291a3d1a38" [label=""];
  "sha256:846154d6c07585f1a1c728f413b064a760e0536a04e23cfeec9f96a781a8f69a" -> "sha256:86046ef0c1690a9bab93ccab600355e96cbc0b7adfe66f6d68b9a2291a3d1a38" [label=""];
  "sha256:86046ef0c1690a9bab93ccab600355e96cbc0b7adfe66f6d68b9a2291a3d1a38" -> "sha256:537b4a6e698dab84430c2752b0074006e78a97a44ba8995288260579dfc7de02" [label=""];
  "sha256:537b4a6e698dab84430c2752b0074006e78a97a44ba8995288260579dfc7de02" -> "sha256:bdc8f1ab3ffbfa7d026987d104c789c16f496499bf705e1fdff65b7a86895741" [label=""];
  "sha256:bdc8f1ab3ffbfa7d026987d104c789c16f496499bf705e1fdff65b7a86895741" -> "sha256:e6cda106a658dfe814737c98a24986b8840e75b586d98994f151790cfcf597c5" [label=""];
}

