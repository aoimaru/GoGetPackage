[app/sources/320100240.Dockerfile]
digraph {
  "sha256:8cb4185285015c4737fb1c934e9e800384ae597941c596041b6c23e1e78a68fe" [label="docker-image://docker.io/library/debian:buster" shape="ellipse"];
  "sha256:940d018f56220e12855c5ae7f8f7785aef053751b77151cf63cbc8246b8692a7" [label="/bin/sh -c apt-get update && apt-get install -y \tca-certificates \tgcc \tgit \tlibncurses5 \tlibncurses5-dev \tlibncursesw5 \tlibncursesw5-dev \tmake \t--no-install-recommends \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:28be14f4e844edffb048da0ec3861295c709451561164fd9d71dbe536ad7b02f" [label="/bin/sh -c git clone --depth 1 --recursive https://github.com/visit1985/mdp.git /src" shape="box"];
  "sha256:dc85ee8213e45df70e3bfe231ac6137070ee257732aeeaa7a99daadccd558b80" [label="mkdir{path=/src}" shape="note"];
  "sha256:dcf3a57f762f1ed7b7e2109464946576eaa465f8af29bac63ed62b5a4ed74b6b" [label="/bin/sh -c make \t&& make install" shape="box"];
  "sha256:befabd0e78cd9906862720f0e7e27df692d6c90115de0b08e9f1213ecc8519b9" [label="sha256:befabd0e78cd9906862720f0e7e27df692d6c90115de0b08e9f1213ecc8519b9" shape="plaintext"];
  "sha256:8cb4185285015c4737fb1c934e9e800384ae597941c596041b6c23e1e78a68fe" -> "sha256:940d018f56220e12855c5ae7f8f7785aef053751b77151cf63cbc8246b8692a7" [label=""];
  "sha256:940d018f56220e12855c5ae7f8f7785aef053751b77151cf63cbc8246b8692a7" -> "sha256:28be14f4e844edffb048da0ec3861295c709451561164fd9d71dbe536ad7b02f" [label=""];
  "sha256:28be14f4e844edffb048da0ec3861295c709451561164fd9d71dbe536ad7b02f" -> "sha256:dc85ee8213e45df70e3bfe231ac6137070ee257732aeeaa7a99daadccd558b80" [label=""];
  "sha256:dc85ee8213e45df70e3bfe231ac6137070ee257732aeeaa7a99daadccd558b80" -> "sha256:dcf3a57f762f1ed7b7e2109464946576eaa465f8af29bac63ed62b5a4ed74b6b" [label=""];
  "sha256:dcf3a57f762f1ed7b7e2109464946576eaa465f8af29bac63ed62b5a4ed74b6b" -> "sha256:befabd0e78cd9906862720f0e7e27df692d6c90115de0b08e9f1213ecc8519b9" [label=""];
}

