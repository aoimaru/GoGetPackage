[app/sources/291178907.Dockerfile]
digraph {
  "sha256:1381899b4ef8f237bb874ed66f5679f9005d5770b241eeb2ead6209a291dcab9" [label="docker-image://docker.io/circleci/buildpack-deps:stretch-curl@sha256:a3e46cdab8547eb24ea4409edbf5812641cb8455da1aaa3819a3e9e611fd7017" shape="ellipse"];
  "sha256:803e6bedf97cda5ecc33a16270c2a45fd4687cba1a9c103a9509ab98e6541246" [label="/bin/sh -c apt-get update && apt-get install -y \t\tiptables \t\txz-utils && \tif ! apt-get install -y btrfs-tools; then  apt-get install -y btrfs-progs; fi" shape="box"];
  "sha256:06b4b8d6ed98e353e83a1595553c41d7bb81179c05c59d409c67cb5e67e9fad2" [label="/bin/sh -c set -x     && addgroup --system dockremap     && adduser --system --ingroup dockremap dockremap     && echo 'dockremap:165536:65536' >> /etc/subuid     && echo 'dockremap:165536:65536' >> /etc/subgid" shape="box"];
  "sha256:71c1c78e2441c7c7614e6c980a8e215608d218c08a58ba549100a4146776bbda" [label="/bin/sh -c wget -O /usr/local/bin/dind \"https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind\"     && chmod +x /usr/local/bin/dind" shape="box"];
  "sha256:ea682116a4b67c992d1af5fedc92c455fe65fb9dc3667d5a68808a9888c76bbe" [label="/bin/sh -c set -x     && addgroup --system docker     && sudo usermod --append --groups docker circleci" shape="box"];
  "sha256:58af7bd9beace3e699d7392c4cf07f9bb4d66d3cb45a7122dfa28029c2bb38de" [label="/bin/sh -c printf '#!/bin/sh \\nset -e \\nif [ \"$#\" -eq 0 -o \"${1#-}\" != \"$1\" ]; then \\n    set -- dockerd --host=unix:///var/run/docker.sock --host=tcp://0.0.0.0:2375 \"$@\" \\nfi \\n \\nif [ \"$1\" = 'dockerd' ]; then \\n    set -- sudo sh \"$(which dind)\" \"$@\" \\nfi \\n \\nexec \"$@\" \\n' > /usr/local/bin/dockerd-entrypoint.sh    && chmod +x /usr/local/bin/dockerd-entrypoint.sh" shape="box"];
  "sha256:b83f8489f78da272e229af02ef25ab92c5a5b9a3e44631f4504a1bb576eb4d18" [label="sha256:b83f8489f78da272e229af02ef25ab92c5a5b9a3e44631f4504a1bb576eb4d18" shape="plaintext"];
  "sha256:1381899b4ef8f237bb874ed66f5679f9005d5770b241eeb2ead6209a291dcab9" -> "sha256:803e6bedf97cda5ecc33a16270c2a45fd4687cba1a9c103a9509ab98e6541246" [label=""];
  "sha256:803e6bedf97cda5ecc33a16270c2a45fd4687cba1a9c103a9509ab98e6541246" -> "sha256:06b4b8d6ed98e353e83a1595553c41d7bb81179c05c59d409c67cb5e67e9fad2" [label=""];
  "sha256:06b4b8d6ed98e353e83a1595553c41d7bb81179c05c59d409c67cb5e67e9fad2" -> "sha256:71c1c78e2441c7c7614e6c980a8e215608d218c08a58ba549100a4146776bbda" [label=""];
  "sha256:71c1c78e2441c7c7614e6c980a8e215608d218c08a58ba549100a4146776bbda" -> "sha256:ea682116a4b67c992d1af5fedc92c455fe65fb9dc3667d5a68808a9888c76bbe" [label=""];
  "sha256:ea682116a4b67c992d1af5fedc92c455fe65fb9dc3667d5a68808a9888c76bbe" -> "sha256:58af7bd9beace3e699d7392c4cf07f9bb4d66d3cb45a7122dfa28029c2bb38de" [label=""];
  "sha256:58af7bd9beace3e699d7392c4cf07f9bb4d66d3cb45a7122dfa28029c2bb38de" -> "sha256:b83f8489f78da272e229af02ef25ab92c5a5b9a3e44631f4504a1bb576eb4d18" [label=""];
}

