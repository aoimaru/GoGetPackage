[app/sources/316880703.Dockerfile]
digraph {
  "sha256:93f2639b79fb7fe4d7be5a102c3d6518ec2c7128802f1ae85310644ec8fe6a8b" [label="docker-image://docker.io/friendica/server:fpm" shape="ellipse"];
  "sha256:74a41c67b009fdc17fedfd7c08765548b5effd8db6b6d2e418dc4fdd41d78fbd" [label="/bin/sh -c mkdir -p /usr/src/config" shape="box"];
  "sha256:4f3a70afb2bf7c9fcf6a13d5469bc12a26b923ca88b90831644adea8faf95f0f" [label="local://context" shape="ellipse"];
  "sha256:bcb110ce069c168c1451d7d67b77d355f576432908e7bed1e173a65233b8d604" [label="copy{src=/addon.config.php, dest=/usr/src/config/}" shape="note"];
  "sha256:3b72a022cf9aa09b6eda2b881e8038757b53806f3d44cfb3e7affd2dda20ca23" [label="sha256:3b72a022cf9aa09b6eda2b881e8038757b53806f3d44cfb3e7affd2dda20ca23" shape="plaintext"];
  "sha256:93f2639b79fb7fe4d7be5a102c3d6518ec2c7128802f1ae85310644ec8fe6a8b" -> "sha256:74a41c67b009fdc17fedfd7c08765548b5effd8db6b6d2e418dc4fdd41d78fbd" [label=""];
  "sha256:74a41c67b009fdc17fedfd7c08765548b5effd8db6b6d2e418dc4fdd41d78fbd" -> "sha256:bcb110ce069c168c1451d7d67b77d355f576432908e7bed1e173a65233b8d604" [label=""];
  "sha256:4f3a70afb2bf7c9fcf6a13d5469bc12a26b923ca88b90831644adea8faf95f0f" -> "sha256:bcb110ce069c168c1451d7d67b77d355f576432908e7bed1e173a65233b8d604" [label=""];
  "sha256:bcb110ce069c168c1451d7d67b77d355f576432908e7bed1e173a65233b8d604" -> "sha256:3b72a022cf9aa09b6eda2b881e8038757b53806f3d44cfb3e7affd2dda20ca23" [label=""];
}

