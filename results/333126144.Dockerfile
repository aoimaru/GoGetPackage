[app/sources/333126144.Dockerfile]
digraph {
  "sha256:6ac51835f9731a00a8504a2a0bcc48f96fd00e9f99dc6796f81c2bf7d1bbc0d3" [label="docker-image://docker.io/library/debian:8-slim" shape="ellipse"];
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" [label="docker-image://docker.io/library/golang:1.9" shape="ellipse"];
  "sha256:722b77d494fa500a2189210ca4713589574702c8b8289f70b39385d18fc739bc" [label="mkdir{path=/go/src/github.com/frankh/nano}" shape="note"];
  "sha256:31139abfa18b73b0e20bea5b2266c14356fae14b9aeaaea65e280c220d1d687d" [label="/bin/sh -c go get   github.com/frankh/crypto/ed25519   github.com/golang/crypto/blake2b   github.com/pkg/errors   github.com/dgraph-io/badger" shape="box"];
  "sha256:32ae9c77d4e7b14c081a931cf4bb09beeaf2b8e2fd85755deb24625aff0b7099" [label="local://context" shape="ellipse"];
  "sha256:4253d7dee9e3e41f56674678372c8ed6452a53c72de4c2636b3867e993a147a5" [label="copy{src=/, dest=/go/src/github.com/frankh/nano/}" shape="note"];
  "sha256:829beafdc9d0b152645087fffc74a5e81eca5161387ecba84f37689e9c371d11" [label="/bin/sh -c go build -o nano ." shape="box"];
  "sha256:45ef8170f38a2573bc4c447c854e07c4afacb7589947f2298dc410582eb705b4" [label="copy{src=/go/src/github.com/frankh/nano/nano, dest=/nano}" shape="note"];
  "sha256:1b6c93f9d5329b83235da56ffd121a330c8781b5805ce9f2c3a2d2a62d8b9824" [label="sha256:1b6c93f9d5329b83235da56ffd121a330c8781b5805ce9f2c3a2d2a62d8b9824" shape="plaintext"];
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" -> "sha256:722b77d494fa500a2189210ca4713589574702c8b8289f70b39385d18fc739bc" [label=""];
  "sha256:722b77d494fa500a2189210ca4713589574702c8b8289f70b39385d18fc739bc" -> "sha256:31139abfa18b73b0e20bea5b2266c14356fae14b9aeaaea65e280c220d1d687d" [label=""];
  "sha256:31139abfa18b73b0e20bea5b2266c14356fae14b9aeaaea65e280c220d1d687d" -> "sha256:4253d7dee9e3e41f56674678372c8ed6452a53c72de4c2636b3867e993a147a5" [label=""];
  "sha256:32ae9c77d4e7b14c081a931cf4bb09beeaf2b8e2fd85755deb24625aff0b7099" -> "sha256:4253d7dee9e3e41f56674678372c8ed6452a53c72de4c2636b3867e993a147a5" [label=""];
  "sha256:4253d7dee9e3e41f56674678372c8ed6452a53c72de4c2636b3867e993a147a5" -> "sha256:829beafdc9d0b152645087fffc74a5e81eca5161387ecba84f37689e9c371d11" [label=""];
  "sha256:6ac51835f9731a00a8504a2a0bcc48f96fd00e9f99dc6796f81c2bf7d1bbc0d3" -> "sha256:45ef8170f38a2573bc4c447c854e07c4afacb7589947f2298dc410582eb705b4" [label=""];
  "sha256:829beafdc9d0b152645087fffc74a5e81eca5161387ecba84f37689e9c371d11" -> "sha256:45ef8170f38a2573bc4c447c854e07c4afacb7589947f2298dc410582eb705b4" [label=""];
  "sha256:45ef8170f38a2573bc4c447c854e07c4afacb7589947f2298dc410582eb705b4" -> "sha256:1b6c93f9d5329b83235da56ffd121a330c8781b5805ce9f2c3a2d2a62d8b9824" [label=""];
}

