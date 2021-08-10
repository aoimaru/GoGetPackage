[app/sources/329388302.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:532a6ecb7d74676263adbea701ee9552d3e2e4cc7b4bdb4bfcaf46f6831d88d7" [label="/bin/sh -c apk add --no-cache ca-certificates   && update-ca-certificates   && wget https://get.aquasec.com/microscanner -O /microscanner   && echo \"8e01415d364a4173c9917832c2e64485d93ac712a18611ed5099b75b6f44e3a5  /microscanner\" | sha256sum -c -   && chmod +x /microscanner   && /microscanner ${token}" shape="box"];
  "sha256:39fbc5e5c0efb043a3779cc49a1e3647ba993635724d973d6af4a4240765d22b" [label="sha256:39fbc5e5c0efb043a3779cc49a1e3647ba993635724d973d6af4a4240765d22b" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:532a6ecb7d74676263adbea701ee9552d3e2e4cc7b4bdb4bfcaf46f6831d88d7" [label=""];
  "sha256:532a6ecb7d74676263adbea701ee9552d3e2e4cc7b4bdb4bfcaf46f6831d88d7" -> "sha256:39fbc5e5c0efb043a3779cc49a1e3647ba993635724d973d6af4a4240765d22b" [label=""];
}

