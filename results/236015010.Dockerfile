[app/sources/236015010.Dockerfile]
digraph {
  "sha256:e600cddac48b6d522169a25974649137dabd9dfcdce2a406c76c5543dc90211a" [label="local://context" shape="ellipse"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:2149929161573363c5ae11c0b71ef5f28b2bcd7c1545e4fbcf71d7a94ea607c6" [label="copy{src=/server, dest=/server}" shape="note"];
  "sha256:66b119fd90594847e32f09690406467ad53bb37b8a0d0ba47b4341355329bc3d" [label="sha256:66b119fd90594847e32f09690406467ad53bb37b8a0d0ba47b4341355329bc3d" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:2149929161573363c5ae11c0b71ef5f28b2bcd7c1545e4fbcf71d7a94ea607c6" [label=""];
  "sha256:e600cddac48b6d522169a25974649137dabd9dfcdce2a406c76c5543dc90211a" -> "sha256:2149929161573363c5ae11c0b71ef5f28b2bcd7c1545e4fbcf71d7a94ea607c6" [label=""];
  "sha256:2149929161573363c5ae11c0b71ef5f28b2bcd7c1545e4fbcf71d7a94ea607c6" -> "sha256:66b119fd90594847e32f09690406467ad53bb37b8a0d0ba47b4341355329bc3d" [label=""];
}

