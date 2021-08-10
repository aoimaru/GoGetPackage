[app/sources/252767866.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:b7bc0224f2ae61fc012d0aaed0335cbe514fc697b142e0aeaecd36eac469eaa8" [label="/bin/sh -c apk --update --no-cache add privoxy openvpn runit" shape="box"];
  "sha256:cd8b1aec76adbf4062d3e3c9ab60d6c065aebd6883f74f731c6834a82a567300" [label="local://context" shape="ellipse"];
  "sha256:ffa8309526303900dad6ec0cbbf06bcf8f3e7c4752449b849d56cc3566840143" [label="copy{src=/app, dest=/app}" shape="note"];
  "sha256:f766577e0987fb5439e22c7e25b1d9c140d4029450269698c34f317490f22215" [label="/bin/sh -c find /app -name run | xargs chmod u+x" shape="box"];
  "sha256:beec98533c0f8dc8120961f09b62dc4b61cd589e52ea5f957e097ad9198f9ac6" [label="sha256:beec98533c0f8dc8120961f09b62dc4b61cd589e52ea5f957e097ad9198f9ac6" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:b7bc0224f2ae61fc012d0aaed0335cbe514fc697b142e0aeaecd36eac469eaa8" [label=""];
  "sha256:b7bc0224f2ae61fc012d0aaed0335cbe514fc697b142e0aeaecd36eac469eaa8" -> "sha256:ffa8309526303900dad6ec0cbbf06bcf8f3e7c4752449b849d56cc3566840143" [label=""];
  "sha256:cd8b1aec76adbf4062d3e3c9ab60d6c065aebd6883f74f731c6834a82a567300" -> "sha256:ffa8309526303900dad6ec0cbbf06bcf8f3e7c4752449b849d56cc3566840143" [label=""];
  "sha256:ffa8309526303900dad6ec0cbbf06bcf8f3e7c4752449b849d56cc3566840143" -> "sha256:f766577e0987fb5439e22c7e25b1d9c140d4029450269698c34f317490f22215" [label=""];
  "sha256:f766577e0987fb5439e22c7e25b1d9c140d4029450269698c34f317490f22215" -> "sha256:beec98533c0f8dc8120961f09b62dc4b61cd589e52ea5f957e097ad9198f9ac6" [label=""];
}

