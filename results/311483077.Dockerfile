[app/sources/311483077.Dockerfile]
digraph {
  "sha256:5f86bd9b24839eb0627a8a6b9cb44f69680f91dd46dd3bc3cd58d8274bd22350" [label="docker-image://docker.io/daggerok/jboss:eap-7.1" shape="ellipse"];
  "sha256:d304a9aa3b55a41a44f771791188423382eef7a9223fdad55ae67698ed20aa59" [label="/bin/sh -c echo \"JAVA_OPTS=\\\"\\$JAVA_OPTS -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005 \\\"\" >> ${JBOSS_HOME}/bin/standalone.conf" shape="box"];
  "sha256:878914f5afbe34779c3ef6d9ed8c8df77c892a1de8ad06f9a23c199109d11673" [label="local://context" shape="ellipse"];
  "sha256:27af1f49cdada3eab026116f6d9bbd828c680cce930c3b2c932d55086f646e59" [label="copy{src=/target/*.war, dest=/standalone/deployments/app.war}" shape="note"];
  "sha256:71173ed70a1783933b149253860dde71293eae8eee21d2280f18a73ee9783977" [label="sha256:71173ed70a1783933b149253860dde71293eae8eee21d2280f18a73ee9783977" shape="plaintext"];
  "sha256:5f86bd9b24839eb0627a8a6b9cb44f69680f91dd46dd3bc3cd58d8274bd22350" -> "sha256:d304a9aa3b55a41a44f771791188423382eef7a9223fdad55ae67698ed20aa59" [label=""];
  "sha256:d304a9aa3b55a41a44f771791188423382eef7a9223fdad55ae67698ed20aa59" -> "sha256:27af1f49cdada3eab026116f6d9bbd828c680cce930c3b2c932d55086f646e59" [label=""];
  "sha256:878914f5afbe34779c3ef6d9ed8c8df77c892a1de8ad06f9a23c199109d11673" -> "sha256:27af1f49cdada3eab026116f6d9bbd828c680cce930c3b2c932d55086f646e59" [label=""];
  "sha256:27af1f49cdada3eab026116f6d9bbd828c680cce930c3b2c932d55086f646e59" -> "sha256:71173ed70a1783933b149253860dde71293eae8eee21d2280f18a73ee9783977" [label=""];
}

