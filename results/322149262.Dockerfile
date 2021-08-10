[app/sources/322149262.Dockerfile]
digraph {
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" [label="docker-image://docker.io/library/openjdk:8-jdk-alpine" shape="ellipse"];
  "sha256:809586f3fc9fa49c95257d5e3d99f084388a03a352f3a1e1d8dd232ef76a7596" [label="local://context" shape="ellipse"];
  "sha256:7a59810c81b3f33036575e683ddb67f59729335b4129ee2258bd15fbd5bc1a47" [label="copy{src=/lion-turbine-server.jar, dest=/app.jar}" shape="note"];
  "sha256:711d5c6ce92d936229c480129ae684004b37381d7c4417bdc6671c8864afed01" [label="sha256:711d5c6ce92d936229c480129ae684004b37381d7c4417bdc6671c8864afed01" shape="plaintext"];
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" -> "sha256:7a59810c81b3f33036575e683ddb67f59729335b4129ee2258bd15fbd5bc1a47" [label=""];
  "sha256:809586f3fc9fa49c95257d5e3d99f084388a03a352f3a1e1d8dd232ef76a7596" -> "sha256:7a59810c81b3f33036575e683ddb67f59729335b4129ee2258bd15fbd5bc1a47" [label=""];
  "sha256:7a59810c81b3f33036575e683ddb67f59729335b4129ee2258bd15fbd5bc1a47" -> "sha256:711d5c6ce92d936229c480129ae684004b37381d7c4417bdc6671c8864afed01" [label=""];
}

