[app/sources/140901749.Dockerfile]
digraph {
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" [label="docker-image://docker.io/library/golang:alpine" shape="ellipse"];
  "sha256:316ef9ccf148fc7b34d50e2b74f9c343b1369392f1cd6625d845e5d9752cfc8a" [label="local://context" shape="ellipse"];
  "sha256:345bb6ba986a34c44e2d7a55048895d6d44abb0c57c69c09146d27348f4f5308" [label="copy{src=/helloworld.go, dest=/}" shape="note"];
  "sha256:e05ebfdedf23a0fa63b8c5c5d88732703b8d2874d1a3fab056ea1d61cc425d18" [label="/bin/sh -c go build -o /helloworld /helloworld.go" shape="box"];
  "sha256:a0f55a1ebb9d3a2ee7f09d2ca4ba5f2b8fe05d013072f7855fff8f4bdaaa065c" [label="sha256:a0f55a1ebb9d3a2ee7f09d2ca4ba5f2b8fe05d013072f7855fff8f4bdaaa065c" shape="plaintext"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" -> "sha256:345bb6ba986a34c44e2d7a55048895d6d44abb0c57c69c09146d27348f4f5308" [label=""];
  "sha256:316ef9ccf148fc7b34d50e2b74f9c343b1369392f1cd6625d845e5d9752cfc8a" -> "sha256:345bb6ba986a34c44e2d7a55048895d6d44abb0c57c69c09146d27348f4f5308" [label=""];
  "sha256:345bb6ba986a34c44e2d7a55048895d6d44abb0c57c69c09146d27348f4f5308" -> "sha256:e05ebfdedf23a0fa63b8c5c5d88732703b8d2874d1a3fab056ea1d61cc425d18" [label=""];
  "sha256:e05ebfdedf23a0fa63b8c5c5d88732703b8d2874d1a3fab056ea1d61cc425d18" -> "sha256:a0f55a1ebb9d3a2ee7f09d2ca4ba5f2b8fe05d013072f7855fff8f4bdaaa065c" [label=""];
}

