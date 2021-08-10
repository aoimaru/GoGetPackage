[app/sources/468147016.Dockerfile]
digraph {
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" [label="docker-image://docker.io/library/openjdk:8-jdk-alpine" shape="ellipse"];
  "sha256:7eba22773f5390403c5cc52d7a4d8dac592766517e2141073c2e428ce5e8a5cb" [label="local://context" shape="ellipse"];
  "sha256:c113ba6e28e607d4ee89be9155660e23ce43049d5da2d0287ef315ca743302eb" [label="copy{src=/, dest=/app.jar}" shape="note"];
  "sha256:ce87fc77e418badde766244cba33842bdaea3257ccedde41321e24cea120c919" [label="sha256:ce87fc77e418badde766244cba33842bdaea3257ccedde41321e24cea120c919" shape="plaintext"];
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" -> "sha256:c113ba6e28e607d4ee89be9155660e23ce43049d5da2d0287ef315ca743302eb" [label=""];
  "sha256:7eba22773f5390403c5cc52d7a4d8dac592766517e2141073c2e428ce5e8a5cb" -> "sha256:c113ba6e28e607d4ee89be9155660e23ce43049d5da2d0287ef315ca743302eb" [label=""];
  "sha256:c113ba6e28e607d4ee89be9155660e23ce43049d5da2d0287ef315ca743302eb" -> "sha256:ce87fc77e418badde766244cba33842bdaea3257ccedde41321e24cea120c919" [label=""];
}

