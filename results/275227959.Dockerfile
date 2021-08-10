[app/sources/275227959.Dockerfile]
digraph {
  "sha256:d8ba3802d56dce30466947bad0843b5a9663ea405ec802d6df90984318c763a5" [label="docker-image://docker.io/keymetrics/pm2:latest-alpine" shape="ellipse"];
  "sha256:28b66d8efc77ba88a0bf0c104d2543a04b41eac013f72307761eb5dc8f345028" [label="mkdir{path=/app}" shape="note"];
  "sha256:7e6a68c1899fe683ebd7edc8e574c06ed9a29ac091b9e79edc89b3f8cc0299fb" [label="/bin/sh -c apk add   git &&   chmod 777 /app" shape="box"];
  "sha256:9ee94e41f4d0a1d91aa274f9dd302987c30cd1ff9c4020879ac00a96a8ce1db1" [label="/bin/sh -c git clone https://github.com/martindsouza/suez.git &&   cd suez &&   rm -rf config &&   npm install" shape="box"];
  "sha256:14212d25e773bcc144c7c25083e67101f128d3ee57fa4eb1704a1c3e2d914704" [label="sha256:14212d25e773bcc144c7c25083e67101f128d3ee57fa4eb1704a1c3e2d914704" shape="plaintext"];
  "sha256:d8ba3802d56dce30466947bad0843b5a9663ea405ec802d6df90984318c763a5" -> "sha256:28b66d8efc77ba88a0bf0c104d2543a04b41eac013f72307761eb5dc8f345028" [label=""];
  "sha256:28b66d8efc77ba88a0bf0c104d2543a04b41eac013f72307761eb5dc8f345028" -> "sha256:7e6a68c1899fe683ebd7edc8e574c06ed9a29ac091b9e79edc89b3f8cc0299fb" [label=""];
  "sha256:7e6a68c1899fe683ebd7edc8e574c06ed9a29ac091b9e79edc89b3f8cc0299fb" -> "sha256:9ee94e41f4d0a1d91aa274f9dd302987c30cd1ff9c4020879ac00a96a8ce1db1" [label=""];
  "sha256:9ee94e41f4d0a1d91aa274f9dd302987c30cd1ff9c4020879ac00a96a8ce1db1" -> "sha256:14212d25e773bcc144c7c25083e67101f128d3ee57fa4eb1704a1c3e2d914704" [label=""];
}

