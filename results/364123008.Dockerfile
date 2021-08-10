[app/sources/364123008.Dockerfile]
digraph {
  "sha256:cf85b501a9c0b0a8c3102f8e817377665ab0d1a445a3face5dfc22fb7e9d85d9" [label="docker-image://docker.io/library/alpine:3.2@sha256:e9a2035f9d0d7cee1cdd445f5bfa0c5c646455ee26f14565dce23cf2d2de7570" shape="ellipse"];
  "sha256:6f3b554e93357883b3add1c3f24a579f66fed2eef2fa66b085c339f56617668a" [label="/bin/sh -c apk update && apk add openjdk7 bash &&     mkdir /opt && cd /opt &&     wget -q ${ANDROID_SDK_URL} &&     tar -xzf ${ANDROID_SDK_FILENAME} &&     rm ${ANDROID_SDK_FILENAME} &&     echo y | android update sdk --no-ui -a --filter tools,platform-tools,${ANDROID_API_LEVELS},build-tools-${ANDROID_BUILD_TOOLS_VERSION} --no-https &&     rm /var/cache/apk/*" shape="box"];
  "sha256:1b39fe039eefc5176de3ee1c5ee41d7a09cad7697d00ee4f08c9ea9d42f37653" [label="sha256:1b39fe039eefc5176de3ee1c5ee41d7a09cad7697d00ee4f08c9ea9d42f37653" shape="plaintext"];
  "sha256:cf85b501a9c0b0a8c3102f8e817377665ab0d1a445a3face5dfc22fb7e9d85d9" -> "sha256:6f3b554e93357883b3add1c3f24a579f66fed2eef2fa66b085c339f56617668a" [label=""];
  "sha256:6f3b554e93357883b3add1c3f24a579f66fed2eef2fa66b085c339f56617668a" -> "sha256:1b39fe039eefc5176de3ee1c5ee41d7a09cad7697d00ee4f08c9ea9d42f37653" [label=""];
}

