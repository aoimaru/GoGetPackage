[app/sources/449920024.Dockerfile]
digraph {
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:4d79a3a16afe7737d1d6f6c7efabb6d9a7d86db4b1b088cb62b78169a42d0c27" [label="/bin/sh -c dnf -y install make python3 python3-six python3-nose    pyotherside qt5-qtdeclarative-devel espeak mimic flite" shape="box"];
  "sha256:2a767475c824e6cdc7ffa85f0a3feceaad4b174796452f6cbeda321b43e5c589" [label="/bin/sh -c mkdir /modrana-testing" shape="box"];
  "sha256:3f091637ae2225123a04a7d6839492b6bc3dff501270ed5c7a6786deb9b8266b" [label="local://context" shape="ellipse"];
  "sha256:a3b5cf0637702dd46f59fa1e89257bacf2f8cc1a9317da308d04f3c590544450" [label="copy{src=/, dest=/modrana-testing}" shape="note"];
  "sha256:6537d192232cb0d51a2ab1be9070ef1d7ea14c055ac1a672608fffaf881ef30b" [label="mkdir{path=/modrana-testing}" shape="note"];
  "sha256:66c4fc3eada0b89476045396145fe6a8f1464b6bd175a4e70fb94c5527567dd2" [label="/bin/sh -c make test-python" shape="box"];
  "sha256:e53829e0adefa16a53c1873910b39aa3c5dad57a0e1af14692d70f36c4688803" [label="sha256:e53829e0adefa16a53c1873910b39aa3c5dad57a0e1af14692d70f36c4688803" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:4d79a3a16afe7737d1d6f6c7efabb6d9a7d86db4b1b088cb62b78169a42d0c27" [label=""];
  "sha256:4d79a3a16afe7737d1d6f6c7efabb6d9a7d86db4b1b088cb62b78169a42d0c27" -> "sha256:2a767475c824e6cdc7ffa85f0a3feceaad4b174796452f6cbeda321b43e5c589" [label=""];
  "sha256:2a767475c824e6cdc7ffa85f0a3feceaad4b174796452f6cbeda321b43e5c589" -> "sha256:a3b5cf0637702dd46f59fa1e89257bacf2f8cc1a9317da308d04f3c590544450" [label=""];
  "sha256:3f091637ae2225123a04a7d6839492b6bc3dff501270ed5c7a6786deb9b8266b" -> "sha256:a3b5cf0637702dd46f59fa1e89257bacf2f8cc1a9317da308d04f3c590544450" [label=""];
  "sha256:a3b5cf0637702dd46f59fa1e89257bacf2f8cc1a9317da308d04f3c590544450" -> "sha256:6537d192232cb0d51a2ab1be9070ef1d7ea14c055ac1a672608fffaf881ef30b" [label=""];
  "sha256:6537d192232cb0d51a2ab1be9070ef1d7ea14c055ac1a672608fffaf881ef30b" -> "sha256:66c4fc3eada0b89476045396145fe6a8f1464b6bd175a4e70fb94c5527567dd2" [label=""];
  "sha256:66c4fc3eada0b89476045396145fe6a8f1464b6bd175a4e70fb94c5527567dd2" -> "sha256:e53829e0adefa16a53c1873910b39aa3c5dad57a0e1af14692d70f36c4688803" [label=""];
}

