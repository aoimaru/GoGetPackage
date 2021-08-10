[app/sources/276003540.Dockerfile]
digraph {
  "sha256:5f86bd9b24839eb0627a8a6b9cb44f69680f91dd46dd3bc3cd58d8274bd22350" [label="docker-image://docker.io/daggerok/jboss:eap-7.1" shape="ellipse"];
  "sha256:d304a9aa3b55a41a44f771791188423382eef7a9223fdad55ae67698ed20aa59" [label="/bin/sh -c echo \"JAVA_OPTS=\\\"\\$JAVA_OPTS -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005 \\\"\" >> ${JBOSS_HOME}/bin/standalone.conf" shape="box"];
  "sha256:c576cbab787a8aa8b08ba8ffb3af0a3a978aa57dffa27796e949879fe425f5b0" [label="local://context" shape="ellipse"];
  "sha256:69087bd07b17548d15e920a3bedcad9233684dc92647a6f5981cd5f09b67440b" [label="copy{src=/build/libs/*.war, dest=/standalone/deployments/app.war}" shape="note"];
  "sha256:c3e6145150a8c9234a325a2875a3e73a9757fdf70926f0f6d7af3517d7c695cf" [label="sha256:c3e6145150a8c9234a325a2875a3e73a9757fdf70926f0f6d7af3517d7c695cf" shape="plaintext"];
  "sha256:5f86bd9b24839eb0627a8a6b9cb44f69680f91dd46dd3bc3cd58d8274bd22350" -> "sha256:d304a9aa3b55a41a44f771791188423382eef7a9223fdad55ae67698ed20aa59" [label=""];
  "sha256:d304a9aa3b55a41a44f771791188423382eef7a9223fdad55ae67698ed20aa59" -> "sha256:69087bd07b17548d15e920a3bedcad9233684dc92647a6f5981cd5f09b67440b" [label=""];
  "sha256:c576cbab787a8aa8b08ba8ffb3af0a3a978aa57dffa27796e949879fe425f5b0" -> "sha256:69087bd07b17548d15e920a3bedcad9233684dc92647a6f5981cd5f09b67440b" [label=""];
  "sha256:69087bd07b17548d15e920a3bedcad9233684dc92647a6f5981cd5f09b67440b" -> "sha256:c3e6145150a8c9234a325a2875a3e73a9757fdf70926f0f6d7af3517d7c695cf" [label=""];
}

