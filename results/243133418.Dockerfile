[app/sources/243133418.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:8ea4b3df5ebb822f19cb6638979091a0de4e6680864dcae3c913847e693eac37" [label="/bin/sh -c apt-get -y update && apt-get install -y git gcc g++ make cmake bison build-essential         libncurses5-dev wget gzip tar python ant unzip libghc-zlib-dev zlibc less         openjdk-8-jdk openjdk-8-jre automake autoconf mysql-server         libsnappy-dev libsnappy-java libsnappy-jni openssl maven libprotobuf-dev protobuf-c-compiler         && apt-get clean && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:6da31f850506156f963c113d09c6523b931e3ef812133ab08e82f5489167bd46" [label="/bin/sh -c useradd                 --create-home                 --home-dir ${PRESTO_HOME} \t\t\t\t--shell /bin/bash                 $PRESTO_USER" shape="box"];
  "sha256:52b457a2b2c6afb665b9689de04c92e5f26955ea476c85d1aa34d40b5b5a34c0" [label="/bin/sh -c mkdir -p $PRESTO_HOME &&     cd /tmp/ && git clone https://github.com/prestodb/presto.git &&     cd presto && git checkout 0.209 &&     sed -i 's/<module>presto-docs<\\/module>/<!-- module>presto-docs<\\/module -->/g' pom.xml &&     mvn clean install -DskipTests" shape="box"];
  "sha256:ee76d7305307b8ab534860fcbf9240d225fdc85da522df14f2469944a27d2ce3" [label="/bin/sh -c mv /tmp/presto/presto-server/target/presto-server-0.209/* $PRESTO_HOME &&     mkdir -p ${PRESTO_HOME}/data &&     cd ${PRESTO_HOME}/bin &&     mv /tmp/presto/presto-cli/target/presto-cli-0.209-executable.jar . &&     mv presto-cli-0.209-executable.jar presto &&     chmod +x presto &&     chown -R ${PRESTO_USER}:${PRESTO_USER} $PRESTO_HOME" shape="box"];
  "sha256:8d87007f21bfcae3905a13bbb74da8e9bd4976bcfab2d1bb50c24ceb96e1b0c8" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends                 python     && rm -rf /var/lib/apt/lists/*     && cd /usr/local/bin     && rm -rf idle pydoc python python-config" shape="box"];
  "sha256:2bf00433164aa36363a1ed3e238c361cf3151559021bfbfa700c70758623bd57" [label="/bin/sh -c mkdir -p ${PRESTO_CONF_DIR}/ && cp -a /tmp/presto/presto-product-tests/conf/presto/etc/*  ${PRESTO_CONF_DIR}/" shape="box"];
  "sha256:d2e2c7e0fbd75e28e73265f1fb75f57d86cb6bcbc671c76cd89cbb905ec128fb" [label="sha256:d2e2c7e0fbd75e28e73265f1fb75f57d86cb6bcbc671c76cd89cbb905ec128fb" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:8ea4b3df5ebb822f19cb6638979091a0de4e6680864dcae3c913847e693eac37" [label=""];
  "sha256:8ea4b3df5ebb822f19cb6638979091a0de4e6680864dcae3c913847e693eac37" -> "sha256:6da31f850506156f963c113d09c6523b931e3ef812133ab08e82f5489167bd46" [label=""];
  "sha256:6da31f850506156f963c113d09c6523b931e3ef812133ab08e82f5489167bd46" -> "sha256:52b457a2b2c6afb665b9689de04c92e5f26955ea476c85d1aa34d40b5b5a34c0" [label=""];
  "sha256:52b457a2b2c6afb665b9689de04c92e5f26955ea476c85d1aa34d40b5b5a34c0" -> "sha256:ee76d7305307b8ab534860fcbf9240d225fdc85da522df14f2469944a27d2ce3" [label=""];
  "sha256:ee76d7305307b8ab534860fcbf9240d225fdc85da522df14f2469944a27d2ce3" -> "sha256:8d87007f21bfcae3905a13bbb74da8e9bd4976bcfab2d1bb50c24ceb96e1b0c8" [label=""];
  "sha256:8d87007f21bfcae3905a13bbb74da8e9bd4976bcfab2d1bb50c24ceb96e1b0c8" -> "sha256:2bf00433164aa36363a1ed3e238c361cf3151559021bfbfa700c70758623bd57" [label=""];
  "sha256:2bf00433164aa36363a1ed3e238c361cf3151559021bfbfa700c70758623bd57" -> "sha256:d2e2c7e0fbd75e28e73265f1fb75f57d86cb6bcbc671c76cd89cbb905ec128fb" [label=""];
}

