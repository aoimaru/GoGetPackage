[app/sources/468086465.Dockerfile]
digraph {
  "sha256:b417c5826e322934e9ff971ae126b693284b2fe3d3645d0ed1754059f04d0dcc" [label="docker-image://docker.io/fabric8/java-alpine-openjdk8-jre:latest" shape="ellipse"];
  "sha256:9bbdd90b99db52496d229eb5d16a3516f84c01a97b187954b7f50c8e393fc61c" [label="local://context" shape="ellipse"];
  "sha256:ba745be065eac1615c1b84e52d2a33397ef168c3e4ebba55d0d54c14f70402a0" [label="copy{src=/target/lib/*, dest=/deployments/lib/}" shape="note"];
  "sha256:0f07d098c838d9abc4a1552845982a313212764837b791cc2faaf261eeaa9e04" [label="copy{src=/target/*-runner.jar, dest=/deployments/app.jar}" shape="note"];
  "sha256:073b7a5888684b253e9c6c5ce4575b49e03284416052efc142f91e8082d665e8" [label="sha256:073b7a5888684b253e9c6c5ce4575b49e03284416052efc142f91e8082d665e8" shape="plaintext"];
  "sha256:b417c5826e322934e9ff971ae126b693284b2fe3d3645d0ed1754059f04d0dcc" -> "sha256:ba745be065eac1615c1b84e52d2a33397ef168c3e4ebba55d0d54c14f70402a0" [label=""];
  "sha256:9bbdd90b99db52496d229eb5d16a3516f84c01a97b187954b7f50c8e393fc61c" -> "sha256:ba745be065eac1615c1b84e52d2a33397ef168c3e4ebba55d0d54c14f70402a0" [label=""];
  "sha256:ba745be065eac1615c1b84e52d2a33397ef168c3e4ebba55d0d54c14f70402a0" -> "sha256:0f07d098c838d9abc4a1552845982a313212764837b791cc2faaf261eeaa9e04" [label=""];
  "sha256:9bbdd90b99db52496d229eb5d16a3516f84c01a97b187954b7f50c8e393fc61c" -> "sha256:0f07d098c838d9abc4a1552845982a313212764837b791cc2faaf261eeaa9e04" [label=""];
  "sha256:0f07d098c838d9abc4a1552845982a313212764837b791cc2faaf261eeaa9e04" -> "sha256:073b7a5888684b253e9c6c5ce4575b49e03284416052efc142f91e8082d665e8" [label=""];
}

