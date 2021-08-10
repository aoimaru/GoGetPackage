[app/sources/295960121.Dockerfile]
digraph {
  "sha256:04ec3ac4c1af0dab1d7ae0928f1b58b5b5b7b0c673e2e7eb6fc34f30c6295489" [label="local://context" shape="ellipse"];
  "sha256:b44f945df50731daaae8146f483d0736fea757e6c580beddaccfce8188bfb3bd" [label="docker-image://docker.io/trex/hadoop-base:latest" shape="ellipse"];
  "sha256:0c6375a20a96735da39c15ec5d85bf60371f5b88d11be058e1d9be403321d3a3" [label="copy{src=/files/hadoop/*, dest=/tmp/}" shape="note"];
  "sha256:789700a4cd64a7a36012e9ab087b0160f14a83bd8b49d6e1de904621c7c38333" [label="/bin/sh -c mv /tmp/hdfs-site.xml $HADOOP_INSTALL/etc/hadoop/hdfs-site.xml && mv /tmp/core-site.xml $HADOOP_INSTALL/etc/hadoop/core-site.xml && mv /tmp/mapred-site.xml $HADOOP_INSTALL/etc/hadoop/mapred-site.xml && mv /tmp/yarn-site.xml $HADOOP_INSTALL/etc/hadoop/yarn-site.xml" shape="box"];
  "sha256:fa09397514939dcc5b3d7d0405cd427bec02e04b8651f1481d1ab8c075dd0022" [label="/bin/sh -c mv /tmp/start-ssh-serf.sh ~/start-ssh-serf.sh && chmod +x ~/start-ssh-serf.sh" shape="box"];
  "sha256:68b914f378b3de968f37eaf239e70e76ca6dd2ff6b42d439b9534f4877f71ea0" [label="sha256:68b914f378b3de968f37eaf239e70e76ca6dd2ff6b42d439b9534f4877f71ea0" shape="plaintext"];
  "sha256:b44f945df50731daaae8146f483d0736fea757e6c580beddaccfce8188bfb3bd" -> "sha256:0c6375a20a96735da39c15ec5d85bf60371f5b88d11be058e1d9be403321d3a3" [label=""];
  "sha256:04ec3ac4c1af0dab1d7ae0928f1b58b5b5b7b0c673e2e7eb6fc34f30c6295489" -> "sha256:0c6375a20a96735da39c15ec5d85bf60371f5b88d11be058e1d9be403321d3a3" [label=""];
  "sha256:0c6375a20a96735da39c15ec5d85bf60371f5b88d11be058e1d9be403321d3a3" -> "sha256:789700a4cd64a7a36012e9ab087b0160f14a83bd8b49d6e1de904621c7c38333" [label=""];
  "sha256:789700a4cd64a7a36012e9ab087b0160f14a83bd8b49d6e1de904621c7c38333" -> "sha256:fa09397514939dcc5b3d7d0405cd427bec02e04b8651f1481d1ab8c075dd0022" [label=""];
  "sha256:fa09397514939dcc5b3d7d0405cd427bec02e04b8651f1481d1ab8c075dd0022" -> "sha256:68b914f378b3de968f37eaf239e70e76ca6dd2ff6b42d439b9534f4877f71ea0" [label=""];
}

