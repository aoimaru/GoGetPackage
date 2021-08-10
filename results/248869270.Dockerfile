[app/sources/248869270.Dockerfile]
digraph {
  "sha256:e10c3e999db1078b7da6d71c7142be5da9a4a42b82473865ff882915cc7ccfa9" [label="docker-image://docker.io/library/sonarqube:7.6-community" shape="ellipse"];
  "sha256:c811b5b0843fe3f1acdf2885a8fe1aa034a821540c089e79089e4c01d958f936" [label="mkdir{path=/opt/sonarqube/extensions/plugins}" shape="note"];
  "sha256:a497dfa917fa62cec11e74eef94d6223273aa9236b7d99361aff947485302125" [label="/bin/sh -c wget -O \"sonar-scala-plugin-${SONAR_SCALA_VERSION}.jar\"     \"https://dl.bintray.com/mwz/maven/com/github/mwz/sonar-scala_2.12/${SONAR_SCALA_VERSION}/sonar-scala_2.12-${SONAR_SCALA_VERSION}-assembly.jar\"" shape="box"];
  "sha256:f679f2f8c5b79981b80e0c81dad94b34052c599563260aeb149682934a648105" [label="mkdir{path=/opt/sonarqube/extensions/plugins}" shape="note"];
  "sha256:27cab7236f7de129d42665252106736a11b1bd05f5e91f2d33639ac2f9361e96" [label="sha256:27cab7236f7de129d42665252106736a11b1bd05f5e91f2d33639ac2f9361e96" shape="plaintext"];
  "sha256:e10c3e999db1078b7da6d71c7142be5da9a4a42b82473865ff882915cc7ccfa9" -> "sha256:c811b5b0843fe3f1acdf2885a8fe1aa034a821540c089e79089e4c01d958f936" [label=""];
  "sha256:c811b5b0843fe3f1acdf2885a8fe1aa034a821540c089e79089e4c01d958f936" -> "sha256:a497dfa917fa62cec11e74eef94d6223273aa9236b7d99361aff947485302125" [label=""];
  "sha256:a497dfa917fa62cec11e74eef94d6223273aa9236b7d99361aff947485302125" -> "sha256:f679f2f8c5b79981b80e0c81dad94b34052c599563260aeb149682934a648105" [label=""];
  "sha256:f679f2f8c5b79981b80e0c81dad94b34052c599563260aeb149682934a648105" -> "sha256:27cab7236f7de129d42665252106736a11b1bd05f5e91f2d33639ac2f9361e96" [label=""];
}

