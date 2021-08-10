[app/sources/288561516.Dockerfile]
digraph {
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:97b01319247a5c57bad5239731c7d45057452c10211995308fde0b29b1157f3e" [label="mkdir{path=/gemini}" shape="note"];
  "sha256:24ceac5298cda85fa5b42edb804b12bdec3bd9876feafe47a54f25a82792f6aa" [label="local://context" shape="ellipse"];
  "sha256:073234de6183aa8b1ec1bf9e99569bd481dcd88ecc5f50322551fe2ffafbe6a8" [label="copy{src=/src/main/python/community-detector/requirements.txt, dest=/gemini/src/main/python/community-detector/requirements.txt}" shape="note"];
  "sha256:7fbd55a802a3213f915ae997efd22747b8b6a173c07ad469fd6a1d277d7238d9" [label="/bin/sh -c mkdir -p /usr/share/man/man1 &&     apt-get update &&     apt-get install -y --no-install-recommends     openjdk-8-jre-headless openjdk-8-jdk ca-certificates-java curl     python3 python3-pip python3-igraph &&     pip3 install setuptools wheel &&     pip3 install --only-binary=numpy,scipy -r src/main/python/community-detector/requirements.txt &&     rm -rf /var/lib/apt/* &&     curl http://d3kbcqa49mib13.cloudfront.net/${SPARK_NAME}.tgz |     tar xzf - -C /opt &&     curl -L -o ${DUMP_INIT_DEB_NAME}     https://github.com/Yelp/dumb-init/releases/download/v${DUMP_INIT_VERSION}/${DUMP_INIT_DEB_NAME} &&     dpkg -i dumb-init_*.deb &&     rm ${DUMP_INIT_DEB_NAME} &&     apt-get clean" shape="box"];
  "sha256:a5e275c63f749001b88e9623fc1ef304f4ac9882305e3ddd7183b2bdf5503795" [label="/bin/sh -c ln -s $SPARK_DIR $SPARK_HOME" shape="box"];
  "sha256:90ccffcbdb50b3bfad8af5d208c01bb3f1ce2eb0444d25797b7edc3f14103b17" [label="copy{src=/, dest=/gemini}" shape="note"];
  "sha256:7bc01f8ea3446ad8c7043abc5ee30563d9ca034441d17195db7189a4e8c5e8cd" [label="/bin/sh -c ./sbt assemblyPackageDependency && ./sbt assembly && ./sbt package" shape="box"];
  "sha256:63105053da589c78ee4af4ecafb943001baac6941247799846deeca697ee494c" [label="sha256:63105053da589c78ee4af4ecafb943001baac6941247799846deeca697ee494c" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:97b01319247a5c57bad5239731c7d45057452c10211995308fde0b29b1157f3e" [label=""];
  "sha256:97b01319247a5c57bad5239731c7d45057452c10211995308fde0b29b1157f3e" -> "sha256:073234de6183aa8b1ec1bf9e99569bd481dcd88ecc5f50322551fe2ffafbe6a8" [label=""];
  "sha256:24ceac5298cda85fa5b42edb804b12bdec3bd9876feafe47a54f25a82792f6aa" -> "sha256:073234de6183aa8b1ec1bf9e99569bd481dcd88ecc5f50322551fe2ffafbe6a8" [label=""];
  "sha256:073234de6183aa8b1ec1bf9e99569bd481dcd88ecc5f50322551fe2ffafbe6a8" -> "sha256:7fbd55a802a3213f915ae997efd22747b8b6a173c07ad469fd6a1d277d7238d9" [label=""];
  "sha256:7fbd55a802a3213f915ae997efd22747b8b6a173c07ad469fd6a1d277d7238d9" -> "sha256:a5e275c63f749001b88e9623fc1ef304f4ac9882305e3ddd7183b2bdf5503795" [label=""];
  "sha256:a5e275c63f749001b88e9623fc1ef304f4ac9882305e3ddd7183b2bdf5503795" -> "sha256:90ccffcbdb50b3bfad8af5d208c01bb3f1ce2eb0444d25797b7edc3f14103b17" [label=""];
  "sha256:24ceac5298cda85fa5b42edb804b12bdec3bd9876feafe47a54f25a82792f6aa" -> "sha256:90ccffcbdb50b3bfad8af5d208c01bb3f1ce2eb0444d25797b7edc3f14103b17" [label=""];
  "sha256:90ccffcbdb50b3bfad8af5d208c01bb3f1ce2eb0444d25797b7edc3f14103b17" -> "sha256:7bc01f8ea3446ad8c7043abc5ee30563d9ca034441d17195db7189a4e8c5e8cd" [label=""];
  "sha256:7bc01f8ea3446ad8c7043abc5ee30563d9ca034441d17195db7189a4e8c5e8cd" -> "sha256:63105053da589c78ee4af4ecafb943001baac6941247799846deeca697ee494c" [label=""];
}

