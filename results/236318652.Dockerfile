[app/sources/236318652.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:51e864715517d3e1f02667f1029b432303f0faa78b52693ae036d2e907a0fafd" [label="/bin/sh -c apk update --no-cache" shape="box"];
  "sha256:fe81dad6860689902882d2f7387ef9793f60b8acff68f0646d7424b2d58710f4" [label="/bin/sh -c apk add bind-tools" shape="box"];
  "sha256:479f90bd07782d9121781a07e0a44853a1f21cf6bf3424dc94d8231ff59b543d" [label="sha256:479f90bd07782d9121781a07e0a44853a1f21cf6bf3424dc94d8231ff59b543d" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:51e864715517d3e1f02667f1029b432303f0faa78b52693ae036d2e907a0fafd" [label=""];
  "sha256:51e864715517d3e1f02667f1029b432303f0faa78b52693ae036d2e907a0fafd" -> "sha256:fe81dad6860689902882d2f7387ef9793f60b8acff68f0646d7424b2d58710f4" [label=""];
  "sha256:fe81dad6860689902882d2f7387ef9793f60b8acff68f0646d7424b2d58710f4" -> "sha256:479f90bd07782d9121781a07e0a44853a1f21cf6bf3424dc94d8231ff59b543d" [label=""];
}
