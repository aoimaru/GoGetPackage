[app/sources/391297050.Dockerfile]
digraph {
  "sha256:f2f128521cbecacd7a2d7701ed7046fc6a9a11761e2e1f8c9e6ae681ca7dcd45" [label="docker-image://docker.io/ballerina/ballerina:0.981.1" shape="ellipse"];
  "sha256:78fd1547e47d2afc314bbbed4eefafcf78c41e6f1078ffb4ac271e7492fff442" [label="local://context" shape="ellipse"];
  "sha256:7003b96b1ef70fd94f6e33b2a28430a6c410b888330b74def707522d64f89c32" [label="copy{src=/stockservice.balx, dest=/home/ballerina}" shape="note"];
  "sha256:6cda33a5463bdcfb268b839962f15452074ce8ff9d05e378cef5f8b2b56de05c" [label="sha256:6cda33a5463bdcfb268b839962f15452074ce8ff9d05e378cef5f8b2b56de05c" shape="plaintext"];
  "sha256:f2f128521cbecacd7a2d7701ed7046fc6a9a11761e2e1f8c9e6ae681ca7dcd45" -> "sha256:7003b96b1ef70fd94f6e33b2a28430a6c410b888330b74def707522d64f89c32" [label=""];
  "sha256:78fd1547e47d2afc314bbbed4eefafcf78c41e6f1078ffb4ac271e7492fff442" -> "sha256:7003b96b1ef70fd94f6e33b2a28430a6c410b888330b74def707522d64f89c32" [label=""];
  "sha256:7003b96b1ef70fd94f6e33b2a28430a6c410b888330b74def707522d64f89c32" -> "sha256:6cda33a5463bdcfb268b839962f15452074ce8ff9d05e378cef5f8b2b56de05c" [label=""];
}

