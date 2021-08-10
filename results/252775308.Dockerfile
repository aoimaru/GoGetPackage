[app/sources/252775308.Dockerfile]
digraph {
  "sha256:2ee7c4c8004b95a415a9a12575d17ea416094fbce4d800246bff336a54890ed3" [label="docker-image://docker.io/beevelop/nodejs-python:latest" shape="ellipse"];
  "sha256:616557e241bcf239e8a6d4e6378d42c6c315161e3ebea94cdd6dc80e595cf726" [label="/bin/sh -c npm i --unsafe-perm -g node-red@${NODERED_VERSION}" shape="box"];
  "sha256:eddf8e92c88a5c839066bf48b209b8bafaf471ca6d1e3c2d847ca5d37368a9db" [label="sha256:eddf8e92c88a5c839066bf48b209b8bafaf471ca6d1e3c2d847ca5d37368a9db" shape="plaintext"];
  "sha256:2ee7c4c8004b95a415a9a12575d17ea416094fbce4d800246bff336a54890ed3" -> "sha256:616557e241bcf239e8a6d4e6378d42c6c315161e3ebea94cdd6dc80e595cf726" [label=""];
  "sha256:616557e241bcf239e8a6d4e6378d42c6c315161e3ebea94cdd6dc80e595cf726" -> "sha256:eddf8e92c88a5c839066bf48b209b8bafaf471ca6d1e3c2d847ca5d37368a9db" [label=""];
}

