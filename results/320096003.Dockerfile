[app/sources/320096003.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:6cfeb49bbb24938e973dec78ab021bc4d2d15be9cb2b0f55865b3a4566033157" [label="/bin/sh -c apk add --no-cache --update curl bash &&     curl https://i.jpillora.com/cloud-torrent! | bash &&     mkdir downloads && chmod 777 downloads" shape="box"];
  "sha256:377947c6a4c18792a3278caec25e21b15f718bd82dfee3043fc4319ec72671c8" [label="sha256:377947c6a4c18792a3278caec25e21b15f718bd82dfee3043fc4319ec72671c8" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:6cfeb49bbb24938e973dec78ab021bc4d2d15be9cb2b0f55865b3a4566033157" [label=""];
  "sha256:6cfeb49bbb24938e973dec78ab021bc4d2d15be9cb2b0f55865b3a4566033157" -> "sha256:377947c6a4c18792a3278caec25e21b15f718bd82dfee3043fc4319ec72671c8" [label=""];
}

