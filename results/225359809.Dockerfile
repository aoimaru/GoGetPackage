[app/sources/225359809.Dockerfile]
digraph {
  "sha256:fe671f7846831810626695884e4c6f2a28f2aa1ab0a1fe9b6d6b307a35f320aa" [label="local://context" shape="ellipse"];
  "sha256:0fb939674cc804a63bc41829a19d22519d6d2f1b7b180ca93915b9da4637d791" [label="docker-image://docker.io/library/java:8-jdk" shape="ellipse"];
  "sha256:968827f89039e1911e62c73b9b1f36c980059dc60de266e07e20f9d3249eb413" [label="/bin/sh -c apt-get update -y  && apt-get install -y python-pip  && pip install envtpl" shape="box"];
  "sha256:e80e64397ad4ce944ebe295658bc1c1d8789ce5457357d73f5a57efe71b8b278" [label="/bin/sh -c mkdir -p ${PRESTO_DIR} ${PRESTO_ETC_DIR}/catalog  && curl -s http://central.maven.org/maven2/com/facebook/presto/presto-server/${PRESTO_VERSION}/presto-server-${PRESTO_VERSION}.tar.gz  | tar --strip 1 -vxzC ${PRESTO_DIR}  && curl -s http://central.maven.org/maven2/com/facebook/presto/presto-cli/${PRESTO_VERSION}/presto-cli-${PRESTO_VERSION}-executable.jar > /usr/local/bin/presto  && chmod +x /usr/local/bin/presto" shape="box"];
  "sha256:27f02557e7fd81a6c196c2472c0185fa0905e6266062f4ce6fd5c05181c6504d" [label="mkdir{path=/opt/presto}" shape="note"];
  "sha256:6629fbc509540012f96a6cef3fcfd6d4baaafbb851fb552f5c4fa4dc00dea28a" [label="/bin/sh -c mkdir ${PRESTO_DIR}/scripts  && ln -s ${PRESTO_ETC_DIR} ./etc" shape="box"];
  "sha256:6302116ca2e57eeb45bf6affead46f96e70bd351ec534081dee1adba1208e74a" [label="copy{src=/scripts, dest=/opt/presto/scripts}" shape="note"];
  "sha256:afcaf1c4543e1ca6470b181c31cc4b7b02304a4129b5ee510c92ff92af7d57c2" [label="copy{src=/etc, dest=/etc/presto}" shape="note"];
  "sha256:08e8b29022de9883dfb4c6db5dcc626db2a4621b67d6700f40a21545862c955a" [label="copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:9b2eaf76e157885b76408f95976384c49d8bbc39828df20d96df7b81b33c820a" [label="sha256:9b2eaf76e157885b76408f95976384c49d8bbc39828df20d96df7b81b33c820a" shape="plaintext"];
  "sha256:0fb939674cc804a63bc41829a19d22519d6d2f1b7b180ca93915b9da4637d791" -> "sha256:968827f89039e1911e62c73b9b1f36c980059dc60de266e07e20f9d3249eb413" [label=""];
  "sha256:968827f89039e1911e62c73b9b1f36c980059dc60de266e07e20f9d3249eb413" -> "sha256:e80e64397ad4ce944ebe295658bc1c1d8789ce5457357d73f5a57efe71b8b278" [label=""];
  "sha256:e80e64397ad4ce944ebe295658bc1c1d8789ce5457357d73f5a57efe71b8b278" -> "sha256:27f02557e7fd81a6c196c2472c0185fa0905e6266062f4ce6fd5c05181c6504d" [label=""];
  "sha256:27f02557e7fd81a6c196c2472c0185fa0905e6266062f4ce6fd5c05181c6504d" -> "sha256:6629fbc509540012f96a6cef3fcfd6d4baaafbb851fb552f5c4fa4dc00dea28a" [label=""];
  "sha256:6629fbc509540012f96a6cef3fcfd6d4baaafbb851fb552f5c4fa4dc00dea28a" -> "sha256:6302116ca2e57eeb45bf6affead46f96e70bd351ec534081dee1adba1208e74a" [label=""];
  "sha256:fe671f7846831810626695884e4c6f2a28f2aa1ab0a1fe9b6d6b307a35f320aa" -> "sha256:6302116ca2e57eeb45bf6affead46f96e70bd351ec534081dee1adba1208e74a" [label=""];
  "sha256:6302116ca2e57eeb45bf6affead46f96e70bd351ec534081dee1adba1208e74a" -> "sha256:afcaf1c4543e1ca6470b181c31cc4b7b02304a4129b5ee510c92ff92af7d57c2" [label=""];
  "sha256:fe671f7846831810626695884e4c6f2a28f2aa1ab0a1fe9b6d6b307a35f320aa" -> "sha256:afcaf1c4543e1ca6470b181c31cc4b7b02304a4129b5ee510c92ff92af7d57c2" [label=""];
  "sha256:afcaf1c4543e1ca6470b181c31cc4b7b02304a4129b5ee510c92ff92af7d57c2" -> "sha256:08e8b29022de9883dfb4c6db5dcc626db2a4621b67d6700f40a21545862c955a" [label=""];
  "sha256:fe671f7846831810626695884e4c6f2a28f2aa1ab0a1fe9b6d6b307a35f320aa" -> "sha256:08e8b29022de9883dfb4c6db5dcc626db2a4621b67d6700f40a21545862c955a" [label=""];
  "sha256:08e8b29022de9883dfb4c6db5dcc626db2a4621b67d6700f40a21545862c955a" -> "sha256:9b2eaf76e157885b76408f95976384c49d8bbc39828df20d96df7b81b33c820a" [label=""];
}

