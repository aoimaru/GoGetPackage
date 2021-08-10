[app/sources/194597080.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:18fc0ba7f9f06a8232f75f5f28d7a80119cabc0705cf65acb110895a27d6c574" [label="/bin/sh -c apk update &&     apk add dnsmasq" shape="box"];
  "sha256:f245bd3858aef00cc2b3d92176bfeed1e85837c3f990cbc29aec77838ae762a3" [label="sha256:f245bd3858aef00cc2b3d92176bfeed1e85837c3f990cbc29aec77838ae762a3" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:18fc0ba7f9f06a8232f75f5f28d7a80119cabc0705cf65acb110895a27d6c574" [label=""];
  "sha256:18fc0ba7f9f06a8232f75f5f28d7a80119cabc0705cf65acb110895a27d6c574" -> "sha256:f245bd3858aef00cc2b3d92176bfeed1e85837c3f990cbc29aec77838ae762a3" [label=""];
}

