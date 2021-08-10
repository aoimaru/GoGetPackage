[app/sources/209827853.Dockerfile]
digraph {
  "sha256:5995a39e68e9e61d3ffe79e05fb2178d63b03cf306a8a6d28dcc970298cd13d0" [label="docker-image://docker.io/library/node:6" shape="ellipse"];
  "sha256:855b2f901b7ba5bc031008f4bf30e81ea5401c69432334da2bb7c99f19416088" [label="/bin/sh -c apt-get update && apt-get install -y chromium xvfb" shape="box"];
  "sha256:4da5cd3d1b8a63607f8740c8080bdea60d2b6098206ca9be44dd186867ef1138" [label="/bin/sh -c npm install jspm gulp -g" shape="box"];
  "sha256:c7d312db35d559e923c7119c194fd2ac3bf1a010dd60b6641a7fb0ae954d4644" [label="local://context" shape="ellipse"];
  "sha256:5433a49852b3729e3c4bb7e0c04461d62bb459170000f0e93ca3c8a0233241f0" [label="copy{src=/build_client_cmd.sh, dest=/}" shape="note"];
  "sha256:900c380bbe6b0e1b634caf17cb3ab2de2a3be3fbfe5f9b29857b6b7f9f44eae0" [label="copy{src=/watch_client_cmd.sh, dest=/}" shape="note"];
  "sha256:fe18f75156acd5f8ea3cd6b48ad67b749d034af3e730fc3846fb688e00a31e9a" [label="sha256:fe18f75156acd5f8ea3cd6b48ad67b749d034af3e730fc3846fb688e00a31e9a" shape="plaintext"];
  "sha256:5995a39e68e9e61d3ffe79e05fb2178d63b03cf306a8a6d28dcc970298cd13d0" -> "sha256:855b2f901b7ba5bc031008f4bf30e81ea5401c69432334da2bb7c99f19416088" [label=""];
  "sha256:855b2f901b7ba5bc031008f4bf30e81ea5401c69432334da2bb7c99f19416088" -> "sha256:4da5cd3d1b8a63607f8740c8080bdea60d2b6098206ca9be44dd186867ef1138" [label=""];
  "sha256:4da5cd3d1b8a63607f8740c8080bdea60d2b6098206ca9be44dd186867ef1138" -> "sha256:5433a49852b3729e3c4bb7e0c04461d62bb459170000f0e93ca3c8a0233241f0" [label=""];
  "sha256:c7d312db35d559e923c7119c194fd2ac3bf1a010dd60b6641a7fb0ae954d4644" -> "sha256:5433a49852b3729e3c4bb7e0c04461d62bb459170000f0e93ca3c8a0233241f0" [label=""];
  "sha256:5433a49852b3729e3c4bb7e0c04461d62bb459170000f0e93ca3c8a0233241f0" -> "sha256:900c380bbe6b0e1b634caf17cb3ab2de2a3be3fbfe5f9b29857b6b7f9f44eae0" [label=""];
  "sha256:c7d312db35d559e923c7119c194fd2ac3bf1a010dd60b6641a7fb0ae954d4644" -> "sha256:900c380bbe6b0e1b634caf17cb3ab2de2a3be3fbfe5f9b29857b6b7f9f44eae0" [label=""];
  "sha256:900c380bbe6b0e1b634caf17cb3ab2de2a3be3fbfe5f9b29857b6b7f9f44eae0" -> "sha256:fe18f75156acd5f8ea3cd6b48ad67b749d034af3e730fc3846fb688e00a31e9a" [label=""];
}

