[app/sources/326612980.Dockerfile]
digraph {
  "sha256:e4d3035b05641bbd9e5a9621a62e8eebb6ea1a9a7235e84c1215c20f26c23f4e" [label="docker-image://docker.io/arm32v7/debian:stretch-slim" shape="ellipse"];
  "sha256:0b670a41c999fe4aba4d23e404124a920ea0ec301e4290fb8f9df24b7d132b09" [label="/bin/sh -c apt-get update &&     apt-get install -y         build-essential         git         libcurl4-openssl-dev         libjansson-dev         libnl-3-dev         libnl-genl-3-dev         libssl-dev         debhelper" shape="box"];
  "sha256:5e7cd403b99efb2308b871e5b51a0836666801186115ae79eaf2ccb2fe602af9" [label="sha256:5e7cd403b99efb2308b871e5b51a0836666801186115ae79eaf2ccb2fe602af9" shape="plaintext"];
  "sha256:e4d3035b05641bbd9e5a9621a62e8eebb6ea1a9a7235e84c1215c20f26c23f4e" -> "sha256:0b670a41c999fe4aba4d23e404124a920ea0ec301e4290fb8f9df24b7d132b09" [label=""];
  "sha256:0b670a41c999fe4aba4d23e404124a920ea0ec301e4290fb8f9df24b7d132b09" -> "sha256:5e7cd403b99efb2308b871e5b51a0836666801186115ae79eaf2ccb2fe602af9" [label=""];
}

