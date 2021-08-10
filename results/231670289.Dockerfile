[app/sources/231670289.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:cf37dc14d124b78a6bb2ef75810651ed36a07012cb1aac1cdecd6920e381c4a0" [label="/bin/sh -c apk add --no-cache openssh openssl openjdk8-jre rsync bash procps coreutils" shape="box"];
  "sha256:07af25dd43d26551e0479555c01477250fa05c4518d12652937a7071ee3bf4f4" [label="/bin/sh -c wget https://archive.apache.org/dist/spark/spark-$SPARK_VER/spark-$SPARK_VER-bin-hadoop2.7.tgz && \ttar -xvf spark-$SPARK_VER-bin-hadoop2.7.tgz -C /usr/local && \trm spark-$SPARK_VER-bin-hadoop2.7.tgz" shape="box"];
  "sha256:5928568a4b3bf803c66887961caf42a9834992cbb424a4d9b7a7020bc03804a9" [label="/bin/sh -c ln -s /usr/local/spark-$SPARK_VER-bin-hadoop2.7 /usr/local/spark" shape="box"];
  "sha256:f80347c52b326ec4fbf29f7b633f124619798f6f659938cb8a56f4df446fe96b" [label="local://context" shape="ellipse"];
  "sha256:c34981a807effb3b55015c7ce0d7b07b25c849bbd9c62af7f2912b5598b395d4" [label="copy{src=/bootstrap.sh, dest=/etc/bootstrap.sh}" shape="note"];
  "sha256:0da855ef8973013da0fe41b0653a315e34c64ca664b818b61365a7a4cd924ba8" [label="mkdir{path=/usr/local/spark}" shape="note"];
  "sha256:d84b218fbee4f1303ebbe6ed5ec69a3ff2369edde618f21d8f6ca60896dbd84b" [label="sha256:d84b218fbee4f1303ebbe6ed5ec69a3ff2369edde618f21d8f6ca60896dbd84b" shape="plaintext"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:cf37dc14d124b78a6bb2ef75810651ed36a07012cb1aac1cdecd6920e381c4a0" [label=""];
  "sha256:cf37dc14d124b78a6bb2ef75810651ed36a07012cb1aac1cdecd6920e381c4a0" -> "sha256:07af25dd43d26551e0479555c01477250fa05c4518d12652937a7071ee3bf4f4" [label=""];
  "sha256:07af25dd43d26551e0479555c01477250fa05c4518d12652937a7071ee3bf4f4" -> "sha256:5928568a4b3bf803c66887961caf42a9834992cbb424a4d9b7a7020bc03804a9" [label=""];
  "sha256:5928568a4b3bf803c66887961caf42a9834992cbb424a4d9b7a7020bc03804a9" -> "sha256:c34981a807effb3b55015c7ce0d7b07b25c849bbd9c62af7f2912b5598b395d4" [label=""];
  "sha256:f80347c52b326ec4fbf29f7b633f124619798f6f659938cb8a56f4df446fe96b" -> "sha256:c34981a807effb3b55015c7ce0d7b07b25c849bbd9c62af7f2912b5598b395d4" [label=""];
  "sha256:c34981a807effb3b55015c7ce0d7b07b25c849bbd9c62af7f2912b5598b395d4" -> "sha256:0da855ef8973013da0fe41b0653a315e34c64ca664b818b61365a7a4cd924ba8" [label=""];
  "sha256:0da855ef8973013da0fe41b0653a315e34c64ca664b818b61365a7a4cd924ba8" -> "sha256:d84b218fbee4f1303ebbe6ed5ec69a3ff2369edde618f21d8f6ca60896dbd84b" [label=""];
}

