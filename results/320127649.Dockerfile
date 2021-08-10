[app/sources/320127649.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:79e0031d3ee4797caafcce99dfcb9cf7ec4b8c27c867afbeb9d9ace918992365" [label="/bin/sh -c mkdir -p /opt/driver/src &&     adduser ${BUILD_USER} -u ${BUILD_UID} -D -h /opt/driver/src" shape="box"];
  "sha256:8bb4f047c60be3c9d096bf6aeb8653947c3a5809e4446de2b966b3d4d591647f" [label="/bin/sh -c apk add --no-cache make git curl ca-certificates bash openjdk8=\"$RUNTIME_NATIVE_VERSION\"" shape="box"];
  "sha256:580d6dbcd2388cae173ac03f08e2b66734261ec3146ff1c9ee3e60567a6f1b4d" [label="mkdir{path=/usr/lib/gradle}" shape="note"];
  "sha256:948562d5fd0b723da77cc43c3de5d1fcc62429eb1e4178bc7a14e9ff50a3b77e" [label="/bin/sh -c set -x         && apk add --no-cache wget         && wget https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip         && unzip gradle-${GRADLE_VERSION}-bin.zip         && rm gradle-${GRADLE_VERSION}-bin.zip         && apk del wget" shape="box"];
  "sha256:f4379a5209b0c69bc22c8f750579c5cb4d4366c9bde2ec4d9118e0a90b4e1f2a" [label="mkdir{path=/opt/driver/src}" shape="note"];
  "sha256:c3dda683b3713bc2bf5170d8195b75e15a37141b9064c71e65c986f2c25bbd77" [label="sha256:c3dda683b3713bc2bf5170d8195b75e15a37141b9064c71e65c986f2c25bbd77" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:79e0031d3ee4797caafcce99dfcb9cf7ec4b8c27c867afbeb9d9ace918992365" [label=""];
  "sha256:79e0031d3ee4797caafcce99dfcb9cf7ec4b8c27c867afbeb9d9ace918992365" -> "sha256:8bb4f047c60be3c9d096bf6aeb8653947c3a5809e4446de2b966b3d4d591647f" [label=""];
  "sha256:8bb4f047c60be3c9d096bf6aeb8653947c3a5809e4446de2b966b3d4d591647f" -> "sha256:580d6dbcd2388cae173ac03f08e2b66734261ec3146ff1c9ee3e60567a6f1b4d" [label=""];
  "sha256:580d6dbcd2388cae173ac03f08e2b66734261ec3146ff1c9ee3e60567a6f1b4d" -> "sha256:948562d5fd0b723da77cc43c3de5d1fcc62429eb1e4178bc7a14e9ff50a3b77e" [label=""];
  "sha256:948562d5fd0b723da77cc43c3de5d1fcc62429eb1e4178bc7a14e9ff50a3b77e" -> "sha256:f4379a5209b0c69bc22c8f750579c5cb4d4366c9bde2ec4d9118e0a90b4e1f2a" [label=""];
  "sha256:f4379a5209b0c69bc22c8f750579c5cb4d4366c9bde2ec4d9118e0a90b4e1f2a" -> "sha256:c3dda683b3713bc2bf5170d8195b75e15a37141b9064c71e65c986f2c25bbd77" [label=""];
}

