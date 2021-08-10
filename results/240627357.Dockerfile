[app/sources/240627357.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:dc87f538446d49c6b71ce3dd913ff8114f0cc9fe8493bec445a1ef8097b0cf97" [label="/bin/sh -c apk add --no-cache python python-dev gcc musl-dev libffi-dev openssl-dev && \tpython -m ensurepip && \tpip install --upgrade pip && \tpip install autobahntestsuite" shape="box"];
  "sha256:86b5e5da2c50d544d7a2d2c7fce94b11b8a6f81838897e98775de311b6234b02" [label="sha256:86b5e5da2c50d544d7a2d2c7fce94b11b8a6f81838897e98775de311b6234b02" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:dc87f538446d49c6b71ce3dd913ff8114f0cc9fe8493bec445a1ef8097b0cf97" [label=""];
  "sha256:dc87f538446d49c6b71ce3dd913ff8114f0cc9fe8493bec445a1ef8097b0cf97" -> "sha256:86b5e5da2c50d544d7a2d2c7fce94b11b8a6f81838897e98775de311b6234b02" [label=""];
}

