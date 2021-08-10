[app/sources/190415100.Dockerfile]
digraph {
  "sha256:595969331e998aa4063f99f0238f54f270bc7fdc0391a51e88dd4942ac46e8f7" [label="docker-image://docker.io/library/golang:1.5.1" shape="ellipse"];
  "sha256:f42a7a6357ba829c9f04f97e1a4384cb80c2e4c7bed7cd0691b571448a7905ee" [label="local://context" shape="ellipse"];
  "sha256:fcd26a4d2dfc7db2f2fbcf8e92e5714f452431dfd2f237f6d55eb88b9706b76e" [label="copy{src=/, dest=/src/app}" shape="note"];
  "sha256:9d6827acff9a53bba661a1cd3363bf817e402bf19c4a13213d25f07492a5d63b" [label="/bin/sh -c go get app" shape="box"];
  "sha256:6f52a52aede1463b11a02576c90c3cc7e43a9ac30c50d405bbf03b7a0b03122a" [label="/bin/sh -c CGO_ENABLED=0 go install -a app" shape="box"];
  "sha256:4fdc694f8aafa06beca458bfeb2c347e134884b8f4f17b0242755ab559c6a52f" [label="sha256:4fdc694f8aafa06beca458bfeb2c347e134884b8f4f17b0242755ab559c6a52f" shape="plaintext"];
  "sha256:595969331e998aa4063f99f0238f54f270bc7fdc0391a51e88dd4942ac46e8f7" -> "sha256:fcd26a4d2dfc7db2f2fbcf8e92e5714f452431dfd2f237f6d55eb88b9706b76e" [label=""];
  "sha256:f42a7a6357ba829c9f04f97e1a4384cb80c2e4c7bed7cd0691b571448a7905ee" -> "sha256:fcd26a4d2dfc7db2f2fbcf8e92e5714f452431dfd2f237f6d55eb88b9706b76e" [label=""];
  "sha256:fcd26a4d2dfc7db2f2fbcf8e92e5714f452431dfd2f237f6d55eb88b9706b76e" -> "sha256:9d6827acff9a53bba661a1cd3363bf817e402bf19c4a13213d25f07492a5d63b" [label=""];
  "sha256:9d6827acff9a53bba661a1cd3363bf817e402bf19c4a13213d25f07492a5d63b" -> "sha256:6f52a52aede1463b11a02576c90c3cc7e43a9ac30c50d405bbf03b7a0b03122a" [label=""];
  "sha256:6f52a52aede1463b11a02576c90c3cc7e43a9ac30c50d405bbf03b7a0b03122a" -> "sha256:4fdc694f8aafa06beca458bfeb2c347e134884b8f4f17b0242755ab559c6a52f" [label=""];
}

