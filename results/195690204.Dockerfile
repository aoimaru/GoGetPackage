[app/sources/195690204.Dockerfile]
digraph {
  "sha256:bbb5434fa58e89c6b5fe2aa5325cdf970da8c6409fdea28cf8fb477c709b450f" [label="docker-image://docker.io/tudorg/xgo-base:latest" shape="ellipse"];
  "sha256:f515bcc7c0adf2a198b752b2700609305990d7b0932aeeb4bf72de7717da45b7" [label="local://context" shape="ellipse"];
  "sha256:b4ac3cff18dc21739f4d7456954b5c2441bbe4c5ff06e96fe63df91164c83874" [label="copy{src=/build_go_daemon.sh, dest=/build_go_daemon.sh}" shape="note"];
  "sha256:45ab865966b9b32e4300df5ebe846186403c1643cfbde373c244475a6f391c06" [label="/bin/sh -c chmod +x $BUILD_GO_DAEMON" shape="box"];
  "sha256:ec0b774f19d86191708a78e7697a8d25bb41be79aede62e6eda2c7821f97239f" [label="sha256:ec0b774f19d86191708a78e7697a8d25bb41be79aede62e6eda2c7821f97239f" shape="plaintext"];
  "sha256:bbb5434fa58e89c6b5fe2aa5325cdf970da8c6409fdea28cf8fb477c709b450f" -> "sha256:b4ac3cff18dc21739f4d7456954b5c2441bbe4c5ff06e96fe63df91164c83874" [label=""];
  "sha256:f515bcc7c0adf2a198b752b2700609305990d7b0932aeeb4bf72de7717da45b7" -> "sha256:b4ac3cff18dc21739f4d7456954b5c2441bbe4c5ff06e96fe63df91164c83874" [label=""];
  "sha256:b4ac3cff18dc21739f4d7456954b5c2441bbe4c5ff06e96fe63df91164c83874" -> "sha256:45ab865966b9b32e4300df5ebe846186403c1643cfbde373c244475a6f391c06" [label=""];
  "sha256:45ab865966b9b32e4300df5ebe846186403c1643cfbde373c244475a6f391c06" -> "sha256:ec0b774f19d86191708a78e7697a8d25bb41be79aede62e6eda2c7821f97239f" [label=""];
}

