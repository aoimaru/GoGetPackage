[app/sources/386033494.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:6688855be0c8f5cb29cf1a2aba20d59ded3a2845eb4963dd4a92828203a7771b" [label="local://context" shape="ellipse"];
  "sha256:e502c1438d416f146400b0c505328cc0cc2ab817445f3851ad94bd780acc60a4" [label="copy{src=/Dockerfile.name, dest=/}" shape="note"];
  "sha256:d34ce438e892bdb524d6c9cc3e81fc44436f64f3acc3e1b32ffffed8d0127782" [label="/bin/sh -c id" shape="box"];
  "sha256:c4f2eca6b2b34c230347bb42ab71623409149b6afc51c7c76942346dcc69c405" [label="sha256:c4f2eca6b2b34c230347bb42ab71623409149b6afc51c7c76942346dcc69c405" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:e502c1438d416f146400b0c505328cc0cc2ab817445f3851ad94bd780acc60a4" [label=""];
  "sha256:6688855be0c8f5cb29cf1a2aba20d59ded3a2845eb4963dd4a92828203a7771b" -> "sha256:e502c1438d416f146400b0c505328cc0cc2ab817445f3851ad94bd780acc60a4" [label=""];
  "sha256:e502c1438d416f146400b0c505328cc0cc2ab817445f3851ad94bd780acc60a4" -> "sha256:d34ce438e892bdb524d6c9cc3e81fc44436f64f3acc3e1b32ffffed8d0127782" [label=""];
  "sha256:d34ce438e892bdb524d6c9cc3e81fc44436f64f3acc3e1b32ffffed8d0127782" -> "sha256:c4f2eca6b2b34c230347bb42ab71623409149b6afc51c7c76942346dcc69c405" [label=""];
}

