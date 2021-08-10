[app/sources/241387254.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:1a1f4e5c337d4768fc0506b1a49d520e0dac27f6b7e20a291bab388d0e741d63" [label="/bin/sh -c apk add --no-cache     nmap     nmap-ncat     nmap-nping     nmap-nselibs     nmap-scripts" shape="box"];
  "sha256:6173db4dc3eb87a8512ee3405b1e748536b0e3fb73de6207939ec96a87280fe2" [label="sha256:6173db4dc3eb87a8512ee3405b1e748536b0e3fb73de6207939ec96a87280fe2" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:1a1f4e5c337d4768fc0506b1a49d520e0dac27f6b7e20a291bab388d0e741d63" [label=""];
  "sha256:1a1f4e5c337d4768fc0506b1a49d520e0dac27f6b7e20a291bab388d0e741d63" -> "sha256:6173db4dc3eb87a8512ee3405b1e748536b0e3fb73de6207939ec96a87280fe2" [label=""];
}

