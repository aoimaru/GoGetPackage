[app/sources/203318864.Dockerfile]
digraph {
  "sha256:5302843d2dbcdc70daa768ed854a92ace1acca51c6194779befcaf5558dd1367" [label="docker-image://docker.io/library/alpine:edge@sha256:2f77b6664f181b246244f9cd052155e74fb3f26d2a502edecd5fff0fc4bda388" shape="ellipse"];
  "sha256:114855fbe4bc9613db49b3dc93d6085e8dfd362e86b1dcfe0fdcbf978a5353a7" [label="/bin/sh -c echo http://dl-4.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories" shape="box"];
  "sha256:6f2261cb84b090e7e56b1c0372af3c8c01f31afb0e107925c2f69022dd9e8f93" [label="/bin/sh -c apk update && apk upgrade && apk update" shape="box"];
  "sha256:4c58efdbe810829c7c4b3a99f338b11f264b1b0c3d5809e35df013520fffcd52" [label="/bin/sh -c apk add --update bash && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:0c687bff4b6c41b4d7d64ccc89122f545fe4d44cb781dc6674e7a0b041003424" [label="/bin/sh -c apk add --update mongodb && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:91e656964cfc50e2a910cdbbd21add8d124c3f955e3e1c0a1b3ee75834c6e46b" [label="/bin/sh -c mkdir -p /data/db /data/logs" shape="box"];
  "sha256:b6957a69c24328cc5c85544ef861da7c1c463be3a418cdc5bac993fc3462c75b" [label="mkdir{path=/data}" shape="note"];
  "sha256:a3c378e90022356c60515c960db52b046e69c0c9637459f252f7ae5292f9e0f2" [label="sha256:a3c378e90022356c60515c960db52b046e69c0c9637459f252f7ae5292f9e0f2" shape="plaintext"];
  "sha256:5302843d2dbcdc70daa768ed854a92ace1acca51c6194779befcaf5558dd1367" -> "sha256:114855fbe4bc9613db49b3dc93d6085e8dfd362e86b1dcfe0fdcbf978a5353a7" [label=""];
  "sha256:114855fbe4bc9613db49b3dc93d6085e8dfd362e86b1dcfe0fdcbf978a5353a7" -> "sha256:6f2261cb84b090e7e56b1c0372af3c8c01f31afb0e107925c2f69022dd9e8f93" [label=""];
  "sha256:6f2261cb84b090e7e56b1c0372af3c8c01f31afb0e107925c2f69022dd9e8f93" -> "sha256:4c58efdbe810829c7c4b3a99f338b11f264b1b0c3d5809e35df013520fffcd52" [label=""];
  "sha256:4c58efdbe810829c7c4b3a99f338b11f264b1b0c3d5809e35df013520fffcd52" -> "sha256:0c687bff4b6c41b4d7d64ccc89122f545fe4d44cb781dc6674e7a0b041003424" [label=""];
  "sha256:0c687bff4b6c41b4d7d64ccc89122f545fe4d44cb781dc6674e7a0b041003424" -> "sha256:91e656964cfc50e2a910cdbbd21add8d124c3f955e3e1c0a1b3ee75834c6e46b" [label=""];
  "sha256:91e656964cfc50e2a910cdbbd21add8d124c3f955e3e1c0a1b3ee75834c6e46b" -> "sha256:b6957a69c24328cc5c85544ef861da7c1c463be3a418cdc5bac993fc3462c75b" [label=""];
  "sha256:b6957a69c24328cc5c85544ef861da7c1c463be3a418cdc5bac993fc3462c75b" -> "sha256:a3c378e90022356c60515c960db52b046e69c0c9637459f252f7ae5292f9e0f2" [label=""];
}

