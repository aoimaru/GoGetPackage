[app/sources/151290111.Dockerfile]
digraph {
  "sha256:a030affb47aac06ab08f5e9e62037a7d15f61f0410ad315ccce9c5f509ef13e8" [label="docker-image://docker.io/silarsis/base:latest" shape="ellipse"];
  "sha256:691c71fd50d6d39b50b456159c8508be262016aa3ce1d9b30191d31051f6da09" [label="/bin/sh -c apt-get -yq update && apt-get -yq install openjdk-7-jdk" shape="box"];
  "sha256:b93c173d7e638953b0c2e729eb3abb5e0c262fd1329c017dec5f0c1def387c6d" [label="/bin/sh -c wget -q -O /tmp/sbt.tgz http://scalasbt.artifactoryonline.com/scalasbt/sbt-native-packages/org/scala-sbt/sbt/0.12.4/sbt.tgz   && cd /usr/local   && tar zxf /tmp/sbt.tgz" shape="box"];
  "sha256:ee0d2cb94fe3dafbfe6fabda54a7cbaa0bac8d07f617a7f563b3f73caf66e19f" [label="mkdir{path=/opt/progfun}" shape="note"];
  "sha256:d69fb1b316ffb77cdd50442b917d7590a47563f6b3f5ad71c30bd55b9198bb25" [label="/bin/sh -c /usr/local/sbt/bin/sbt version" shape="box"];
  "sha256:f42e39d8bf21483b2660f4b5a43fbcf007928a4ccfc775f493c2d4dc5a5c8a0f" [label="sha256:f42e39d8bf21483b2660f4b5a43fbcf007928a4ccfc775f493c2d4dc5a5c8a0f" shape="plaintext"];
  "sha256:a030affb47aac06ab08f5e9e62037a7d15f61f0410ad315ccce9c5f509ef13e8" -> "sha256:691c71fd50d6d39b50b456159c8508be262016aa3ce1d9b30191d31051f6da09" [label=""];
  "sha256:691c71fd50d6d39b50b456159c8508be262016aa3ce1d9b30191d31051f6da09" -> "sha256:b93c173d7e638953b0c2e729eb3abb5e0c262fd1329c017dec5f0c1def387c6d" [label=""];
  "sha256:b93c173d7e638953b0c2e729eb3abb5e0c262fd1329c017dec5f0c1def387c6d" -> "sha256:ee0d2cb94fe3dafbfe6fabda54a7cbaa0bac8d07f617a7f563b3f73caf66e19f" [label=""];
  "sha256:ee0d2cb94fe3dafbfe6fabda54a7cbaa0bac8d07f617a7f563b3f73caf66e19f" -> "sha256:d69fb1b316ffb77cdd50442b917d7590a47563f6b3f5ad71c30bd55b9198bb25" [label=""];
  "sha256:d69fb1b316ffb77cdd50442b917d7590a47563f6b3f5ad71c30bd55b9198bb25" -> "sha256:f42e39d8bf21483b2660f4b5a43fbcf007928a4ccfc775f493c2d4dc5a5c8a0f" [label=""];
}

