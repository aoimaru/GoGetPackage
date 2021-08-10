[app/sources/338157087.Dockerfile]
digraph {
  "sha256:53062e90b2a31f40aa72d08408cb71ae43cbf4e1cc160691cc753b3a7eb135b0" [label="docker-image://docker.io/library/buildpack-deps:stretch-curl@sha256:c676c541b154752a7d7873c571e768853c2f2fe451c447d6c07814004f3a7bdb" shape="ellipse"];
  "sha256:540f920919f226275ebae817ee304579837be0b54e6ee3f3e55e110f80522d2b" [label="/bin/sh -c set -ex     && mkdir -p ${JAVA_HOME}     && cd ${JAVA_HOME}     && wget -qO- http://api.vulhub.org/download/jdk/7/${FILENAME} | tar xz --strip-components=1     && update-alternatives --install /usr/bin/java java /opt/jdk/bin/java 100     && update-alternatives --install /usr/bin/javac javac /opt/jdk/bin/javac 100" shape="box"];
  "sha256:22b9353dbf8f9c1983787e28e8bf6392597a678a6629de1a50442565943c343b" [label="mkdir{path=/opt/jdk}" shape="note"];
  "sha256:7aaf50ecc7664ce76210abcf92c27a1f6d3ab28e1535b52b94c8cc3a5d9c0ff4" [label="sha256:7aaf50ecc7664ce76210abcf92c27a1f6d3ab28e1535b52b94c8cc3a5d9c0ff4" shape="plaintext"];
  "sha256:53062e90b2a31f40aa72d08408cb71ae43cbf4e1cc160691cc753b3a7eb135b0" -> "sha256:540f920919f226275ebae817ee304579837be0b54e6ee3f3e55e110f80522d2b" [label=""];
  "sha256:540f920919f226275ebae817ee304579837be0b54e6ee3f3e55e110f80522d2b" -> "sha256:22b9353dbf8f9c1983787e28e8bf6392597a678a6629de1a50442565943c343b" [label=""];
  "sha256:22b9353dbf8f9c1983787e28e8bf6392597a678a6629de1a50442565943c343b" -> "sha256:7aaf50ecc7664ce76210abcf92c27a1f6d3ab28e1535b52b94c8cc3a5d9c0ff4" [label=""];
}

