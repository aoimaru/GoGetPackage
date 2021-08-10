[app/sources/323195768.Dockerfile]
digraph {
  "sha256:5c87cfbb02a6ef45780d7a004773c7eafd7e8803a89a10c1e981c9b4335e6977" [label="docker-image://docker.io/library/node:10.16.0-stretch" shape="ellipse"];
  "sha256:732f36fcf1f11321a7d76cd7a8ce6f5b893a9f7de44f56ca8b921212c1540d78" [label="mkdir{path=/app}" shape="note"];
  "sha256:b1efa52d6866b591fdb3daad619f4c7575e6402e6dac062a40f3a899bc2a7924" [label="local://context" shape="ellipse"];
  "sha256:5cd578c2a9290a40716dd80eb03864567e0258d0b65283a7c145c098a5562045" [label="copy{src=/build.sh, dest=/cont/script/}" shape="note"];
  "sha256:ffcbd4b84c0fbb7c901b6fc9f56c1d27ba061135917e3ab9f6a85fec54c40d0f" [label="/bin/sh -c set -ex     && chmod +x /cont/script/build.sh" shape="box"];
  "sha256:cea1b9e2cde40f9970c82c7b252fa4cad8de0aa8a46023ed074647cd82dd0153" [label="sha256:cea1b9e2cde40f9970c82c7b252fa4cad8de0aa8a46023ed074647cd82dd0153" shape="plaintext"];
  "sha256:5c87cfbb02a6ef45780d7a004773c7eafd7e8803a89a10c1e981c9b4335e6977" -> "sha256:732f36fcf1f11321a7d76cd7a8ce6f5b893a9f7de44f56ca8b921212c1540d78" [label=""];
  "sha256:732f36fcf1f11321a7d76cd7a8ce6f5b893a9f7de44f56ca8b921212c1540d78" -> "sha256:5cd578c2a9290a40716dd80eb03864567e0258d0b65283a7c145c098a5562045" [label=""];
  "sha256:b1efa52d6866b591fdb3daad619f4c7575e6402e6dac062a40f3a899bc2a7924" -> "sha256:5cd578c2a9290a40716dd80eb03864567e0258d0b65283a7c145c098a5562045" [label=""];
  "sha256:5cd578c2a9290a40716dd80eb03864567e0258d0b65283a7c145c098a5562045" -> "sha256:ffcbd4b84c0fbb7c901b6fc9f56c1d27ba061135917e3ab9f6a85fec54c40d0f" [label=""];
  "sha256:ffcbd4b84c0fbb7c901b6fc9f56c1d27ba061135917e3ab9f6a85fec54c40d0f" -> "sha256:cea1b9e2cde40f9970c82c7b252fa4cad8de0aa8a46023ed074647cd82dd0153" [label=""];
}

