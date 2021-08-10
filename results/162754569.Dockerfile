[app/sources/162754569.Dockerfile]
digraph {
  "sha256:4f8ad0f51c14b59c4f99eb9478e9e47b5100748ef2da36406ef7c5f8823ae5c8" [label="docker-image://docker.io/centos/ruby-22-centos7@sha256:a18c8706118a5c4c9f1adf045024d2abf06ba632b5674b23421019ee4d3edcae" shape="ellipse"];
  "sha256:a2cad4e29dbd9ad01a43aa1a55c54ad27a3700834cf67f6b2e51514b7ff720af" [label="/bin/sh -c echo $foo" shape="box"];
  "sha256:4ad29573db877e3c5f341b9d840ab52bb2c59a0b2341ee283f565adbc3b958c6" [label="sha256:4ad29573db877e3c5f341b9d840ab52bb2c59a0b2341ee283f565adbc3b958c6" shape="plaintext"];
  "sha256:4f8ad0f51c14b59c4f99eb9478e9e47b5100748ef2da36406ef7c5f8823ae5c8" -> "sha256:a2cad4e29dbd9ad01a43aa1a55c54ad27a3700834cf67f6b2e51514b7ff720af" [label=""];
  "sha256:a2cad4e29dbd9ad01a43aa1a55c54ad27a3700834cf67f6b2e51514b7ff720af" -> "sha256:4ad29573db877e3c5f341b9d840ab52bb2c59a0b2341ee283f565adbc3b958c6" [label=""];
}

