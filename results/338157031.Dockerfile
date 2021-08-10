[app/sources/338157031.Dockerfile]
digraph {
  "sha256:a2a0ef237df153165d725216b139aa16ee8733bace25c01a80bbd3f2d92110c4" [label="docker-image://docker.io/library/buildpack-deps:stretch-curl" shape="ellipse"];
  "sha256:7dd46936dff20d007439b976f6912fb0ebb4c544254de71283d97683ecde3835" [label="/bin/sh -c set -ex     && mkdir -p ${JAVA_HOME}     && cd ${JAVA_HOME}     && wget -q -O jdk.bin http://api.vulhub.org/download/jdk/6/${FILENAME}     && chmod +x jdk.bin     && yes | ./jdk.bin     && rm -rf jdk.bin     && mv jdk1.6.0_*/* ./     && update-alternatives --install /usr/bin/java java /opt/jdk/bin/java 100     && update-alternatives --install /usr/bin/javac javac /opt/jdk/bin/javac 100" shape="box"];
  "sha256:7e6ebf04b9d33234679cd570efbf6455be609648997e1887a4e641d1265214f6" [label="mkdir{path=/opt/jdk}" shape="note"];
  "sha256:b8e9a0d5154f13436911e9d36fa10558c42f02c7dd2f5ba7a92a52c4828b5a0b" [label="sha256:b8e9a0d5154f13436911e9d36fa10558c42f02c7dd2f5ba7a92a52c4828b5a0b" shape="plaintext"];
  "sha256:a2a0ef237df153165d725216b139aa16ee8733bace25c01a80bbd3f2d92110c4" -> "sha256:7dd46936dff20d007439b976f6912fb0ebb4c544254de71283d97683ecde3835" [label=""];
  "sha256:7dd46936dff20d007439b976f6912fb0ebb4c544254de71283d97683ecde3835" -> "sha256:7e6ebf04b9d33234679cd570efbf6455be609648997e1887a4e641d1265214f6" [label=""];
  "sha256:7e6ebf04b9d33234679cd570efbf6455be609648997e1887a4e641d1265214f6" -> "sha256:b8e9a0d5154f13436911e9d36fa10558c42f02c7dd2f5ba7a92a52c4828b5a0b" [label=""];
}

