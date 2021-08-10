[app/sources/431482151.Dockerfile]
digraph {
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:abaafcf66278aa654c5d4419dc8751087fae758ff5a979a82c97372084c2d2f1" [label="/bin/sh -c dnf -y update && dnf -y install npm && dnf clean all" shape="box"];
  "sha256:f51c2a8880118d689d60b3f412a570644ecef061304c7880e1aef2a7b32a6b89" [label="/bin/sh -c node -v" shape="box"];
  "sha256:15b323596061d628ff076842562cd1bd99df735c9e70b7a7260e51ebbacaadab" [label="/bin/sh -c npm -v" shape="box"];
  "sha256:10d5830c01ea440fb9c84ac437f5fe717b8aedd29e33cd4323b2b73168de76d7" [label="/bin/sh -c mkdir /src" shape="box"];
  "sha256:dae8eb219171615b640508635faed26dae9c2dfc9c1ff9e7bbcd0c544c3737ef" [label="local://context" shape="ellipse"];
  "sha256:1af6d054543cd849bbf35205e05034969ee8ba0bb5256c33364d27967244545b" [label="copy{src=/package.json, dest=/src}" shape="note"];
  "sha256:d3383dfc265e6cc5dd1bc3f3e12314ae71bdd11a5898a39c18a18af20d92572b" [label="/bin/sh -c cd /src; npm install" shape="box"];
  "sha256:4d411fa5c152a6f4928abd78f205e44d6620c5fdfebe50d4378d7e111e97d712" [label="copy{src=/, dest=/src}" shape="note"];
  "sha256:dae477a6018c2f71b5bedb55640eb66206b4e97f29500b3ffbce5ba00a0b0f8a" [label="sha256:dae477a6018c2f71b5bedb55640eb66206b4e97f29500b3ffbce5ba00a0b0f8a" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:abaafcf66278aa654c5d4419dc8751087fae758ff5a979a82c97372084c2d2f1" [label=""];
  "sha256:abaafcf66278aa654c5d4419dc8751087fae758ff5a979a82c97372084c2d2f1" -> "sha256:f51c2a8880118d689d60b3f412a570644ecef061304c7880e1aef2a7b32a6b89" [label=""];
  "sha256:f51c2a8880118d689d60b3f412a570644ecef061304c7880e1aef2a7b32a6b89" -> "sha256:15b323596061d628ff076842562cd1bd99df735c9e70b7a7260e51ebbacaadab" [label=""];
  "sha256:15b323596061d628ff076842562cd1bd99df735c9e70b7a7260e51ebbacaadab" -> "sha256:10d5830c01ea440fb9c84ac437f5fe717b8aedd29e33cd4323b2b73168de76d7" [label=""];
  "sha256:10d5830c01ea440fb9c84ac437f5fe717b8aedd29e33cd4323b2b73168de76d7" -> "sha256:1af6d054543cd849bbf35205e05034969ee8ba0bb5256c33364d27967244545b" [label=""];
  "sha256:dae8eb219171615b640508635faed26dae9c2dfc9c1ff9e7bbcd0c544c3737ef" -> "sha256:1af6d054543cd849bbf35205e05034969ee8ba0bb5256c33364d27967244545b" [label=""];
  "sha256:1af6d054543cd849bbf35205e05034969ee8ba0bb5256c33364d27967244545b" -> "sha256:d3383dfc265e6cc5dd1bc3f3e12314ae71bdd11a5898a39c18a18af20d92572b" [label=""];
  "sha256:d3383dfc265e6cc5dd1bc3f3e12314ae71bdd11a5898a39c18a18af20d92572b" -> "sha256:4d411fa5c152a6f4928abd78f205e44d6620c5fdfebe50d4378d7e111e97d712" [label=""];
  "sha256:dae8eb219171615b640508635faed26dae9c2dfc9c1ff9e7bbcd0c544c3737ef" -> "sha256:4d411fa5c152a6f4928abd78f205e44d6620c5fdfebe50d4378d7e111e97d712" [label=""];
  "sha256:4d411fa5c152a6f4928abd78f205e44d6620c5fdfebe50d4378d7e111e97d712" -> "sha256:dae477a6018c2f71b5bedb55640eb66206b4e97f29500b3ffbce5ba00a0b0f8a" [label=""];
}

