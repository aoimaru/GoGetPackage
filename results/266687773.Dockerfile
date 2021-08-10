[app/sources/266687773.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:3ac8cd812dfd4c3651ddbae9bbd1b99d90918e86c3cb7a70e206c681f3766380" [label="/bin/sh -c apk --no-cache add     ca-certificates     tini" shape="box"];
  "sha256:070b7e43f2f0f5ab5f17b66a318138720b0fc137d97bb48341577a3033820880" [label="local://context" shape="ellipse"];
  "sha256:b7c9b64f926b226058be49023bb751ba49a3c53b8b26226eeea6c46bd76a6493" [label="copy{src=/build/bin/eni-controller, dest=/bin/}" shape="note"];
  "sha256:21d36ddf9bb4686f6f231d5d4ef8d948e5a52ab5694ef7ac6de797514161dd3d" [label="sha256:21d36ddf9bb4686f6f231d5d4ef8d948e5a52ab5694ef7ac6de797514161dd3d" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:3ac8cd812dfd4c3651ddbae9bbd1b99d90918e86c3cb7a70e206c681f3766380" [label=""];
  "sha256:3ac8cd812dfd4c3651ddbae9bbd1b99d90918e86c3cb7a70e206c681f3766380" -> "sha256:b7c9b64f926b226058be49023bb751ba49a3c53b8b26226eeea6c46bd76a6493" [label=""];
  "sha256:070b7e43f2f0f5ab5f17b66a318138720b0fc137d97bb48341577a3033820880" -> "sha256:b7c9b64f926b226058be49023bb751ba49a3c53b8b26226eeea6c46bd76a6493" [label=""];
  "sha256:b7c9b64f926b226058be49023bb751ba49a3c53b8b26226eeea6c46bd76a6493" -> "sha256:21d36ddf9bb4686f6f231d5d4ef8d948e5a52ab5694ef7ac6de797514161dd3d" [label=""];
}

