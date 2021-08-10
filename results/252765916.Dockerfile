[app/sources/252765916.Dockerfile]
digraph {
  "sha256:bec6d55ac7096e4979b7a5c5e0d93370819f3a333bf2277146a7feacc09d7a0f" [label="docker-image://docker.io/rawmind/hms-maven:3.3.9" shape="ellipse"];
  "sha256:ad4092a190b6ee379ff36a0180b819e9c51729624d754cb8d121705c658ea2ac" [label="/bin/sh -c set -ex; apk add --update --no-cache perl-xml-xpath docker;" shape="box"];
  "sha256:1cb0d3a40d96660003420e00e15d1b3e708abc404bbdc621ec3e28a18fa28bae" [label="local://context" shape="ellipse"];
  "sha256:393c8819881e867a12cc736d46b78296cae708713a0dacd51e6e9329abd8fadb" [label="copy{src=/entrypoint, dest=/usr/local/bin}" shape="note"];
  "sha256:7ea18952d9a8b2200b77c8f09889dbdc0c0fa5d52eb8d4ce23b96994ff169022" [label="sha256:7ea18952d9a8b2200b77c8f09889dbdc0c0fa5d52eb8d4ce23b96994ff169022" shape="plaintext"];
  "sha256:bec6d55ac7096e4979b7a5c5e0d93370819f3a333bf2277146a7feacc09d7a0f" -> "sha256:ad4092a190b6ee379ff36a0180b819e9c51729624d754cb8d121705c658ea2ac" [label=""];
  "sha256:ad4092a190b6ee379ff36a0180b819e9c51729624d754cb8d121705c658ea2ac" -> "sha256:393c8819881e867a12cc736d46b78296cae708713a0dacd51e6e9329abd8fadb" [label=""];
  "sha256:1cb0d3a40d96660003420e00e15d1b3e708abc404bbdc621ec3e28a18fa28bae" -> "sha256:393c8819881e867a12cc736d46b78296cae708713a0dacd51e6e9329abd8fadb" [label=""];
  "sha256:393c8819881e867a12cc736d46b78296cae708713a0dacd51e6e9329abd8fadb" -> "sha256:7ea18952d9a8b2200b77c8f09889dbdc0c0fa5d52eb8d4ce23b96994ff169022" [label=""];
}

