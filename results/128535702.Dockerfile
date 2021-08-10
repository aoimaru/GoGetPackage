[app/sources/128535702.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:393d55f17639e876f6ac412ef2701b4a99ea6a19269ca828efe62d54225f2921" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends   g++   make   file   curl   ca-certificates   python2.7   git   cmake   sudo   gdb   xz-utils   libssl-dev   pkg-config   mingw-w64" shape="box"];
  "sha256:407870eb23038a2f7ea380517fdeae2de28c6c0c5a83f0edc44053281bd03a7a" [label="local://context" shape="ellipse"];
  "sha256:da9e20ed8575bf50c49a31faaf84397c02ce29e3bf86f5c02b3770fad6784a27" [label="copy{src=/scripts/sccache.sh, dest=/scripts/}" shape="note"];
  "sha256:2e9100ae6daa24eeda799325886e4a8c7deb69601170d2dfa2b0ba0e60004f2b" [label="/bin/sh -c sh /scripts/sccache.sh" shape="box"];
  "sha256:7763e5faac44316f6d5cca670352ad04ae514ed47bb4ee8614866a1e2666c04e" [label="sha256:7763e5faac44316f6d5cca670352ad04ae514ed47bb4ee8614866a1e2666c04e" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:393d55f17639e876f6ac412ef2701b4a99ea6a19269ca828efe62d54225f2921" [label=""];
  "sha256:393d55f17639e876f6ac412ef2701b4a99ea6a19269ca828efe62d54225f2921" -> "sha256:da9e20ed8575bf50c49a31faaf84397c02ce29e3bf86f5c02b3770fad6784a27" [label=""];
  "sha256:407870eb23038a2f7ea380517fdeae2de28c6c0c5a83f0edc44053281bd03a7a" -> "sha256:da9e20ed8575bf50c49a31faaf84397c02ce29e3bf86f5c02b3770fad6784a27" [label=""];
  "sha256:da9e20ed8575bf50c49a31faaf84397c02ce29e3bf86f5c02b3770fad6784a27" -> "sha256:2e9100ae6daa24eeda799325886e4a8c7deb69601170d2dfa2b0ba0e60004f2b" [label=""];
  "sha256:2e9100ae6daa24eeda799325886e4a8c7deb69601170d2dfa2b0ba0e60004f2b" -> "sha256:7763e5faac44316f6d5cca670352ad04ae514ed47bb4ee8614866a1e2666c04e" [label=""];
}

