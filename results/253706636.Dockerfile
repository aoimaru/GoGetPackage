[app/sources/253706636.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:e57064838b8346b02b4acbaf0f5ed7fccd1086af788a818ee53b4d62318a3435" [label="/bin/sh -c apk add --no-cache task python3 py2-pip  && yes yes|task version" shape="box"];
  "sha256:30951c23b18aa9b5360ca45d33eeddd401b877298fb5d767242a85c2e1210360" [label="local://context" shape="ellipse"];
  "sha256:94955518a738bf3642a668bb7fb6210a3f12c3910af4c01173983c21042c5e56" [label="copy{src=/test.sh, dest=/test.sh}" shape="note"];
  "sha256:53b290994b6306085f4c7eda8c3e5e4b78b54a52ce5e45167c04c5e141a5fc32" [label="sha256:53b290994b6306085f4c7eda8c3e5e4b78b54a52ce5e45167c04c5e141a5fc32" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:e57064838b8346b02b4acbaf0f5ed7fccd1086af788a818ee53b4d62318a3435" [label=""];
  "sha256:e57064838b8346b02b4acbaf0f5ed7fccd1086af788a818ee53b4d62318a3435" -> "sha256:94955518a738bf3642a668bb7fb6210a3f12c3910af4c01173983c21042c5e56" [label=""];
  "sha256:30951c23b18aa9b5360ca45d33eeddd401b877298fb5d767242a85c2e1210360" -> "sha256:94955518a738bf3642a668bb7fb6210a3f12c3910af4c01173983c21042c5e56" [label=""];
  "sha256:94955518a738bf3642a668bb7fb6210a3f12c3910af4c01173983c21042c5e56" -> "sha256:53b290994b6306085f4c7eda8c3e5e4b78b54a52ce5e45167c04c5e141a5fc32" [label=""];
}

