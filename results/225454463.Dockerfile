[app/sources/225454463.Dockerfile]
digraph {
  "sha256:50c9ac0ccb36ec4cc63c10499471545ef0b98fb24f8db871dbc019d7d993e9fe" [label="docker-image://docker.io/library/maven:3.3.3-jdk-8" shape="ellipse"];
  "sha256:9f1a2be260ba5e56eeb687ffb302e405378fbf80ddd2363633272a632e5c45a1" [label="/bin/sh -c apt-get update   && apt-get install -y net-tools build-essential git wget unzip python python-setuptools python-dev python-numpy libfontconfig" shape="box"];
  "sha256:ec7e95e173092e898b8f286fb1fb8df6066df4196da391f3df146e97eb90c42a" [label="/bin/sh -c git clone https://github.com/apache/incubator-zeppelin.git --branch ${ZEPPELIN_TAG} /opt/zeppelin" shape="box"];
  "sha256:89a437d15de8df93a59f26dd0a8f99472bb94ec305685073dbeac7313ba782da" [label="/bin/sh -c cd /opt/zeppelin &&   mvn clean package     -Pbuild-distr     -Pspark-${SPARK_MINOR} -Dspark.version=${SPARK_VER}     -Phadoop-${HADOOP_MINOR} -Dhadoop.version=${HADOOP_VER}     -Ppyspark     -DskipTests &&   echo \"Successfully built Zeppelin\"" shape="box"];
  "sha256:baa7a9924e636481328050ae0b9e7f09684520c75c15b795ec5718cfcbcbd5d5" [label="/bin/sh -c cd /opt/zeppelin/zeppelin-distribution/target/zeppelin-* &&   mv zeppelin-* zeppelin &&   tar cvzf /zeppelin.tgz zeppelin" shape="box"];
  "sha256:5b1e60b42af90161ca55e71c7a85f6a72aca4fb7b609e3eeab239f9e5afd3013" [label="sha256:5b1e60b42af90161ca55e71c7a85f6a72aca4fb7b609e3eeab239f9e5afd3013" shape="plaintext"];
  "sha256:50c9ac0ccb36ec4cc63c10499471545ef0b98fb24f8db871dbc019d7d993e9fe" -> "sha256:9f1a2be260ba5e56eeb687ffb302e405378fbf80ddd2363633272a632e5c45a1" [label=""];
  "sha256:9f1a2be260ba5e56eeb687ffb302e405378fbf80ddd2363633272a632e5c45a1" -> "sha256:ec7e95e173092e898b8f286fb1fb8df6066df4196da391f3df146e97eb90c42a" [label=""];
  "sha256:ec7e95e173092e898b8f286fb1fb8df6066df4196da391f3df146e97eb90c42a" -> "sha256:89a437d15de8df93a59f26dd0a8f99472bb94ec305685073dbeac7313ba782da" [label=""];
  "sha256:89a437d15de8df93a59f26dd0a8f99472bb94ec305685073dbeac7313ba782da" -> "sha256:baa7a9924e636481328050ae0b9e7f09684520c75c15b795ec5718cfcbcbd5d5" [label=""];
  "sha256:baa7a9924e636481328050ae0b9e7f09684520c75c15b795ec5718cfcbcbd5d5" -> "sha256:5b1e60b42af90161ca55e71c7a85f6a72aca4fb7b609e3eeab239f9e5afd3013" [label=""];
}

