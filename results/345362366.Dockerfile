[app/sources/345362366.Dockerfile]
digraph {
  "sha256:7403d74da735db30ab0a0af11c48a862aefa3e399e9588e7227b9c0d64843106" [label="docker-image://docker.io/balenalib/aarch64-debian:sid-build" shape="ellipse"];
  "sha256:b18fd05f8922b01515e57d46396224fef4660e4df37d725a9bf7f1ac026391ef" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:55d8c314422d7b25a9207f400d4638dc6788cd36a010b36a13e6d18e8c934849" [label="sha256:55d8c314422d7b25a9207f400d4638dc6788cd36a010b36a13e6d18e8c934849" shape="plaintext"];
  "sha256:7403d74da735db30ab0a0af11c48a862aefa3e399e9588e7227b9c0d64843106" -> "sha256:b18fd05f8922b01515e57d46396224fef4660e4df37d725a9bf7f1ac026391ef" [label=""];
  "sha256:b18fd05f8922b01515e57d46396224fef4660e4df37d725a9bf7f1ac026391ef" -> "sha256:55d8c314422d7b25a9207f400d4638dc6788cd36a010b36a13e6d18e8c934849" [label=""];
}

