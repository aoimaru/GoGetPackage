[app/sources/158445515.Dockerfile]
digraph {
  "sha256:97877f0228b4d37f4437431b5a80928cceebec0528ad95cf8807084f5a0d3e95" [label="docker-image://docker.io/library/node:6.9" shape="ellipse"];
  "sha256:a9503fe292121624c467ce812cc5332da15897065fe8172a89553b048971c1a0" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:fe5a87a2c74f92fa23ae4676b736d35bc09f8b107f6243e5a8b4285af579e2a7" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:6b80b7aa2e61c05912f16a42bd9d7adb22761a90daa70a4ccc5273f3b684148b" [label="local://context" shape="ellipse"];
  "sha256:9e5307faf87e9ba0166fe32fe7a5d6bbcc71762ef355e28140c0a8f56bd4d67d" [label="copy{src=/package.json, dest=/usr/src/app/}" shape="note"];
  "sha256:b463491d2775b07ae88cc3fcf1ac3247e3ff337e92e06022cb2518bd4de81638" [label="/bin/sh -c npm install" shape="box"];
  "sha256:fa58862137a7b4049c06d51e2fe87fd3c32adf54f1e66c15bc781f9aa2ba14b8" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:dd8416b62395142220310b48a2d82c7328a26b0ac96c565f89edba8a8d9e24df" [label="sha256:dd8416b62395142220310b48a2d82c7328a26b0ac96c565f89edba8a8d9e24df" shape="plaintext"];
  "sha256:97877f0228b4d37f4437431b5a80928cceebec0528ad95cf8807084f5a0d3e95" -> "sha256:a9503fe292121624c467ce812cc5332da15897065fe8172a89553b048971c1a0" [label=""];
  "sha256:a9503fe292121624c467ce812cc5332da15897065fe8172a89553b048971c1a0" -> "sha256:fe5a87a2c74f92fa23ae4676b736d35bc09f8b107f6243e5a8b4285af579e2a7" [label=""];
  "sha256:fe5a87a2c74f92fa23ae4676b736d35bc09f8b107f6243e5a8b4285af579e2a7" -> "sha256:9e5307faf87e9ba0166fe32fe7a5d6bbcc71762ef355e28140c0a8f56bd4d67d" [label=""];
  "sha256:6b80b7aa2e61c05912f16a42bd9d7adb22761a90daa70a4ccc5273f3b684148b" -> "sha256:9e5307faf87e9ba0166fe32fe7a5d6bbcc71762ef355e28140c0a8f56bd4d67d" [label=""];
  "sha256:9e5307faf87e9ba0166fe32fe7a5d6bbcc71762ef355e28140c0a8f56bd4d67d" -> "sha256:b463491d2775b07ae88cc3fcf1ac3247e3ff337e92e06022cb2518bd4de81638" [label=""];
  "sha256:b463491d2775b07ae88cc3fcf1ac3247e3ff337e92e06022cb2518bd4de81638" -> "sha256:fa58862137a7b4049c06d51e2fe87fd3c32adf54f1e66c15bc781f9aa2ba14b8" [label=""];
  "sha256:6b80b7aa2e61c05912f16a42bd9d7adb22761a90daa70a4ccc5273f3b684148b" -> "sha256:fa58862137a7b4049c06d51e2fe87fd3c32adf54f1e66c15bc781f9aa2ba14b8" [label=""];
  "sha256:fa58862137a7b4049c06d51e2fe87fd3c32adf54f1e66c15bc781f9aa2ba14b8" -> "sha256:dd8416b62395142220310b48a2d82c7328a26b0ac96c565f89edba8a8d9e24df" [label=""];
}

