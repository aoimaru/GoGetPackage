[app/sources/338157112.Dockerfile]
digraph {
  "sha256:a2a0ef237df153165d725216b139aa16ee8733bace25c01a80bbd3f2d92110c4" [label="docker-image://docker.io/library/buildpack-deps:stretch-curl" shape="ellipse"];
  "sha256:2fdce732ac4651fe994593c30ad8e0a74b5c3dcf1e0c7fb2094e0e7c7b4c012a" [label="/bin/sh -c set -ex     && mkdir -p ${JAVA_HOME}     && cd ${JAVA_HOME}     && wget -qO- http://api.vulhub.org/download/jdk/8/${FILENAME} | tar xz --strip-components=1     && update-alternatives --install /usr/bin/java java /opt/jdk/bin/java 100     && update-alternatives --install /usr/bin/javac javac /opt/jdk/bin/javac 100" shape="box"];
  "sha256:fdad511e6ca68a734616e5c7c80584bf501a8e190a1a83e74a2b60eb4f94e0a9" [label="mkdir{path=/opt/jdk}" shape="note"];
  "sha256:3fadc4c768850cd21733acfe84c53baf39e761197fcb29133d5a6b2ae3ea8182" [label="sha256:3fadc4c768850cd21733acfe84c53baf39e761197fcb29133d5a6b2ae3ea8182" shape="plaintext"];
  "sha256:a2a0ef237df153165d725216b139aa16ee8733bace25c01a80bbd3f2d92110c4" -> "sha256:2fdce732ac4651fe994593c30ad8e0a74b5c3dcf1e0c7fb2094e0e7c7b4c012a" [label=""];
  "sha256:2fdce732ac4651fe994593c30ad8e0a74b5c3dcf1e0c7fb2094e0e7c7b4c012a" -> "sha256:fdad511e6ca68a734616e5c7c80584bf501a8e190a1a83e74a2b60eb4f94e0a9" [label=""];
  "sha256:fdad511e6ca68a734616e5c7c80584bf501a8e190a1a83e74a2b60eb4f94e0a9" -> "sha256:3fadc4c768850cd21733acfe84c53baf39e761197fcb29133d5a6b2ae3ea8182" [label=""];
}

