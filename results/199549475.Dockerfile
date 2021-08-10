[app/sources/199549475.Dockerfile]
digraph {
  "sha256:2e12704ce80f4b22d8d3282bca605008f018378239e3b33589d796037911c2d1" [label="docker-image://docker.io/minimum2scp/baseimage:latest" shape="ellipse"];
  "sha256:afa5d2c0fe2a49db3ed67ceb80a7df3b4fadef8f9dc12b03e73c96190e298cea" [label="local://context" shape="ellipse"];
  "sha256:32e7b36e596da4c71bf07ad92e7dd41efd6a3c275bcbcf448c32385356e84703" [label="copy{src=/service.test, dest=/tmp/}" shape="note"];
  "sha256:d34bff37ce80846a89ead53b8f43459c3a32e068904e82034772e443f09689bb" [label="sha256:d34bff37ce80846a89ead53b8f43459c3a32e068904e82034772e443f09689bb" shape="plaintext"];
  "sha256:2e12704ce80f4b22d8d3282bca605008f018378239e3b33589d796037911c2d1" -> "sha256:32e7b36e596da4c71bf07ad92e7dd41efd6a3c275bcbcf448c32385356e84703" [label=""];
  "sha256:afa5d2c0fe2a49db3ed67ceb80a7df3b4fadef8f9dc12b03e73c96190e298cea" -> "sha256:32e7b36e596da4c71bf07ad92e7dd41efd6a3c275bcbcf448c32385356e84703" [label=""];
  "sha256:32e7b36e596da4c71bf07ad92e7dd41efd6a3c275bcbcf448c32385356e84703" -> "sha256:d34bff37ce80846a89ead53b8f43459c3a32e068904e82034772e443f09689bb" [label=""];
}

