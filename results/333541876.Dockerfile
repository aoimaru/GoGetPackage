[app/sources/333541876.Dockerfile]
digraph {
  "sha256:d5efc2ca93a6e2ae46beaf0578495155a7ec026b3d9f227979a5a98373de176b" [label="docker-image://docker.io/lambdalisue/neovim-themis:latest" shape="ellipse"];
  "sha256:bc9c4b1254fcfcfe379b918b1965a8656832d9db59dd83f75fcde64f8332770e" [label="/bin/sh -c apk add --no-cache --virtual build-deps git  && apk add --no-cache python3  && apk del build-deps" shape="box"];
  "sha256:513063d1312e26111b6ff5f98fbb2a6e4008c07b79a448329f318b17f035d200" [label="sha256:513063d1312e26111b6ff5f98fbb2a6e4008c07b79a448329f318b17f035d200" shape="plaintext"];
  "sha256:d5efc2ca93a6e2ae46beaf0578495155a7ec026b3d9f227979a5a98373de176b" -> "sha256:bc9c4b1254fcfcfe379b918b1965a8656832d9db59dd83f75fcde64f8332770e" [label=""];
  "sha256:bc9c4b1254fcfcfe379b918b1965a8656832d9db59dd83f75fcde64f8332770e" -> "sha256:513063d1312e26111b6ff5f98fbb2a6e4008c07b79a448329f318b17f035d200" [label=""];
}

