[app/sources/248869247.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:1af0b8ada3301e441a52fe7b6d180f24edca4968dfdae1c5d2f52567b68c489c" [label="/bin/sh -c apk --no-cache add --repository http://dl-cdn.alpinelinux.org/alpine/v3.7/community wget ca-certificates" shape="box"];
  "sha256:88a489f5ec680bb7242c5499aaac3285a0b10b7b04811a6db1c65a35a99d9c75" [label="mkdir{path=/opt/sonarqube/extensions/plugins}" shape="note"];
  "sha256:546bb60365a8bafc0863f88023a38e37fe1a2711eed5f61aa7f90fe9a67f8a4f" [label="/bin/sh -c wget -O \"sonar-scapegoat-plugin-${SONAR_SCAPEGOAT_VERSION}.jar\"     \"https://github.com/arthepsy/sonar-scala-extra/releases/download/v${SONAR_SCAPEGOAT_VERSION}/sonar-scapegoat-plugin-${SONAR_SCAPEGOAT_VERSION}.jar\"" shape="box"];
  "sha256:0bcc235bdf21a3dc362bf005799fb40b745ea4d963e11970805a8f53c488cdb6" [label="/bin/sh -c wget -O \"sonar-scala-plugin-${SONAR_SCALA_VERSION}.jar\"     \"https://dl.bintray.com/mwz/maven/com/github/mwz/sonar-scala_2.12/${SONAR_SCALA_VERSION}/sonar-scala_2.12-${SONAR_SCALA_VERSION}-assembly.jar\"" shape="box"];
  "sha256:094110795308f287fe3271b50d3e8842165ee2687dc080d1017f54aaf41408c0" [label="sha256:094110795308f287fe3271b50d3e8842165ee2687dc080d1017f54aaf41408c0" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:1af0b8ada3301e441a52fe7b6d180f24edca4968dfdae1c5d2f52567b68c489c" [label=""];
  "sha256:1af0b8ada3301e441a52fe7b6d180f24edca4968dfdae1c5d2f52567b68c489c" -> "sha256:88a489f5ec680bb7242c5499aaac3285a0b10b7b04811a6db1c65a35a99d9c75" [label=""];
  "sha256:88a489f5ec680bb7242c5499aaac3285a0b10b7b04811a6db1c65a35a99d9c75" -> "sha256:546bb60365a8bafc0863f88023a38e37fe1a2711eed5f61aa7f90fe9a67f8a4f" [label=""];
  "sha256:546bb60365a8bafc0863f88023a38e37fe1a2711eed5f61aa7f90fe9a67f8a4f" -> "sha256:0bcc235bdf21a3dc362bf005799fb40b745ea4d963e11970805a8f53c488cdb6" [label=""];
  "sha256:0bcc235bdf21a3dc362bf005799fb40b745ea4d963e11970805a8f53c488cdb6" -> "sha256:094110795308f287fe3271b50d3e8842165ee2687dc080d1017f54aaf41408c0" [label=""];
}

