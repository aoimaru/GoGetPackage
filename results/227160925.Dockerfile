[app/sources/227160925.Dockerfile]
digraph {
  "sha256:6253dc80a1819d678a4168a1150bfec4fc92b7303e5a3527e6c09f402c074c35" [label="local://context" shape="ellipse"];
  "sha256:8e91f765e39e4a165b6bb03a5e1872df3cf60b19c9397c70af426fec862a1969" [label="docker-image://docker.io/library/openjdk:alpine" shape="ellipse"];
  "sha256:69762dfc58f134f0ec59383d90ce9ea1b3e7a8503d8dc3812cc737813034b580" [label="copy{src=/petclinic.war, dest=/petclinic.war}" shape="note"];
  "sha256:aa3b0614934338111e0ba95a5d1405f3f03409a102b3d10cc504cd2bbbed2984" [label="/bin/sh -c sh -c 'touch /petclinic.war'" shape="box"];
  "sha256:37ec6095d36a2b6ed34c6cec5ec04787e2d5b7616c4c13112d102a1c974be832" [label="sha256:37ec6095d36a2b6ed34c6cec5ec04787e2d5b7616c4c13112d102a1c974be832" shape="plaintext"];
  "sha256:8e91f765e39e4a165b6bb03a5e1872df3cf60b19c9397c70af426fec862a1969" -> "sha256:69762dfc58f134f0ec59383d90ce9ea1b3e7a8503d8dc3812cc737813034b580" [label=""];
  "sha256:6253dc80a1819d678a4168a1150bfec4fc92b7303e5a3527e6c09f402c074c35" -> "sha256:69762dfc58f134f0ec59383d90ce9ea1b3e7a8503d8dc3812cc737813034b580" [label=""];
  "sha256:69762dfc58f134f0ec59383d90ce9ea1b3e7a8503d8dc3812cc737813034b580" -> "sha256:aa3b0614934338111e0ba95a5d1405f3f03409a102b3d10cc504cd2bbbed2984" [label=""];
  "sha256:aa3b0614934338111e0ba95a5d1405f3f03409a102b3d10cc504cd2bbbed2984" -> "sha256:37ec6095d36a2b6ed34c6cec5ec04787e2d5b7616c4c13112d102a1c974be832" [label=""];
}

