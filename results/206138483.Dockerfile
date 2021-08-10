[app/sources/206138483.Dockerfile]
digraph {
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" [label="docker-image://docker.io/library/openjdk:8-jdk-alpine" shape="ellipse"];
  "sha256:50c9ac0ccb36ec4cc63c10499471545ef0b98fb24f8db871dbc019d7d993e9fe" [label="docker-image://docker.io/library/maven:3.3.3-jdk-8" shape="ellipse"];
  "sha256:6e83167c82801226f7e7ea5d5a6e8a45de7af38715c764b64fe12551e51eec7f" [label="mkdir{path=/work}" shape="note"];
  "sha256:83ffb5bbe22f35d6fccdfd32fd4c08dcb8aebf1377967271e8bab8961d914f74" [label="local://context" shape="ellipse"];
  "sha256:e64e9d3b4277f0ba48b7bb6cea3142ac9d6849f08dbdb64b7b85b2e97376e3df" [label="copy{src=/pom.xml, dest=/work/}" shape="note"];
  "sha256:9b7a67b2aa66fbf18a9ccefeb4a281c9aec45419d8282d3f0339cc2691d6e857" [label="/bin/sh -c mvn dependency:go-offline" shape="box"];
  "sha256:85e29b7ddf2588599707dd9d6d72ccd0bd2ba9fb00636b3f9b08619a5c6da8d8" [label="copy{src=/, dest=/work}" shape="note"];
  "sha256:64cabb336e3269dd64462ad475807094585057ba9f0da844b3375288a8a408a4" [label="/bin/sh -c mvn -q -Prelease package" shape="box"];
  "sha256:c0fb776811156f137379c8c9669f830ceed22ac0bad6cbaf633c2f20057c9fbf" [label="copy{src=/work/target/call-for-paper.jar, dest=/app.jar}" shape="note"];
  "sha256:b09171e005015900864bff0803fab8c3b42421d3108837d17cb1a0967f0a2dab" [label="sha256:b09171e005015900864bff0803fab8c3b42421d3108837d17cb1a0967f0a2dab" shape="plaintext"];
  "sha256:50c9ac0ccb36ec4cc63c10499471545ef0b98fb24f8db871dbc019d7d993e9fe" -> "sha256:6e83167c82801226f7e7ea5d5a6e8a45de7af38715c764b64fe12551e51eec7f" [label=""];
  "sha256:6e83167c82801226f7e7ea5d5a6e8a45de7af38715c764b64fe12551e51eec7f" -> "sha256:e64e9d3b4277f0ba48b7bb6cea3142ac9d6849f08dbdb64b7b85b2e97376e3df" [label=""];
  "sha256:83ffb5bbe22f35d6fccdfd32fd4c08dcb8aebf1377967271e8bab8961d914f74" -> "sha256:e64e9d3b4277f0ba48b7bb6cea3142ac9d6849f08dbdb64b7b85b2e97376e3df" [label=""];
  "sha256:e64e9d3b4277f0ba48b7bb6cea3142ac9d6849f08dbdb64b7b85b2e97376e3df" -> "sha256:9b7a67b2aa66fbf18a9ccefeb4a281c9aec45419d8282d3f0339cc2691d6e857" [label=""];
  "sha256:9b7a67b2aa66fbf18a9ccefeb4a281c9aec45419d8282d3f0339cc2691d6e857" -> "sha256:85e29b7ddf2588599707dd9d6d72ccd0bd2ba9fb00636b3f9b08619a5c6da8d8" [label=""];
  "sha256:83ffb5bbe22f35d6fccdfd32fd4c08dcb8aebf1377967271e8bab8961d914f74" -> "sha256:85e29b7ddf2588599707dd9d6d72ccd0bd2ba9fb00636b3f9b08619a5c6da8d8" [label=""];
  "sha256:85e29b7ddf2588599707dd9d6d72ccd0bd2ba9fb00636b3f9b08619a5c6da8d8" -> "sha256:64cabb336e3269dd64462ad475807094585057ba9f0da844b3375288a8a408a4" [label=""];
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" -> "sha256:c0fb776811156f137379c8c9669f830ceed22ac0bad6cbaf633c2f20057c9fbf" [label=""];
  "sha256:64cabb336e3269dd64462ad475807094585057ba9f0da844b3375288a8a408a4" -> "sha256:c0fb776811156f137379c8c9669f830ceed22ac0bad6cbaf633c2f20057c9fbf" [label=""];
  "sha256:c0fb776811156f137379c8c9669f830ceed22ac0bad6cbaf633c2f20057c9fbf" -> "sha256:b09171e005015900864bff0803fab8c3b42421d3108837d17cb1a0967f0a2dab" [label=""];
}

