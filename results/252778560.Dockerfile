[app/sources/252778560.Dockerfile]
digraph {
  "sha256:94b1f61810d2807e73682b14b9a2ad7f9347e1576571431af5c742091bc72930" [label="docker-image://docker.io/mhart/alpine-node:7@sha256:d334920c966d440676ce9d1e6162ab544349e4a4359c517300391c877bcffb8c" shape="ellipse"];
  "sha256:5c4714a6f736d1e95faa7f214112bc96bc02e88a98d7ad952c69f03b2d436266" [label="/bin/sh -c apk update && apk add $SYSTEM_PKGS && rm /bin/sh && ln -s /bin/bash /bin/sh && git --version && which ssh" shape="box"];
  "sha256:4c9ac4c4132a652ba31fdf1b67e7f3376bde31d88c0bb7c9ed59dec967d89f23" [label="sha256:4c9ac4c4132a652ba31fdf1b67e7f3376bde31d88c0bb7c9ed59dec967d89f23" shape="plaintext"];
  "sha256:94b1f61810d2807e73682b14b9a2ad7f9347e1576571431af5c742091bc72930" -> "sha256:5c4714a6f736d1e95faa7f214112bc96bc02e88a98d7ad952c69f03b2d436266" [label=""];
  "sha256:5c4714a6f736d1e95faa7f214112bc96bc02e88a98d7ad952c69f03b2d436266" -> "sha256:4c9ac4c4132a652ba31fdf1b67e7f3376bde31d88c0bb7c9ed59dec967d89f23" [label=""];
}

