[app/sources/340500777.Dockerfile]
digraph {
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:9d4df042ac6f5017f23ce3effcb6d9f16ce0d10c657b01e2ec904b8b14a47e86" [label="/bin/sh -c apk add --no-cache       curl       musl-dev       && :" shape="box"];
  "sha256:1fa978c7fb85fe7eb2498d623bb360d0b06ffac1b2e98257bdeb1edc59937e48" [label="/bin/sh -c apk add --no-cache -X http://dl-4.alpinelinux.org/alpine/edge/community       'go>=1.11.5-r0'       && :" shape="box"];
  "sha256:ec6e6ed6e057e3fd26229b401ee74a615d75eb8d69bb43c75e08527887c1098c" [label="/bin/sh -c apk add --no-cache -X http://dl-4.alpinelinux.org/alpine/edge/main       'ca-certificates>=20190108-r0'       && :" shape="box"];
  "sha256:f9415b6b8b369093cfa1b5e3167ee8e34b38f71487484e136c398bc674026bf3" [label="/bin/sh -c adduser -D developer" shape="box"];
  "sha256:fb5eb70a8ed487b6e02df2682021a55173ea307ef7f93c24c3d35dc96fe3f4ae" [label="/bin/sh -c cd /tmp &&     curl -sSLO https://github.com/ssllabs/ssllabs-scan/archive/v${VERSION}.tar.gz &&     tar xvzf v${VERSION}.tar.gz &&     cd ssllabs-scan-${VERSION} &&     GOPATH=~     CGO_ENABLED=0     GOOS=linux     LIBRARY_PATH=/usr/lib/x86_64-linux-gnu:$LIBRARY_PATH     go build       -a       -tags netgo       -ldflags '-extldflags \"-static\" -s'       -buildmode exe       ssllabs-scan-v3.go" shape="box"];
  "sha256:14f5d9dd98ccb16b90b2fd1d739dfaa4d7924087ec0cc599484b9d5f8469232d" [label="copy{src=/tmp/ssllabs-scan-/ssllabs-scan-v3, dest=/ssllabs-scan}" shape="note"];
  "sha256:45e94e13864856ff46a988ec1077c5b1b6cf036efaba592ba5f8d246846bc51d" [label="copy{src=/etc/ssl/certs/ca-certificates.crt, dest=/etc/ssl/certs/ca-certificates.crt}" shape="note"];
  "sha256:bf57a09b557003ec3cc0ba4b0c32d37ec244007d84035ba447d2d508e1de5f65" [label="local://context" shape="ellipse"];
  "sha256:b4f2971b81feb64ff6cb39d167508b95d6a1dc73501599cee9444d389ebbd276" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:55e3772b8a5e760b9e713bf84119bd4c5a3cb08fcceba3878d81c0d964e5b22d" [label="sha256:55e3772b8a5e760b9e713bf84119bd4c5a3cb08fcceba3878d81c0d964e5b22d" shape="plaintext"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:9d4df042ac6f5017f23ce3effcb6d9f16ce0d10c657b01e2ec904b8b14a47e86" [label=""];
  "sha256:9d4df042ac6f5017f23ce3effcb6d9f16ce0d10c657b01e2ec904b8b14a47e86" -> "sha256:1fa978c7fb85fe7eb2498d623bb360d0b06ffac1b2e98257bdeb1edc59937e48" [label=""];
  "sha256:1fa978c7fb85fe7eb2498d623bb360d0b06ffac1b2e98257bdeb1edc59937e48" -> "sha256:ec6e6ed6e057e3fd26229b401ee74a615d75eb8d69bb43c75e08527887c1098c" [label=""];
  "sha256:ec6e6ed6e057e3fd26229b401ee74a615d75eb8d69bb43c75e08527887c1098c" -> "sha256:f9415b6b8b369093cfa1b5e3167ee8e34b38f71487484e136c398bc674026bf3" [label=""];
  "sha256:f9415b6b8b369093cfa1b5e3167ee8e34b38f71487484e136c398bc674026bf3" -> "sha256:fb5eb70a8ed487b6e02df2682021a55173ea307ef7f93c24c3d35dc96fe3f4ae" [label=""];
  "sha256:fb5eb70a8ed487b6e02df2682021a55173ea307ef7f93c24c3d35dc96fe3f4ae" -> "sha256:14f5d9dd98ccb16b90b2fd1d739dfaa4d7924087ec0cc599484b9d5f8469232d" [label=""];
  "sha256:14f5d9dd98ccb16b90b2fd1d739dfaa4d7924087ec0cc599484b9d5f8469232d" -> "sha256:45e94e13864856ff46a988ec1077c5b1b6cf036efaba592ba5f8d246846bc51d" [label=""];
  "sha256:fb5eb70a8ed487b6e02df2682021a55173ea307ef7f93c24c3d35dc96fe3f4ae" -> "sha256:45e94e13864856ff46a988ec1077c5b1b6cf036efaba592ba5f8d246846bc51d" [label=""];
  "sha256:45e94e13864856ff46a988ec1077c5b1b6cf036efaba592ba5f8d246846bc51d" -> "sha256:b4f2971b81feb64ff6cb39d167508b95d6a1dc73501599cee9444d389ebbd276" [label=""];
  "sha256:bf57a09b557003ec3cc0ba4b0c32d37ec244007d84035ba447d2d508e1de5f65" -> "sha256:b4f2971b81feb64ff6cb39d167508b95d6a1dc73501599cee9444d389ebbd276" [label=""];
  "sha256:b4f2971b81feb64ff6cb39d167508b95d6a1dc73501599cee9444d389ebbd276" -> "sha256:55e3772b8a5e760b9e713bf84119bd4c5a3cb08fcceba3878d81c0d964e5b22d" [label=""];
}

