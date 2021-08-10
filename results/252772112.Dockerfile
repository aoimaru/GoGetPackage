[app/sources/252772112.Dockerfile]
digraph {
  "sha256:ed293eaca594afaf816421c6a98e94062986b74e29544343c4fdbf2f7462d786" [label="docker-image://docker.io/aurorasystem/base-server:latest" shape="ellipse"];
  "sha256:8d315e00ec0c23487ea5c1fc6439379784f39585b7b3d0b6fa3b9f2a6355e734" [label="/bin/sh -c useradd -ms /bin/bash deploy" shape="box"];
  "sha256:223b7ddd6ee946d7ad05908e6f3fc350a99d828ba8250f58b09f5f5c6619eac2" [label="/bin/sh -c mkdir -p /home/deploy/app" shape="box"];
  "sha256:b671e4169b35d943f33287a94b8773ef3762353be91f52bb7c4a9e73a72546b3" [label="mkdir{path=/home/deploy/app}" shape="note"];
  "sha256:1176d2383d83dacfe877d41145853aa08717c92ceccc06d032c292bc2d4d7337" [label="sha256:1176d2383d83dacfe877d41145853aa08717c92ceccc06d032c292bc2d4d7337" shape="plaintext"];
  "sha256:ed293eaca594afaf816421c6a98e94062986b74e29544343c4fdbf2f7462d786" -> "sha256:8d315e00ec0c23487ea5c1fc6439379784f39585b7b3d0b6fa3b9f2a6355e734" [label=""];
  "sha256:8d315e00ec0c23487ea5c1fc6439379784f39585b7b3d0b6fa3b9f2a6355e734" -> "sha256:223b7ddd6ee946d7ad05908e6f3fc350a99d828ba8250f58b09f5f5c6619eac2" [label=""];
  "sha256:223b7ddd6ee946d7ad05908e6f3fc350a99d828ba8250f58b09f5f5c6619eac2" -> "sha256:b671e4169b35d943f33287a94b8773ef3762353be91f52bb7c4a9e73a72546b3" [label=""];
  "sha256:b671e4169b35d943f33287a94b8773ef3762353be91f52bb7c4a9e73a72546b3" -> "sha256:1176d2383d83dacfe877d41145853aa08717c92ceccc06d032c292bc2d4d7337" [label=""];
}

