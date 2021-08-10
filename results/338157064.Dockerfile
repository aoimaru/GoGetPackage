[app/sources/338157064.Dockerfile]
digraph {
  "sha256:a2a0ef237df153165d725216b139aa16ee8733bace25c01a80bbd3f2d92110c4" [label="docker-image://docker.io/library/buildpack-deps:stretch-curl" shape="ellipse"];
  "sha256:91a40399f9af1da22101f7be8bcd27fd1bdb3e5c12c873e919da88199ce2f3a7" [label="/bin/sh -c set -ex     && mkdir -p ${JAVA_HOME}     && cd ${JAVA_HOME}     && wget -qO- http://api.vulhub.org/download/jdk/7/${FILENAME} | tar xz --strip-components=1     && update-alternatives --install /usr/bin/java java /opt/jdk/bin/java 100     && update-alternatives --install /usr/bin/javac javac /opt/jdk/bin/javac 100" shape="box"];
  "sha256:2e925bd047f8feeb6be4effb0959b1ca7be2a9f394865956aa7555e1065822b8" [label="mkdir{path=/opt/jdk}" shape="note"];
  "sha256:6b00572abbb0493fe2f72652db750c381b8c78670e64ef85921e6c36f17f1676" [label="sha256:6b00572abbb0493fe2f72652db750c381b8c78670e64ef85921e6c36f17f1676" shape="plaintext"];
  "sha256:a2a0ef237df153165d725216b139aa16ee8733bace25c01a80bbd3f2d92110c4" -> "sha256:91a40399f9af1da22101f7be8bcd27fd1bdb3e5c12c873e919da88199ce2f3a7" [label=""];
  "sha256:91a40399f9af1da22101f7be8bcd27fd1bdb3e5c12c873e919da88199ce2f3a7" -> "sha256:2e925bd047f8feeb6be4effb0959b1ca7be2a9f394865956aa7555e1065822b8" [label=""];
  "sha256:2e925bd047f8feeb6be4effb0959b1ca7be2a9f394865956aa7555e1065822b8" -> "sha256:6b00572abbb0493fe2f72652db750c381b8c78670e64ef85921e6c36f17f1676" [label=""];
}

