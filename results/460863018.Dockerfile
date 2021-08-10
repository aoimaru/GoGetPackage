[app/sources/460863018.Dockerfile]
digraph {
  "sha256:b145f0ad9ae9a60f6de4b81d9ba792548eefa51430e720eb67d23392494d4db4" [label="docker-image://docker.io/library/redis:latest" shape="ellipse"];
  "sha256:e73a8a986e9248aeea1998bdb149be0b863a1f1727a11adb45c5ec6a66c04a11" [label="local://context" shape="ellipse"];
  "sha256:76cb058886d1a145b4f6c95f63313fc8dbeb863dfd366c62de207cb359f9890c" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:aee64b2b517016cbaa04461d439e6a1b5d2f614af58002927cb03838cb27df48" [label="sha256:aee64b2b517016cbaa04461d439e6a1b5d2f614af58002927cb03838cb27df48" shape="plaintext"];
  "sha256:b145f0ad9ae9a60f6de4b81d9ba792548eefa51430e720eb67d23392494d4db4" -> "sha256:76cb058886d1a145b4f6c95f63313fc8dbeb863dfd366c62de207cb359f9890c" [label=""];
  "sha256:e73a8a986e9248aeea1998bdb149be0b863a1f1727a11adb45c5ec6a66c04a11" -> "sha256:76cb058886d1a145b4f6c95f63313fc8dbeb863dfd366c62de207cb359f9890c" [label=""];
  "sha256:76cb058886d1a145b4f6c95f63313fc8dbeb863dfd366c62de207cb359f9890c" -> "sha256:aee64b2b517016cbaa04461d439e6a1b5d2f614af58002927cb03838cb27df48" [label=""];
}

