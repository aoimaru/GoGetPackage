[app/sources/252765883.Dockerfile]
digraph {
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:a4dbb50d270f67a9cd05ea6aa9a6b19daca3ca2dd83192e58c7cf296b0185cad" [label="/bin/sh -c date > /date" shape="box"];
  "sha256:9afafa6d21b00aa44421892aa7ee7d1380a9ec83341377d2f2f6b56e65039868" [label="sha256:9afafa6d21b00aa44421892aa7ee7d1380a9ec83341377d2f2f6b56e65039868" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:a4dbb50d270f67a9cd05ea6aa9a6b19daca3ca2dd83192e58c7cf296b0185cad" [label=""];
  "sha256:a4dbb50d270f67a9cd05ea6aa9a6b19daca3ca2dd83192e58c7cf296b0185cad" -> "sha256:9afafa6d21b00aa44421892aa7ee7d1380a9ec83341377d2f2f6b56e65039868" [label=""];
}

