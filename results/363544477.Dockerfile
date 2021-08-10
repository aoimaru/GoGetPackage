[app/sources/363544477.Dockerfile]
digraph {
  "sha256:3b6bdfbb87eb3dfdcd28d7f23e75b08b025683d70767233c2fe0dc92efa34f49" [label="docker-image://docker.io/library/alpine:3.8@sha256:2bb501e6173d9d006e56de5bce2720eb06396803300fe1687b58a7ff32bf4c14" shape="ellipse"];
  "sha256:389710b474c93d67ee2c151dabfb44168b2bc878b4dddd24a26f1bd103fea849" [label="docker-image://docker.io/library/golang:1.11-alpine3.8@sha256:6f840f22327fcb912704687e3e87fc7ef8fb2af148b8581b301f5a9a7f303727" shape="ellipse"];
  "sha256:3369e965e24c4fb5871d50869a6956dd96a24f23468eec3b1227422dea9ff26d" [label="copy{src=/usr/local/go, dest=/usr/local/}" shape="note"];
  "sha256:52dab1aed9ec4c9a0552c0d290ff7e6b3fe806963e815dc9f46f0b91b56c5716" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:cfcb94e47a6af2af02555d3601cedb6bbb85a752c00349133b5dfb1f18c066a5" [label="mkdir{path=/home/work}" shape="note"];
  "sha256:4817e865d29e42c8d0e2c2d5641eadbba12f5586dd4e4796275027d838f1e5f3" [label="/bin/sh -c apk add --no-cache libffi libzmq" shape="box"];
  "sha256:f28fab43e197975572fbd7d22efc36961e44a4ae6d115507313a486b64a40005" [label="local://context" shape="ellipse"];
  "sha256:a257bcbd01ae2e9b872283abe52bf979dfa3446c199c9ac2b5f5968adaa3d9cc" [label="copy{src=/policy.yml, dest=/etc/backend.ai/jail/policy.yml}" shape="note"];
  "sha256:b5dee691f468a7316393a016c5229baeb125e40b1b4316f30f05fc5a1641f796" [label="sha256:b5dee691f468a7316393a016c5229baeb125e40b1b4316f30f05fc5a1641f796" shape="plaintext"];
  "sha256:3b6bdfbb87eb3dfdcd28d7f23e75b08b025683d70767233c2fe0dc92efa34f49" -> "sha256:3369e965e24c4fb5871d50869a6956dd96a24f23468eec3b1227422dea9ff26d" [label=""];
  "sha256:389710b474c93d67ee2c151dabfb44168b2bc878b4dddd24a26f1bd103fea849" -> "sha256:3369e965e24c4fb5871d50869a6956dd96a24f23468eec3b1227422dea9ff26d" [label=""];
  "sha256:3369e965e24c4fb5871d50869a6956dd96a24f23468eec3b1227422dea9ff26d" -> "sha256:52dab1aed9ec4c9a0552c0d290ff7e6b3fe806963e815dc9f46f0b91b56c5716" [label=""];
  "sha256:52dab1aed9ec4c9a0552c0d290ff7e6b3fe806963e815dc9f46f0b91b56c5716" -> "sha256:cfcb94e47a6af2af02555d3601cedb6bbb85a752c00349133b5dfb1f18c066a5" [label=""];
  "sha256:cfcb94e47a6af2af02555d3601cedb6bbb85a752c00349133b5dfb1f18c066a5" -> "sha256:4817e865d29e42c8d0e2c2d5641eadbba12f5586dd4e4796275027d838f1e5f3" [label=""];
  "sha256:4817e865d29e42c8d0e2c2d5641eadbba12f5586dd4e4796275027d838f1e5f3" -> "sha256:a257bcbd01ae2e9b872283abe52bf979dfa3446c199c9ac2b5f5968adaa3d9cc" [label=""];
  "sha256:f28fab43e197975572fbd7d22efc36961e44a4ae6d115507313a486b64a40005" -> "sha256:a257bcbd01ae2e9b872283abe52bf979dfa3446c199c9ac2b5f5968adaa3d9cc" [label=""];
  "sha256:a257bcbd01ae2e9b872283abe52bf979dfa3446c199c9ac2b5f5968adaa3d9cc" -> "sha256:b5dee691f468a7316393a016c5229baeb125e40b1b4316f30f05fc5a1641f796" [label=""];
}

