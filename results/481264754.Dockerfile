[app/sources/481264754.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:dc9a7bae60670e4cb60ce727a6a2845732f02a12519d79591e88390aae63d3e3" [label="/bin/sh -c apk --update add postgresql && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:799e0d699e0203f6a5cb2c4a56a464de4c31cb5c9092f4addc2448a4d490f01a" [label="sha256:799e0d699e0203f6a5cb2c4a56a464de4c31cb5c9092f4addc2448a4d490f01a" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:dc9a7bae60670e4cb60ce727a6a2845732f02a12519d79591e88390aae63d3e3" [label=""];
  "sha256:dc9a7bae60670e4cb60ce727a6a2845732f02a12519d79591e88390aae63d3e3" -> "sha256:799e0d699e0203f6a5cb2c4a56a464de4c31cb5c9092f4addc2448a4d490f01a" [label=""];
}

