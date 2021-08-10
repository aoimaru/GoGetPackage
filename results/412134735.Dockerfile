[app/sources/412134735.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:67fa57e1271012a01e74e442097c4e4a37f1ed857fadd3f59960eac42ad860e7" [label="/bin/sh -c apk update && apk upgrade && \tapk add ca-certificates bash && \trm -rf /var/cache/apk/*" shape="box"];
  "sha256:15d63f523697a915204ceccb31f37f5bd25f5a72ef0d7d0bbe573487ec96688c" [label="sha256:15d63f523697a915204ceccb31f37f5bd25f5a72ef0d7d0bbe573487ec96688c" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:67fa57e1271012a01e74e442097c4e4a37f1ed857fadd3f59960eac42ad860e7" [label=""];
  "sha256:67fa57e1271012a01e74e442097c4e4a37f1ed857fadd3f59960eac42ad860e7" -> "sha256:15d63f523697a915204ceccb31f37f5bd25f5a72ef0d7d0bbe573487ec96688c" [label=""];
}

