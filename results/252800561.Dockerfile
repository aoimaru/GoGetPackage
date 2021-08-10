[app/sources/252800561.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:ce5f26aff996fbf4e6e5c714d117ea37f8e6922d3e2cbb4eff267cbf18e840de" [label="/bin/sh -c apk --update add the_silver_searcher" shape="box"];
  "sha256:5ca59cc16829c10adb18f179009f6983caeabe3f57ff0c6872016d06e98036ad" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:41ec05361d3b551921b0b3a864da81b5fa3630a9d132c1a7166f74722ca74dfa" [label="sha256:41ec05361d3b551921b0b3a864da81b5fa3630a9d132c1a7166f74722ca74dfa" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:ce5f26aff996fbf4e6e5c714d117ea37f8e6922d3e2cbb4eff267cbf18e840de" [label=""];
  "sha256:ce5f26aff996fbf4e6e5c714d117ea37f8e6922d3e2cbb4eff267cbf18e840de" -> "sha256:5ca59cc16829c10adb18f179009f6983caeabe3f57ff0c6872016d06e98036ad" [label=""];
  "sha256:5ca59cc16829c10adb18f179009f6983caeabe3f57ff0c6872016d06e98036ad" -> "sha256:41ec05361d3b551921b0b3a864da81b5fa3630a9d132c1a7166f74722ca74dfa" [label=""];
}

