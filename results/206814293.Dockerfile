[app/sources/206814293.Dockerfile]
digraph {
  "sha256:65f0062dbdff2947bed330fe5fe10286824a8adff2a552fe6617e6111278c03f" [label="docker-image://docker.io/library/sonarqube:7.7-community" shape="ellipse"];
  "sha256:fa1ffca1122de08929813175f728d3b571b961a3333e916c665e8f9065cfe17d" [label="/bin/sh -c mkdir /home/sonarqube && chown sonarqube:sonarqube /home/sonarqube" shape="box"];
  "sha256:1e71be694ff3440c587eab82952e409263be0e4cede608c07f36d6129641f82e" [label="/bin/sh -c mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn" shape="box"];
  "sha256:2d79b48be0c4039c167632d196590fd8e38ad80b6554472e8b44a6322c819c79" [label="/bin/sh -c apt-get -y update   && apt-get install -y git   && apt-get install -y vim" shape="box"];
  "sha256:13e9fb8f90efdda2d0b6a7a7d96b1e51fd185d7717fa558168e4b5f845d2b0cc" [label="sha256:13e9fb8f90efdda2d0b6a7a7d96b1e51fd185d7717fa558168e4b5f845d2b0cc" shape="plaintext"];
  "sha256:65f0062dbdff2947bed330fe5fe10286824a8adff2a552fe6617e6111278c03f" -> "sha256:fa1ffca1122de08929813175f728d3b571b961a3333e916c665e8f9065cfe17d" [label=""];
  "sha256:fa1ffca1122de08929813175f728d3b571b961a3333e916c665e8f9065cfe17d" -> "sha256:1e71be694ff3440c587eab82952e409263be0e4cede608c07f36d6129641f82e" [label=""];
  "sha256:1e71be694ff3440c587eab82952e409263be0e4cede608c07f36d6129641f82e" -> "sha256:2d79b48be0c4039c167632d196590fd8e38ad80b6554472e8b44a6322c819c79" [label=""];
  "sha256:2d79b48be0c4039c167632d196590fd8e38ad80b6554472e8b44a6322c819c79" -> "sha256:13e9fb8f90efdda2d0b6a7a7d96b1e51fd185d7717fa558168e4b5f845d2b0cc" [label=""];
}

