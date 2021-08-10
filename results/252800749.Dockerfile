[app/sources/252800749.Dockerfile]
digraph {
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:3c4df3874a04b2f9b8003b66dc493cea26bd29664ab1f7f92aa59a8bcd5b8fad" [label="/bin/sh -c dnf -y update && dnf -y install deluge-daemon deluge-web && dnf clean all" shape="box"];
  "sha256:efc8167bcc55cb3c3d0f50fc86abf8f699607e20e916bb37620a9bc642af12c3" [label="local://context" shape="ellipse"];
  "sha256:4a1fe7b74a2b66d8b86add7e4f28e09b6b068be7708d6b650dfdd44ca8aa8a63" [label="copy{src=/root, dest=/}" shape="note"];
  "sha256:c7ac9201bf8fbde378a085a0997d4a0f9ec672e76a35a95c37e3a2f842eb9207" [label="sha256:c7ac9201bf8fbde378a085a0997d4a0f9ec672e76a35a95c37e3a2f842eb9207" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:3c4df3874a04b2f9b8003b66dc493cea26bd29664ab1f7f92aa59a8bcd5b8fad" [label=""];
  "sha256:3c4df3874a04b2f9b8003b66dc493cea26bd29664ab1f7f92aa59a8bcd5b8fad" -> "sha256:4a1fe7b74a2b66d8b86add7e4f28e09b6b068be7708d6b650dfdd44ca8aa8a63" [label=""];
  "sha256:efc8167bcc55cb3c3d0f50fc86abf8f699607e20e916bb37620a9bc642af12c3" -> "sha256:4a1fe7b74a2b66d8b86add7e4f28e09b6b068be7708d6b650dfdd44ca8aa8a63" [label=""];
  "sha256:4a1fe7b74a2b66d8b86add7e4f28e09b6b068be7708d6b650dfdd44ca8aa8a63" -> "sha256:c7ac9201bf8fbde378a085a0997d4a0f9ec672e76a35a95c37e3a2f842eb9207" [label=""];
}

