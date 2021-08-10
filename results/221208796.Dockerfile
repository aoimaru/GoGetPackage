[app/sources/221208796.Dockerfile]
digraph {
  "sha256:b34f92fe562334042adedb53e8e02a3cf4f7d96e149599f6dd17384757fb6b9b" [label="local://context" shape="ellipse"];
  "sha256:7396b0695b864ccb41579cb6268a3281271f1b59ed6971402b8c38c881efa83e" [label="docker-image://docker.io/library/node:8-alpine" shape="ellipse"];
  "sha256:ce55479d716c422fa42f6ec8b3ba122340caf1ea808284b7848d3152de056ec2" [label="/bin/sh -c apk add --no-cache tini" shape="box"];
  "sha256:0ad31699eb89c77c3347d6d61078f463ee426a1203251a1d487b1f4cc1b32312" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:c8630dff9a093782d2d3c346d03bf651e2fee443539ed4e9dcfbf6e2a3a8e99a" [label="copy{src=/package.json, dest=/usr/src/app/},copy{src=/yarn.lock, dest=/usr/src/app/}" shape="note"];
  "sha256:dbd37175a5242bb29221ab9d1243a6e0cdfa254dd28f0c737bf4aa39c16a807f" [label="/bin/sh -c yarn --pure-lockfile && yarn cache clean" shape="box"];
  "sha256:aeec3c266e4609f0fc0e8df2546a58b2f8a9db68c9733b5d99d0b355fedc50fe" [label="copy{src=/src, dest=/usr/src/app/src/}" shape="note"];
  "sha256:62dab3d9c032941fa3e854733b418aaa7a5d33a0bde53051ab81507be33ba3f7" [label="copy{src=/server.js, dest=/usr/src/app/}" shape="note"];
  "sha256:19e061a80b94c3915ccfb79fd376e7f35012e473e0027f9f6db7908bcab502a9" [label="sha256:19e061a80b94c3915ccfb79fd376e7f35012e473e0027f9f6db7908bcab502a9" shape="plaintext"];
  "sha256:7396b0695b864ccb41579cb6268a3281271f1b59ed6971402b8c38c881efa83e" -> "sha256:ce55479d716c422fa42f6ec8b3ba122340caf1ea808284b7848d3152de056ec2" [label=""];
  "sha256:ce55479d716c422fa42f6ec8b3ba122340caf1ea808284b7848d3152de056ec2" -> "sha256:0ad31699eb89c77c3347d6d61078f463ee426a1203251a1d487b1f4cc1b32312" [label=""];
  "sha256:0ad31699eb89c77c3347d6d61078f463ee426a1203251a1d487b1f4cc1b32312" -> "sha256:c8630dff9a093782d2d3c346d03bf651e2fee443539ed4e9dcfbf6e2a3a8e99a" [label=""];
  "sha256:b34f92fe562334042adedb53e8e02a3cf4f7d96e149599f6dd17384757fb6b9b" -> "sha256:c8630dff9a093782d2d3c346d03bf651e2fee443539ed4e9dcfbf6e2a3a8e99a" [label=""];
  "sha256:c8630dff9a093782d2d3c346d03bf651e2fee443539ed4e9dcfbf6e2a3a8e99a" -> "sha256:dbd37175a5242bb29221ab9d1243a6e0cdfa254dd28f0c737bf4aa39c16a807f" [label=""];
  "sha256:dbd37175a5242bb29221ab9d1243a6e0cdfa254dd28f0c737bf4aa39c16a807f" -> "sha256:aeec3c266e4609f0fc0e8df2546a58b2f8a9db68c9733b5d99d0b355fedc50fe" [label=""];
  "sha256:b34f92fe562334042adedb53e8e02a3cf4f7d96e149599f6dd17384757fb6b9b" -> "sha256:aeec3c266e4609f0fc0e8df2546a58b2f8a9db68c9733b5d99d0b355fedc50fe" [label=""];
  "sha256:aeec3c266e4609f0fc0e8df2546a58b2f8a9db68c9733b5d99d0b355fedc50fe" -> "sha256:62dab3d9c032941fa3e854733b418aaa7a5d33a0bde53051ab81507be33ba3f7" [label=""];
  "sha256:b34f92fe562334042adedb53e8e02a3cf4f7d96e149599f6dd17384757fb6b9b" -> "sha256:62dab3d9c032941fa3e854733b418aaa7a5d33a0bde53051ab81507be33ba3f7" [label=""];
  "sha256:62dab3d9c032941fa3e854733b418aaa7a5d33a0bde53051ab81507be33ba3f7" -> "sha256:19e061a80b94c3915ccfb79fd376e7f35012e473e0027f9f6db7908bcab502a9" [label=""];
}

