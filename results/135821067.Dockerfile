[app/sources/135821067.Dockerfile]
digraph {
  "sha256:46feedb6b2c34e135b1734f224ea72576b5ca704b147359e286a684ad548e765" [label="local://context" shape="ellipse"];
  "sha256:829e58a034cba775312bcccb7974eb7875be493b4c28179799e9075ace42c2ba" [label="docker-image://docker.io/library/maven:alpine" shape="ellipse"];
  "sha256:eaf26dae538154adb92675f5533abe10b03f6d6c4327cab0776a373afd9be102" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:bb409518a0d91f866160a19f102746636994e6807b42ad629ca54579465dd02b" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:46bf4ca46b378dcde0b00c3e0e429ade29ce747a8be4f3050a55977236a4d34e" [label="sha256:46bf4ca46b378dcde0b00c3e0e429ade29ce747a8be4f3050a55977236a4d34e" shape="plaintext"];
  "sha256:829e58a034cba775312bcccb7974eb7875be493b4c28179799e9075ace42c2ba" -> "sha256:eaf26dae538154adb92675f5533abe10b03f6d6c4327cab0776a373afd9be102" [label=""];
  "sha256:46feedb6b2c34e135b1734f224ea72576b5ca704b147359e286a684ad548e765" -> "sha256:eaf26dae538154adb92675f5533abe10b03f6d6c4327cab0776a373afd9be102" [label=""];
  "sha256:eaf26dae538154adb92675f5533abe10b03f6d6c4327cab0776a373afd9be102" -> "sha256:bb409518a0d91f866160a19f102746636994e6807b42ad629ca54579465dd02b" [label=""];
  "sha256:bb409518a0d91f866160a19f102746636994e6807b42ad629ca54579465dd02b" -> "sha256:46bf4ca46b378dcde0b00c3e0e429ade29ce747a8be4f3050a55977236a4d34e" [label=""];
}

