[app/sources/143395700.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:90bb026594f4c58a577655098f1845b2f45979d3b1f1a333f1919eb28f48b097" [label="mkdir{path=/root}" shape="note"];
  "sha256:54d51ee5898679a69dbcf80eeaec2d66ed01f47dda274377c5e747fbd5ca1fbb" [label="/bin/sh -c curl -sL https://rpm.nodesource.com/setup_11.x | bash -" shape="box"];
  "sha256:674f6cc47ec7c84cb6dd3eee72417ec793c50606f0eab27ebf3a0eaec2873dd3" [label="/bin/sh -c yum install -y nodejs" shape="box"];
  "sha256:5e3cb0d1e70d7484979d55eb12c456b6adc27b171e4e2bbcf8d2e348b6462953" [label="/bin/sh -c yum install -y ImageMagick" shape="box"];
  "sha256:948c3ff5c36a44cbf9d639a7a2647fc41d71b5af277f6c28459e89048f8b7cfd" [label="/bin/sh -c yum install -y git" shape="box"];
  "sha256:57218f538f5713a4cb400a916fa0e46b3b6e32af3949b77c1aecb84285ad78b4" [label="/bin/sh -c git clone https://github.com/Hanul/UPPERCASE.git" shape="box"];
  "sha256:3caedea604522fa1db5ce4427f0f943072bba50fdcd107c02375c5457decb79b" [label="sha256:3caedea604522fa1db5ce4427f0f943072bba50fdcd107c02375c5457decb79b" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:90bb026594f4c58a577655098f1845b2f45979d3b1f1a333f1919eb28f48b097" [label=""];
  "sha256:90bb026594f4c58a577655098f1845b2f45979d3b1f1a333f1919eb28f48b097" -> "sha256:54d51ee5898679a69dbcf80eeaec2d66ed01f47dda274377c5e747fbd5ca1fbb" [label=""];
  "sha256:54d51ee5898679a69dbcf80eeaec2d66ed01f47dda274377c5e747fbd5ca1fbb" -> "sha256:674f6cc47ec7c84cb6dd3eee72417ec793c50606f0eab27ebf3a0eaec2873dd3" [label=""];
  "sha256:674f6cc47ec7c84cb6dd3eee72417ec793c50606f0eab27ebf3a0eaec2873dd3" -> "sha256:5e3cb0d1e70d7484979d55eb12c456b6adc27b171e4e2bbcf8d2e348b6462953" [label=""];
  "sha256:5e3cb0d1e70d7484979d55eb12c456b6adc27b171e4e2bbcf8d2e348b6462953" -> "sha256:948c3ff5c36a44cbf9d639a7a2647fc41d71b5af277f6c28459e89048f8b7cfd" [label=""];
  "sha256:948c3ff5c36a44cbf9d639a7a2647fc41d71b5af277f6c28459e89048f8b7cfd" -> "sha256:57218f538f5713a4cb400a916fa0e46b3b6e32af3949b77c1aecb84285ad78b4" [label=""];
  "sha256:57218f538f5713a4cb400a916fa0e46b3b6e32af3949b77c1aecb84285ad78b4" -> "sha256:3caedea604522fa1db5ce4427f0f943072bba50fdcd107c02375c5457decb79b" [label=""];
}

