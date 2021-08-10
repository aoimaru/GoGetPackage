[app/sources/338157078.Dockerfile]
digraph {
  "sha256:a2a0ef237df153165d725216b139aa16ee8733bace25c01a80bbd3f2d92110c4" [label="docker-image://docker.io/library/buildpack-deps:stretch-curl" shape="ellipse"];
  "sha256:c61dad9ed6e2afb46f1e0deb2b4bce85538f2ae22dcbe757cdf10a81f5ad0614" [label="/bin/sh -c set -ex     && mkdir -p ${JAVA_HOME}     && cd ${JAVA_HOME}     && wget -qO- http://api.vulhub.org/download/jdk/7/${FILENAME} | tar xz --strip-components=1     && update-alternatives --install /usr/bin/java java /opt/jdk/bin/java 100     && update-alternatives --install /usr/bin/javac javac /opt/jdk/bin/javac 100" shape="box"];
  "sha256:12f7d16d5aa26ba15af5eaeb0a0ae4b0ad6d6fafbb5537595d6c6825ee8a5443" [label="mkdir{path=/opt/jdk}" shape="note"];
  "sha256:d9a5b955c3b64e76857ec60a7b2e218e8842a3e6ec883e165c162b87f7b60e05" [label="sha256:d9a5b955c3b64e76857ec60a7b2e218e8842a3e6ec883e165c162b87f7b60e05" shape="plaintext"];
  "sha256:a2a0ef237df153165d725216b139aa16ee8733bace25c01a80bbd3f2d92110c4" -> "sha256:c61dad9ed6e2afb46f1e0deb2b4bce85538f2ae22dcbe757cdf10a81f5ad0614" [label=""];
  "sha256:c61dad9ed6e2afb46f1e0deb2b4bce85538f2ae22dcbe757cdf10a81f5ad0614" -> "sha256:12f7d16d5aa26ba15af5eaeb0a0ae4b0ad6d6fafbb5537595d6c6825ee8a5443" [label=""];
  "sha256:12f7d16d5aa26ba15af5eaeb0a0ae4b0ad6d6fafbb5537595d6c6825ee8a5443" -> "sha256:d9a5b955c3b64e76857ec60a7b2e218e8842a3e6ec883e165c162b87f7b60e05" [label=""];
}

