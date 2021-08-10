[app/sources/345356901.Dockerfile]
digraph {
  "sha256:df407583c2565da7581946d0c9f15d57f68e1aa9a1bdd10c0f0ad90a665bf981" [label="docker-image://docker.io/balenalib/i386-ubuntu:xenial-build" shape="ellipse"];
  "sha256:56b50c2ebfa395b26514e648ea3454b8b2b887d047ed4417dda7f4689ec7cfa1" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:9b2400d78f26478e1b2fc4c74c401fed23885f65485f345a946011836dd32881" [label="sha256:9b2400d78f26478e1b2fc4c74c401fed23885f65485f345a946011836dd32881" shape="plaintext"];
  "sha256:df407583c2565da7581946d0c9f15d57f68e1aa9a1bdd10c0f0ad90a665bf981" -> "sha256:56b50c2ebfa395b26514e648ea3454b8b2b887d047ed4417dda7f4689ec7cfa1" [label=""];
  "sha256:56b50c2ebfa395b26514e648ea3454b8b2b887d047ed4417dda7f4689ec7cfa1" -> "sha256:9b2400d78f26478e1b2fc4c74c401fed23885f65485f345a946011836dd32881" [label=""];
}

