[app/sources/214837537.Dockerfile]
digraph {
  "sha256:0c27e0e076ebf88652b016bad0db1f296e29a085a749dbdf9aaaa83d670467ce" [label="docker-image://docker.io/library/debian:8" shape="ellipse"];
  "sha256:6cd69a03aa32fe91991f774bc19acb24ce6a22d3d7ee5036ea7b64f46045067c" [label="/bin/sh -c apt-get update &&   apt-get install -y --no-install-recommends   g++   qt5-default   qttools5-dev   qttools5-dev-tools   libqt5x11extras5-dev   make   cmake" shape="box"];
  "sha256:e795e4322406f21dca539a47b60dae7e27d532084c56b1bcab155a5c02f3a9ea" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:99be2e15234d457173d18d0dde8e84e26521a9080e308a44e1186bfa3bca37c4" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:d3739d08d3defdbe7a3b580475192ea27e13a42fe5b1c321fcb2b3448b55f940" [label="local://context" shape="ellipse"];
  "sha256:4628ad495d18df41b71ccd103e158b6a000a58694c9e36f8a2c204e3180ab9e8" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:4c53f16f3e78245026c81a711cb0cb5b8590710f339bdac28b8e94c89f1e2f38" [label="sha256:4c53f16f3e78245026c81a711cb0cb5b8590710f339bdac28b8e94c89f1e2f38" shape="plaintext"];
  "sha256:0c27e0e076ebf88652b016bad0db1f296e29a085a749dbdf9aaaa83d670467ce" -> "sha256:6cd69a03aa32fe91991f774bc19acb24ce6a22d3d7ee5036ea7b64f46045067c" [label=""];
  "sha256:6cd69a03aa32fe91991f774bc19acb24ce6a22d3d7ee5036ea7b64f46045067c" -> "sha256:e795e4322406f21dca539a47b60dae7e27d532084c56b1bcab155a5c02f3a9ea" [label=""];
  "sha256:e795e4322406f21dca539a47b60dae7e27d532084c56b1bcab155a5c02f3a9ea" -> "sha256:99be2e15234d457173d18d0dde8e84e26521a9080e308a44e1186bfa3bca37c4" [label=""];
  "sha256:99be2e15234d457173d18d0dde8e84e26521a9080e308a44e1186bfa3bca37c4" -> "sha256:4628ad495d18df41b71ccd103e158b6a000a58694c9e36f8a2c204e3180ab9e8" [label=""];
  "sha256:d3739d08d3defdbe7a3b580475192ea27e13a42fe5b1c321fcb2b3448b55f940" -> "sha256:4628ad495d18df41b71ccd103e158b6a000a58694c9e36f8a2c204e3180ab9e8" [label=""];
  "sha256:4628ad495d18df41b71ccd103e158b6a000a58694c9e36f8a2c204e3180ab9e8" -> "sha256:4c53f16f3e78245026c81a711cb0cb5b8590710f339bdac28b8e94c89f1e2f38" [label=""];
}

