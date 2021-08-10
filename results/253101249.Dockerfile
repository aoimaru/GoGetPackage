[app/sources/253101249.Dockerfile]
digraph {
  "sha256:4667316f3a52dc8a4d7fd898240f26a8adfa16866dbc599287d190368906b84e" [label="docker-image://docker.io/library/openjdk:8-jre" shape="ellipse"];
  "sha256:ce14ba2a0242d3a218ead595f03d4f9c72bf338aa990bfa761b2ea97d02d2af6" [label="/bin/sh -c ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone" shape="box"];
  "sha256:29806023321613bfb13ef60aa15c2d867c830f360e6c8ccea0b21699464700c1" [label="local://context" shape="ellipse"];
  "sha256:cd40d95cd16442d3c27cb8e361620bb822272f0fa80a2754987c6dbece862024" [label="copy{src=/*-exec.jar, dest=/app.jar}" shape="note"];
  "sha256:9f01784b7aea73f91dc9d33c4d6de0201458da3507201bde86f6e168ea1c5670" [label="/bin/sh -c sh -c 'touch /app.jar'" shape="box"];
  "sha256:6c8f0128a0e747ebaf7cb813db009896fad764409bafef3c5860f472a7fe0067" [label="sha256:6c8f0128a0e747ebaf7cb813db009896fad764409bafef3c5860f472a7fe0067" shape="plaintext"];
  "sha256:4667316f3a52dc8a4d7fd898240f26a8adfa16866dbc599287d190368906b84e" -> "sha256:ce14ba2a0242d3a218ead595f03d4f9c72bf338aa990bfa761b2ea97d02d2af6" [label=""];
  "sha256:ce14ba2a0242d3a218ead595f03d4f9c72bf338aa990bfa761b2ea97d02d2af6" -> "sha256:cd40d95cd16442d3c27cb8e361620bb822272f0fa80a2754987c6dbece862024" [label=""];
  "sha256:29806023321613bfb13ef60aa15c2d867c830f360e6c8ccea0b21699464700c1" -> "sha256:cd40d95cd16442d3c27cb8e361620bb822272f0fa80a2754987c6dbece862024" [label=""];
  "sha256:cd40d95cd16442d3c27cb8e361620bb822272f0fa80a2754987c6dbece862024" -> "sha256:9f01784b7aea73f91dc9d33c4d6de0201458da3507201bde86f6e168ea1c5670" [label=""];
  "sha256:9f01784b7aea73f91dc9d33c4d6de0201458da3507201bde86f6e168ea1c5670" -> "sha256:6c8f0128a0e747ebaf7cb813db009896fad764409bafef3c5860f472a7fe0067" [label=""];
}

