[app/sources/285092082.Dockerfile]
digraph {
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" [label="docker-image://docker.io/library/openjdk:8-jdk-alpine" shape="ellipse"];
  "sha256:ff0c39ec31bc13874c9057e13c6b3d1f420626d6df075b17ebb09c5dc7123a2a" [label="local://context" shape="ellipse"];
  "sha256:ad29b231fea3c2212c903c9d0a993e257f960b7b50d783335f06c658017292c7" [label="copy{src=/target/deposit-server-1.0-SNAPSHOT.jar, dest=/deposit-server.jar}" shape="note"];
  "sha256:ca471010d7755fee49e210eb23908ba4c7668a158ce008d2863b792fd6f3a69d" [label="sha256:ca471010d7755fee49e210eb23908ba4c7668a158ce008d2863b792fd6f3a69d" shape="plaintext"];
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" -> "sha256:ad29b231fea3c2212c903c9d0a993e257f960b7b50d783335f06c658017292c7" [label=""];
  "sha256:ff0c39ec31bc13874c9057e13c6b3d1f420626d6df075b17ebb09c5dc7123a2a" -> "sha256:ad29b231fea3c2212c903c9d0a993e257f960b7b50d783335f06c658017292c7" [label=""];
  "sha256:ad29b231fea3c2212c903c9d0a993e257f960b7b50d783335f06c658017292c7" -> "sha256:ca471010d7755fee49e210eb23908ba4c7668a158ce008d2863b792fd6f3a69d" [label=""];
}

