[app/sources/309900858.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:3cdb12ab860897adb35e5261b600045f6b8d7d056d1d33fceef94ec04c90c0e8" [label="/bin/sh -c apk --no-cache add ca-certificates" shape="box"];
  "sha256:b6717fa1d9ba5ea1533760c4a9980c2ab320cacb2f0be17165b229837e026e61" [label="local://context" shape="ellipse"];
  "sha256:9f4aed6cc071fda4ab1d35e8791128940fa27cb7a26085b27abb0c211d27b5d2" [label="copy{src=/AssassinGo, dest=/}" shape="note"];
  "sha256:a40a1790511b9e74784880876ad29f450f416e172f73cd92aae76aa30a4ce519" [label="sha256:a40a1790511b9e74784880876ad29f450f416e172f73cd92aae76aa30a4ce519" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:3cdb12ab860897adb35e5261b600045f6b8d7d056d1d33fceef94ec04c90c0e8" [label=""];
  "sha256:3cdb12ab860897adb35e5261b600045f6b8d7d056d1d33fceef94ec04c90c0e8" -> "sha256:9f4aed6cc071fda4ab1d35e8791128940fa27cb7a26085b27abb0c211d27b5d2" [label=""];
  "sha256:b6717fa1d9ba5ea1533760c4a9980c2ab320cacb2f0be17165b229837e026e61" -> "sha256:9f4aed6cc071fda4ab1d35e8791128940fa27cb7a26085b27abb0c211d27b5d2" [label=""];
  "sha256:9f4aed6cc071fda4ab1d35e8791128940fa27cb7a26085b27abb0c211d27b5d2" -> "sha256:a40a1790511b9e74784880876ad29f450f416e172f73cd92aae76aa30a4ce519" [label=""];
}

