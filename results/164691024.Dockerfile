[app/sources/164691024.Dockerfile]
digraph {
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" [label="docker-image://docker.io/library/busybox:latest" shape="ellipse"];
  "sha256:8bd842c25adb0c429fa866290ca25deb6921e4a677b57069f3087941cbb1991c" [label="local://context" shape="ellipse"];
  "sha256:5b78e72096d06871d43aa05c700b682d73a4469f2d51f4f3601de4bbb4a5126f" [label="copy{src=/skydns, dest=/skydns}" shape="note"];
  "sha256:fe119e590feb495a5512fed2bf53d810e947b68326daeb9a028eb788fb777706" [label="sha256:fe119e590feb495a5512fed2bf53d810e947b68326daeb9a028eb788fb777706" shape="plaintext"];
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" -> "sha256:5b78e72096d06871d43aa05c700b682d73a4469f2d51f4f3601de4bbb4a5126f" [label=""];
  "sha256:8bd842c25adb0c429fa866290ca25deb6921e4a677b57069f3087941cbb1991c" -> "sha256:5b78e72096d06871d43aa05c700b682d73a4469f2d51f4f3601de4bbb4a5126f" [label=""];
  "sha256:5b78e72096d06871d43aa05c700b682d73a4469f2d51f4f3601de4bbb4a5126f" -> "sha256:fe119e590feb495a5512fed2bf53d810e947b68326daeb9a028eb788fb777706" [label=""];
}

