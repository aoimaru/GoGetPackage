[app/sources/311482978.Dockerfile]
digraph {
  "sha256:5f86bd9b24839eb0627a8a6b9cb44f69680f91dd46dd3bc3cd58d8274bd22350" [label="docker-image://docker.io/daggerok/jboss:eap-7.1" shape="ellipse"];
  "sha256:d304a9aa3b55a41a44f771791188423382eef7a9223fdad55ae67698ed20aa59" [label="/bin/sh -c echo \"JAVA_OPTS=\\\"\\$JAVA_OPTS -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005 \\\"\" >> ${JBOSS_HOME}/bin/standalone.conf" shape="box"];
  "sha256:24ce4de385789a4b03cef57881fe8547538edef7f75a1d9f0e91d91fc19ac4a2" [label="local://context" shape="ellipse"];
  "sha256:fedfa85241fd4a437b08b7ff028aefcec3726ba06b9ab1381e8c0958d36a9894" [label="copy{src=/ear/target/*.war, dest=/standalone/deployments/app.war}" shape="note"];
  "sha256:6ccecd54338e9c7b15538f86b87c7304abd0dc76710e87910e54aead21b92717" [label="sha256:6ccecd54338e9c7b15538f86b87c7304abd0dc76710e87910e54aead21b92717" shape="plaintext"];
  "sha256:5f86bd9b24839eb0627a8a6b9cb44f69680f91dd46dd3bc3cd58d8274bd22350" -> "sha256:d304a9aa3b55a41a44f771791188423382eef7a9223fdad55ae67698ed20aa59" [label=""];
  "sha256:d304a9aa3b55a41a44f771791188423382eef7a9223fdad55ae67698ed20aa59" -> "sha256:fedfa85241fd4a437b08b7ff028aefcec3726ba06b9ab1381e8c0958d36a9894" [label=""];
  "sha256:24ce4de385789a4b03cef57881fe8547538edef7f75a1d9f0e91d91fc19ac4a2" -> "sha256:fedfa85241fd4a437b08b7ff028aefcec3726ba06b9ab1381e8c0958d36a9894" [label=""];
  "sha256:fedfa85241fd4a437b08b7ff028aefcec3726ba06b9ab1381e8c0958d36a9894" -> "sha256:6ccecd54338e9c7b15538f86b87c7304abd0dc76710e87910e54aead21b92717" [label=""];
}

