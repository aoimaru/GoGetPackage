[app/sources/314464938.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:79acc763549d8d8fa9bfbf8342c322857b1559f3eceb906da782753a6366e2ba" [label="local://context" shape="ellipse"];
  "sha256:4497ac89f4f5127b2f60637ffc8f7378bce14ef1a6612d9d88878f7aa6270c5d" [label="copy{src=/kube-start-stop, dest=/kubey}" shape="note"];
  "sha256:86ec97849f2a9d4dd0fd17ad30dddb1b603fd80bac878607de9c8ea76c09b897" [label="sha256:86ec97849f2a9d4dd0fd17ad30dddb1b603fd80bac878607de9c8ea76c09b897" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:4497ac89f4f5127b2f60637ffc8f7378bce14ef1a6612d9d88878f7aa6270c5d" [label=""];
  "sha256:79acc763549d8d8fa9bfbf8342c322857b1559f3eceb906da782753a6366e2ba" -> "sha256:4497ac89f4f5127b2f60637ffc8f7378bce14ef1a6612d9d88878f7aa6270c5d" [label=""];
  "sha256:4497ac89f4f5127b2f60637ffc8f7378bce14ef1a6612d9d88878f7aa6270c5d" -> "sha256:86ec97849f2a9d4dd0fd17ad30dddb1b603fd80bac878607de9c8ea76c09b897" [label=""];
}

