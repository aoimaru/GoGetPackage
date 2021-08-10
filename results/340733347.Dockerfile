[app/sources/340733347.Dockerfile]
digraph {
  "sha256:32e566e801e0d21c57f1695747d6d75d5d75a5a2e000b01fc0740d65537df9ec" [label="docker-image://docker.io/gliderlabs/alpine:3.6" shape="ellipse"];
  "sha256:1fc70a2dabe20c186543b8cf8581893ed8ea82d2925cf019b504cfb86dec17a0" [label="/bin/sh -c apk-install mysql-client" shape="box"];
  "sha256:77b9fcb827d1510e1df6defbf892982ecd0fd4f02c78d2e0df4a4318eb838866" [label="sha256:77b9fcb827d1510e1df6defbf892982ecd0fd4f02c78d2e0df4a4318eb838866" shape="plaintext"];
  "sha256:32e566e801e0d21c57f1695747d6d75d5d75a5a2e000b01fc0740d65537df9ec" -> "sha256:1fc70a2dabe20c186543b8cf8581893ed8ea82d2925cf019b504cfb86dec17a0" [label=""];
  "sha256:1fc70a2dabe20c186543b8cf8581893ed8ea82d2925cf019b504cfb86dec17a0" -> "sha256:77b9fcb827d1510e1df6defbf892982ecd0fd4f02c78d2e0df4a4318eb838866" [label=""];
}

