[app/sources/216263039.Dockerfile]
digraph {
  "sha256:fc46cb1631edaa4c1a16cd39f7052818e0a1cacf7cf608632d0c4f5075cb2f59" [label="docker-image://docker.io/library/swarmci:latest" shape="ellipse"];
  "sha256:e35802e7f1019a9a0f533c702b484be013700ca667ef93291fbd4a0a86b3a305" [label="/bin/sh -c pip install tox" shape="box"];
  "sha256:3e64345331051974cf6250d5ebc28b1024062d5ed0ad5bd7a05fdaa539c2aacd" [label="sha256:3e64345331051974cf6250d5ebc28b1024062d5ed0ad5bd7a05fdaa539c2aacd" shape="plaintext"];
  "sha256:fc46cb1631edaa4c1a16cd39f7052818e0a1cacf7cf608632d0c4f5075cb2f59" -> "sha256:e35802e7f1019a9a0f533c702b484be013700ca667ef93291fbd4a0a86b3a305" [label=""];
  "sha256:e35802e7f1019a9a0f533c702b484be013700ca667ef93291fbd4a0a86b3a305" -> "sha256:3e64345331051974cf6250d5ebc28b1024062d5ed0ad5bd7a05fdaa539c2aacd" [label=""];
}

