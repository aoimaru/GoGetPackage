[app/sources/252792573.Dockerfile]
digraph {
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:99558ee6d6be8fda765b8f2eba564ded61c5e7960e47f3c410920020926f8e9d" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:6a556e3cc4f101b530f91f8ccd340cd8f269a3dfd2dc4de329cda1fa6eedb0be" [label="local://context" shape="ellipse"];
  "sha256:0765a5c2691d82a934feedb3da33e10212f947341b15fb7e097253421ed0b22c" [label="copy{src=/index.js, dest=/usr/src/app}" shape="note"];
  "sha256:755066c0d3f5d6420381972a1b7604b2ecf6ce3744f3a872a266c5ec9a857e72" [label="sha256:755066c0d3f5d6420381972a1b7604b2ecf6ce3744f3a872a266c5ec9a857e72" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:99558ee6d6be8fda765b8f2eba564ded61c5e7960e47f3c410920020926f8e9d" [label=""];
  "sha256:99558ee6d6be8fda765b8f2eba564ded61c5e7960e47f3c410920020926f8e9d" -> "sha256:0765a5c2691d82a934feedb3da33e10212f947341b15fb7e097253421ed0b22c" [label=""];
  "sha256:6a556e3cc4f101b530f91f8ccd340cd8f269a3dfd2dc4de329cda1fa6eedb0be" -> "sha256:0765a5c2691d82a934feedb3da33e10212f947341b15fb7e097253421ed0b22c" [label=""];
  "sha256:0765a5c2691d82a934feedb3da33e10212f947341b15fb7e097253421ed0b22c" -> "sha256:755066c0d3f5d6420381972a1b7604b2ecf6ce3744f3a872a266c5ec9a857e72" [label=""];
}

