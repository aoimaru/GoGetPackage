[app/sources/312265467.Dockerfile]
digraph {
  "sha256:e744a332c1941a151e745ebc1957ba94f88a5c014ae977480736a10a3fe53951" [label="docker-image://docker.io/library/golang:1.11.0-alpine3.8" shape="ellipse"];
  "sha256:7d4833125555dd18b60b9e3f2ea96e6156ac66b3aa533b2e7a8406a4d7908a24" [label="/bin/sh -c apk add --no-cache --update git docker gcc libc-dev" shape="box"];
  "sha256:e9f146119cd027b8a6970f31016f538417ed3bc2c626dd38a8a80161894e3293" [label="sha256:e9f146119cd027b8a6970f31016f538417ed3bc2c626dd38a8a80161894e3293" shape="plaintext"];
  "sha256:e744a332c1941a151e745ebc1957ba94f88a5c014ae977480736a10a3fe53951" -> "sha256:7d4833125555dd18b60b9e3f2ea96e6156ac66b3aa533b2e7a8406a4d7908a24" [label=""];
  "sha256:7d4833125555dd18b60b9e3f2ea96e6156ac66b3aa533b2e7a8406a4d7908a24" -> "sha256:e9f146119cd027b8a6970f31016f538417ed3bc2c626dd38a8a80161894e3293" [label=""];
}

