[app/sources/225612966.Dockerfile]
digraph {
  "sha256:4598a39c96f3259ca09d105bc7487003dddcf83708c2bbd9e6c1af44ac376f76" [label="docker-image://docker.io/livegrep/base:latest" shape="ellipse"];
  "sha256:4a1edff8b1eb2ae4c83db676be8ceb5642d360a702a8136353da62d32f0a96df" [label="/bin/sh -c apt-get --no-install-recommends -y install openssh-client ca-certificates git" shape="box"];
  "sha256:86b78e86dd52dfb63b5fa9db7b120287bba6110a402afb8f8149eb9dec87f33d" [label="sha256:86b78e86dd52dfb63b5fa9db7b120287bba6110a402afb8f8149eb9dec87f33d" shape="plaintext"];
  "sha256:4598a39c96f3259ca09d105bc7487003dddcf83708c2bbd9e6c1af44ac376f76" -> "sha256:4a1edff8b1eb2ae4c83db676be8ceb5642d360a702a8136353da62d32f0a96df" [label=""];
  "sha256:4a1edff8b1eb2ae4c83db676be8ceb5642d360a702a8136353da62d32f0a96df" -> "sha256:86b78e86dd52dfb63b5fa9db7b120287bba6110a402afb8f8149eb9dec87f33d" [label=""];
}

