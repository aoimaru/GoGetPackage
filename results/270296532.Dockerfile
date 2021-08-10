[app/sources/270296532.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:3bbf99e2d443e1207c6ba6a6a9dde38bf28a7177e40adbe541577f11d6de0e16" [label="/bin/sh -c yum install -y java-1.8.0-openjdk && yum clean all" shape="box"];
  "sha256:cde1d7b3ab33b2e0cb0dfd76060e306b92a9cdc8d981c43eb551bf4c074bc0da" [label="/bin/sh -c mkdir -p ${MAESTRO_SUT_ROOT}" shape="box"];
  "sha256:8fc8093ca1fb8946516e1d25bef43b7e2d0fef1c927948d4675dd1e81edba27c" [label="mkdir{path=/opt/maestro/sut}" shape="note"];
  "sha256:2e4af70ced1315f3fcb757dbb81557b05b792295d83edceaed8d46dc4c1cdcb8" [label="/bin/sh -c curl https://archive.apache.org/dist/activemq/${ACTIVEMQ_VERSION}/apache-activemq-${ACTIVEMQ_VERSION}-bin.tar.gz -o apache-activemq.tar.gz &&     mkdir -p apache-activemq && tar --strip-components=1 -xvf apache-activemq.tar.gz -C apache-activemq &&     rm -f apache-activemq.tar.gz" shape="box"];
  "sha256:373db9fca0696a0f788e9313ff0718d7c8e8483f0d3926a64b62aa3795839781" [label="sha256:373db9fca0696a0f788e9313ff0718d7c8e8483f0d3926a64b62aa3795839781" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:3bbf99e2d443e1207c6ba6a6a9dde38bf28a7177e40adbe541577f11d6de0e16" [label=""];
  "sha256:3bbf99e2d443e1207c6ba6a6a9dde38bf28a7177e40adbe541577f11d6de0e16" -> "sha256:cde1d7b3ab33b2e0cb0dfd76060e306b92a9cdc8d981c43eb551bf4c074bc0da" [label=""];
  "sha256:cde1d7b3ab33b2e0cb0dfd76060e306b92a9cdc8d981c43eb551bf4c074bc0da" -> "sha256:8fc8093ca1fb8946516e1d25bef43b7e2d0fef1c927948d4675dd1e81edba27c" [label=""];
  "sha256:8fc8093ca1fb8946516e1d25bef43b7e2d0fef1c927948d4675dd1e81edba27c" -> "sha256:2e4af70ced1315f3fcb757dbb81557b05b792295d83edceaed8d46dc4c1cdcb8" [label=""];
  "sha256:2e4af70ced1315f3fcb757dbb81557b05b792295d83edceaed8d46dc4c1cdcb8" -> "sha256:373db9fca0696a0f788e9313ff0718d7c8e8483f0d3926a64b62aa3795839781" [label=""];
}

