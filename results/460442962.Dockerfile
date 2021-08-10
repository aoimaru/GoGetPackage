[app/sources/460442962.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:7156115684219992d715d910caa1a89fea8becfe16e4ad29bad6cb66a15151fa" [label="/bin/sh -c apk add --no-cache ca-certificates" shape="box"];
  "sha256:04a0df67bc931892b8e44bf1fbde9fca76a948e73293f543af9987b2b79a9499" [label="docker-image://docker.io/library/golang:1.10-alpine" shape="ellipse"];
  "sha256:d746d81335a62c185e03c2a2a811b18787f5e359261d957f3e9cbd5487c07fef" [label="/bin/sh -c apk add --no-cache make gcc musl-dev linux-headers" shape="box"];
  "sha256:543b36caaf93b4b55d5c8d12bc96c25e14942916e6ec24653a5f8bb0b3ee8291" [label="local://context" shape="ellipse"];
  "sha256:90fd8040b575739fbb755a5beb262916e3262ab1d5f45d0aa66d71eee2c31b59" [label="copy{src=/, dest=/go-ethereum}" shape="note"];
  "sha256:c7d83dd458a47900b79329a979b85010bd6357f87328f88e673a7e54a2d57bfe" [label="/bin/sh -c cd /go-ethereum && make geth" shape="box"];
  "sha256:69aba4ee9f26632434c4e3ff65f0afdfde052f64995958188b373ebe2a10e67c" [label="copy{src=/go-ethereum/build/bin/geth, dest=/usr/local/bin/}" shape="note"];
  "sha256:e57e736854b2fee88c89ca406449aa1c8cf7621ba7598a9e06d8107fed4ba267" [label="sha256:e57e736854b2fee88c89ca406449aa1c8cf7621ba7598a9e06d8107fed4ba267" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:7156115684219992d715d910caa1a89fea8becfe16e4ad29bad6cb66a15151fa" [label=""];
  "sha256:04a0df67bc931892b8e44bf1fbde9fca76a948e73293f543af9987b2b79a9499" -> "sha256:d746d81335a62c185e03c2a2a811b18787f5e359261d957f3e9cbd5487c07fef" [label=""];
  "sha256:d746d81335a62c185e03c2a2a811b18787f5e359261d957f3e9cbd5487c07fef" -> "sha256:90fd8040b575739fbb755a5beb262916e3262ab1d5f45d0aa66d71eee2c31b59" [label=""];
  "sha256:543b36caaf93b4b55d5c8d12bc96c25e14942916e6ec24653a5f8bb0b3ee8291" -> "sha256:90fd8040b575739fbb755a5beb262916e3262ab1d5f45d0aa66d71eee2c31b59" [label=""];
  "sha256:90fd8040b575739fbb755a5beb262916e3262ab1d5f45d0aa66d71eee2c31b59" -> "sha256:c7d83dd458a47900b79329a979b85010bd6357f87328f88e673a7e54a2d57bfe" [label=""];
  "sha256:7156115684219992d715d910caa1a89fea8becfe16e4ad29bad6cb66a15151fa" -> "sha256:69aba4ee9f26632434c4e3ff65f0afdfde052f64995958188b373ebe2a10e67c" [label=""];
  "sha256:c7d83dd458a47900b79329a979b85010bd6357f87328f88e673a7e54a2d57bfe" -> "sha256:69aba4ee9f26632434c4e3ff65f0afdfde052f64995958188b373ebe2a10e67c" [label=""];
  "sha256:69aba4ee9f26632434c4e3ff65f0afdfde052f64995958188b373ebe2a10e67c" -> "sha256:e57e736854b2fee88c89ca406449aa1c8cf7621ba7598a9e06d8107fed4ba267" [label=""];
}

