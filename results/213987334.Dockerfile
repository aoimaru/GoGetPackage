[app/sources/213987334.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:afc44ea9aa58c8eeb6533803ef39d0960679538b56515e72065b44e7c21f6709" [label="/bin/sh -c apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y openjdk-7-jdk &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:6c14bbe07b6731d115c8b57146021b8123c4a095d75de516afd9fe3d360ed08b" [label="/bin/sh -c apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y wget libzip2 libsnappy1 libssl-dev &&     wget http://archive.apache.org/dist/hadoop/core/hadoop-$HADOOP_VERSION/hadoop-$HADOOP_VERSION.tar.gz &&     apt-get remove -y wget &&     rm -rf /var/lib/apt/lists/* &&     tar -zxf /hadoop-$HADOOP_VERSION.tar.gz &&     rm /hadoop-$HADOOP_VERSION.tar.gz &&     mv hadoop-$HADOOP_VERSION /usr/local/hadoop &&     mkdir -p /usr/local/hadoop/logs" shape="box"];
  "sha256:f83cf5e071e52745180de0c0110a092d1ab2b0c6fb8012112de8b39095cebdd0" [label="local://context" shape="ellipse"];
  "sha256:6beb902c75b6954441d1d8327155f9e81ef2436611d93f07e13289af43db5edc" [label="copy{src=/conf, dest=/usr/local/hadoop/etc/hadoop/}" shape="note"];
  "sha256:d0fbc3f9f96f6e77192b5f8689d0c761748f4d0ed4691b15c4cfd1c424ee9834" [label="/bin/sh -c mkdir -p /data/dfs/data /data/dfs/name /data/dfs/namesecondary &&     hdfs namenode -format" shape="box"];
  "sha256:430ffd7f3462c138487b91e19a6f56b969e4d4b63dde63ef8a0ca6f73c46a487" [label="copy{src=/start-yarn.sh, dest=/usr/local/bin/start-yarn.sh}" shape="note"];
  "sha256:c3050b59034f57e3fef10d52889ceb012128b12b95770b8987a605c4c2320957" [label="sha256:c3050b59034f57e3fef10d52889ceb012128b12b95770b8987a605c4c2320957" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:afc44ea9aa58c8eeb6533803ef39d0960679538b56515e72065b44e7c21f6709" [label=""];
  "sha256:afc44ea9aa58c8eeb6533803ef39d0960679538b56515e72065b44e7c21f6709" -> "sha256:6c14bbe07b6731d115c8b57146021b8123c4a095d75de516afd9fe3d360ed08b" [label=""];
  "sha256:6c14bbe07b6731d115c8b57146021b8123c4a095d75de516afd9fe3d360ed08b" -> "sha256:6beb902c75b6954441d1d8327155f9e81ef2436611d93f07e13289af43db5edc" [label=""];
  "sha256:f83cf5e071e52745180de0c0110a092d1ab2b0c6fb8012112de8b39095cebdd0" -> "sha256:6beb902c75b6954441d1d8327155f9e81ef2436611d93f07e13289af43db5edc" [label=""];
  "sha256:6beb902c75b6954441d1d8327155f9e81ef2436611d93f07e13289af43db5edc" -> "sha256:d0fbc3f9f96f6e77192b5f8689d0c761748f4d0ed4691b15c4cfd1c424ee9834" [label=""];
  "sha256:d0fbc3f9f96f6e77192b5f8689d0c761748f4d0ed4691b15c4cfd1c424ee9834" -> "sha256:430ffd7f3462c138487b91e19a6f56b969e4d4b63dde63ef8a0ca6f73c46a487" [label=""];
  "sha256:f83cf5e071e52745180de0c0110a092d1ab2b0c6fb8012112de8b39095cebdd0" -> "sha256:430ffd7f3462c138487b91e19a6f56b969e4d4b63dde63ef8a0ca6f73c46a487" [label=""];
  "sha256:430ffd7f3462c138487b91e19a6f56b969e4d4b63dde63ef8a0ca6f73c46a487" -> "sha256:c3050b59034f57e3fef10d52889ceb012128b12b95770b8987a605c4c2320957" [label=""];
}

