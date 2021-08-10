[app/sources/271044555.Dockerfile]
digraph {
  "sha256:6f8532b90ab344aecf1346fb7621e511dd07e7c511787250786d7814016a5241" [label="docker-image://docker.io/library/centos:7.4.1708" shape="ellipse"];
  "sha256:5b4975e0849f9c12f7c605c2985f6bd0a4bf3e4c669e7fad07b3dc79338a5613" [label="local://context" shape="ellipse"];
  "sha256:a28de703ae9faf60f1a9f48d12b97bd7b76ff2c898c8cabd2efd6bdc9b8581e2" [label="copy{src=/jdk1.8.0_152, dest=/usr/java/jdk1.8.0_152}" shape="note"];
  "sha256:7404c9dba7c6c2ae381185289eeb1f2d66914de339b1ad2e06762ced065459cf" [label="/bin/sh -c export JAVA_DIR=/usr/java/jdk1.8.0_152 &&     ln -s $JAVA_DIR /usr/java/latest &&     ln -s $JAVA_DIR /usr/java/default &&     alternatives --install /usr/bin/java java $JAVA_DIR/bin/java 20000 &&     alternatives --install /usr/bin/javac javac $JAVA_DIR/bin/javac 20000 &&     alternatives --install /usr/bin/jar jar $JAVA_DIR/bin/jar 20000 &&     mkdir /usr/jigsaw" shape="box"];
  "sha256:c818ab31f3c7c44cc27dbead127f3a45f9353183801a64abe8b58cc6dfef832f" [label="sha256:c818ab31f3c7c44cc27dbead127f3a45f9353183801a64abe8b58cc6dfef832f" shape="plaintext"];
  "sha256:6f8532b90ab344aecf1346fb7621e511dd07e7c511787250786d7814016a5241" -> "sha256:a28de703ae9faf60f1a9f48d12b97bd7b76ff2c898c8cabd2efd6bdc9b8581e2" [label=""];
  "sha256:5b4975e0849f9c12f7c605c2985f6bd0a4bf3e4c669e7fad07b3dc79338a5613" -> "sha256:a28de703ae9faf60f1a9f48d12b97bd7b76ff2c898c8cabd2efd6bdc9b8581e2" [label=""];
  "sha256:a28de703ae9faf60f1a9f48d12b97bd7b76ff2c898c8cabd2efd6bdc9b8581e2" -> "sha256:7404c9dba7c6c2ae381185289eeb1f2d66914de339b1ad2e06762ced065459cf" [label=""];
  "sha256:7404c9dba7c6c2ae381185289eeb1f2d66914de339b1ad2e06762ced065459cf" -> "sha256:c818ab31f3c7c44cc27dbead127f3a45f9353183801a64abe8b58cc6dfef832f" [label=""];
}

