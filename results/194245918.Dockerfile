[app/sources/194245918.Dockerfile]
digraph {
  "sha256:8f58a295a117d8705110ffb7bfe0315f19904c2a28bfaad2b6115e6326fea143" [label="docker-image://docker.io/library/fwd-ubuntu-bionic:latest" shape="ellipse"];
  "sha256:3ee98b4eeb20c4d64d5fe56f9058ce10c0e25a40df250273f7bad1a6c9adc02a" [label="/bin/sh -c apt-get update ; apt-get -y install rsync libreadline-dev" shape="box"];
  "sha256:4546313d2beeb70ecb0f38824d2c3930377d66a5e9518b613edde09a0d538ac7" [label="sha256:4546313d2beeb70ecb0f38824d2c3930377d66a5e9518b613edde09a0d538ac7" shape="plaintext"];
  "sha256:8f58a295a117d8705110ffb7bfe0315f19904c2a28bfaad2b6115e6326fea143" -> "sha256:3ee98b4eeb20c4d64d5fe56f9058ce10c0e25a40df250273f7bad1a6c9adc02a" [label=""];
  "sha256:3ee98b4eeb20c4d64d5fe56f9058ce10c0e25a40df250273f7bad1a6c9adc02a" -> "sha256:4546313d2beeb70ecb0f38824d2c3930377d66a5e9518b613edde09a0d538ac7" [label=""];
}

