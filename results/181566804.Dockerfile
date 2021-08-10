[app/sources/181566804.Dockerfile]
digraph {
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:e2759ee57c9f3b6510c5ec7f594554a375259b58d277aef5b19c94e85262cbca" [label="/bin/sh -c npm install -g node-static live-server bower grunt-cli" shape="box"];
  "sha256:20faa95f3fa0fab6ff053dedff97a2e46a1d3f27eaea64a4fe3b5e8cfba27d6d" [label="mkdir{path=/static}" shape="note"];
  "sha256:56c6cb9fff0d0f5d8a7353a134bd21610a0a863bc51fb7df6fd41e0c2d2648ab" [label="sha256:56c6cb9fff0d0f5d8a7353a134bd21610a0a863bc51fb7df6fd41e0c2d2648ab" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:e2759ee57c9f3b6510c5ec7f594554a375259b58d277aef5b19c94e85262cbca" [label=""];
  "sha256:e2759ee57c9f3b6510c5ec7f594554a375259b58d277aef5b19c94e85262cbca" -> "sha256:20faa95f3fa0fab6ff053dedff97a2e46a1d3f27eaea64a4fe3b5e8cfba27d6d" [label=""];
  "sha256:20faa95f3fa0fab6ff053dedff97a2e46a1d3f27eaea64a4fe3b5e8cfba27d6d" -> "sha256:56c6cb9fff0d0f5d8a7353a134bd21610a0a863bc51fb7df6fd41e0c2d2648ab" [label=""];
}

