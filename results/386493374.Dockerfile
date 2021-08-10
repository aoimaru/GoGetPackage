[app/sources/386493374.Dockerfile]
digraph {
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" [label="docker-image://docker.io/library/busybox:latest" shape="ellipse"];
  "sha256:d27e782860a54d57b0d6d3287eb55b88046bc5ffbbe1f5b3f9e718dc518fd050" [label="local://context" shape="ellipse"];
  "sha256:7ea2c83725cc546fef294378b5bbbba9fa2c947bcd2a59b83fa3e8fae78787fe" [label="copy{src=/bin/date.sh, dest=/}" shape="note"];
  "sha256:6733a0ca55ad01a590416663043c29cd3ca4ebdfc34926fe20268d504cc47a11" [label="sha256:6733a0ca55ad01a590416663043c29cd3ca4ebdfc34926fe20268d504cc47a11" shape="plaintext"];
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" -> "sha256:7ea2c83725cc546fef294378b5bbbba9fa2c947bcd2a59b83fa3e8fae78787fe" [label=""];
  "sha256:d27e782860a54d57b0d6d3287eb55b88046bc5ffbbe1f5b3f9e718dc518fd050" -> "sha256:7ea2c83725cc546fef294378b5bbbba9fa2c947bcd2a59b83fa3e8fae78787fe" [label=""];
  "sha256:7ea2c83725cc546fef294378b5bbbba9fa2c947bcd2a59b83fa3e8fae78787fe" -> "sha256:6733a0ca55ad01a590416663043c29cd3ca4ebdfc34926fe20268d504cc47a11" [label=""];
}

