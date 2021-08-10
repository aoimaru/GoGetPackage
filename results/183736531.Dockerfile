[app/sources/183736531.Dockerfile]
digraph {
  "sha256:74a8843f423909c7863a656e77d5eecd93a8b52e2ba6dbd1653950e261fabe0d" [label="docker-image://docker.io/airdock/base:jessie" shape="ellipse"];
  "sha256:eb2a12dd2c59362979243f87ead43d4f72c283e815c23bdffecba9db39ff270b" [label="local://context" shape="ellipse"];
  "sha256:f0a9fbc45f0c2f16d7e39907ceb944528091de817161064aee08f10409270d01" [label="copy{src=/java-dynamic-memory-opts, dest=/srv/java/}" shape="note"];
  "sha256:b9912f064d6ffda7d4a52091814e596884bf9a5361f8358f54c935b83d6579c0" [label="/bin/sh -c cd /tmp &&     curl -L -O -H \"Cookie: oraclelicense=accept-securebackup-cookie\" -k \"http://download.oracle.com/otn-pub/java/jdk/8u60-b27/jdk-8u60-linux-x64.tar.gz\" &&     tar xf jdk-8u60-linux-x64.tar.gz -C /srv/java &&     rm -f jdk-8u60-linux-x64.tar.gz &&     ln -s /srv/java/jdk* /srv/java/jdk &&     ln -s /srv/java/jdk /srv/java/jvm &&     chown -R java:java /srv/java &&     /root/post-install" shape="box"];
  "sha256:996d37735f7fd06e9d55e43e4f6fcba233b4c6d6025acd29a5708e6bf251dd63" [label="sha256:996d37735f7fd06e9d55e43e4f6fcba233b4c6d6025acd29a5708e6bf251dd63" shape="plaintext"];
  "sha256:74a8843f423909c7863a656e77d5eecd93a8b52e2ba6dbd1653950e261fabe0d" -> "sha256:f0a9fbc45f0c2f16d7e39907ceb944528091de817161064aee08f10409270d01" [label=""];
  "sha256:eb2a12dd2c59362979243f87ead43d4f72c283e815c23bdffecba9db39ff270b" -> "sha256:f0a9fbc45f0c2f16d7e39907ceb944528091de817161064aee08f10409270d01" [label=""];
  "sha256:f0a9fbc45f0c2f16d7e39907ceb944528091de817161064aee08f10409270d01" -> "sha256:b9912f064d6ffda7d4a52091814e596884bf9a5361f8358f54c935b83d6579c0" [label=""];
  "sha256:b9912f064d6ffda7d4a52091814e596884bf9a5361f8358f54c935b83d6579c0" -> "sha256:996d37735f7fd06e9d55e43e4f6fcba233b4c6d6025acd29a5708e6bf251dd63" [label=""];
}

