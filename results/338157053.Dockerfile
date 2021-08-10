[app/sources/338157053.Dockerfile]
digraph {
  "sha256:a2a0ef237df153165d725216b139aa16ee8733bace25c01a80bbd3f2d92110c4" [label="docker-image://docker.io/library/buildpack-deps:stretch-curl" shape="ellipse"];
  "sha256:accee66067b8134cda1d53cdc0a23a7b70805310e33ae61c217ce79acaff9ff5" [label="/bin/sh -c set -ex     && mkdir -p ${JAVA_HOME}     && cd ${JAVA_HOME}     && wget -q -O jdk.bin http://api.vulhub.org/download/jdk/6/${FILENAME}     && chmod +x jdk.bin     && yes | ./jdk.bin     && rm -rf jdk.bin     && mv jdk1.6.0_*/* ./     && update-alternatives --install /usr/bin/java java /opt/jdk/bin/java 100     && update-alternatives --install /usr/bin/javac javac /opt/jdk/bin/javac 100" shape="box"];
  "sha256:82cd263d94bdfde1df5e991421a5d96d7c78ce0aa609f21b575e920ab1d697b0" [label="mkdir{path=/opt/jdk}" shape="note"];
  "sha256:bd6b557fd811fa89a508bd73032999c0a184186605e2db2a4f7ac6146e289028" [label="sha256:bd6b557fd811fa89a508bd73032999c0a184186605e2db2a4f7ac6146e289028" shape="plaintext"];
  "sha256:a2a0ef237df153165d725216b139aa16ee8733bace25c01a80bbd3f2d92110c4" -> "sha256:accee66067b8134cda1d53cdc0a23a7b70805310e33ae61c217ce79acaff9ff5" [label=""];
  "sha256:accee66067b8134cda1d53cdc0a23a7b70805310e33ae61c217ce79acaff9ff5" -> "sha256:82cd263d94bdfde1df5e991421a5d96d7c78ce0aa609f21b575e920ab1d697b0" [label=""];
  "sha256:82cd263d94bdfde1df5e991421a5d96d7c78ce0aa609f21b575e920ab1d697b0" -> "sha256:bd6b557fd811fa89a508bd73032999c0a184186605e2db2a4f7ac6146e289028" [label=""];
}

