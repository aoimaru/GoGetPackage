[app/sources/196226748.Dockerfile]
digraph {
  "sha256:cf216e9bb3d6e7379693116f76394435621920e46d045057d26774c7be82dbd6" [label="docker-image://docker.io/library/baseliberty:latest" shape="ellipse"];
  "sha256:3a8c053826dc7accc33b0a3e9c68512b1c245a7ed37b3f5b699fafb36ec6d106" [label="/bin/sh -c wget http://repo1.maven.org/maven2/net/wasdev/wlp/sample/ferret/1.0/ferret-1.0.war" shape="box"];
  "sha256:70152fbd9bd73c929502fdab02528cc11de1d7bc736e6ffa7e51d4af91e5bc24" [label="/bin/sh -c mv ferret-1.0.war  /opt/ibm/wlp/usr/servers/defaultServer/dropins/ferret-1.0.war" shape="box"];
  "sha256:29bdad7f9805b103eb7fe32f27590ecc27ce1134cfcad568309f4b7f63ffb7a8" [label="sha256:29bdad7f9805b103eb7fe32f27590ecc27ce1134cfcad568309f4b7f63ffb7a8" shape="plaintext"];
  "sha256:cf216e9bb3d6e7379693116f76394435621920e46d045057d26774c7be82dbd6" -> "sha256:3a8c053826dc7accc33b0a3e9c68512b1c245a7ed37b3f5b699fafb36ec6d106" [label=""];
  "sha256:3a8c053826dc7accc33b0a3e9c68512b1c245a7ed37b3f5b699fafb36ec6d106" -> "sha256:70152fbd9bd73c929502fdab02528cc11de1d7bc736e6ffa7e51d4af91e5bc24" [label=""];
  "sha256:70152fbd9bd73c929502fdab02528cc11de1d7bc736e6ffa7e51d4af91e5bc24" -> "sha256:29bdad7f9805b103eb7fe32f27590ecc27ce1134cfcad568309f4b7f63ffb7a8" [label=""];
}

