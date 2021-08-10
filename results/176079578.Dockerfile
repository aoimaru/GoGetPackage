[app/sources/176079578.Dockerfile]
digraph {
  "sha256:d512fbb8ada5adddf38da963160ede4e76aa66a0a5498ca5a01bd345de7a3abf" [label="docker-image://docker.io/library/debian:wheezy" shape="ellipse"];
  "sha256:8f5dfa79194801f0238dea4747a1355b9110bfd5ff270f31d4ee88cadcbf7821" [label="/bin/sh -c apt-get update && apt-get install -y curl" shape="box"];
  "sha256:c9b99ca932fee0e39098745fd88a648b13a3dfea7ecef9149e2477e726a22eb7" [label="/bin/sh -c touch .profile" shape="box"];
  "sha256:4eb76051d3e70304cc181850c60261da37dcfc98c2d31ef35bde788a630be8f1" [label="/bin/sh -c curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.30.2/install.sh | bash" shape="box"];
  "sha256:bebfb3e93714288bbced7321ef188e7f43fd838941997ab400dd480ec1d84c91" [label="sha256:bebfb3e93714288bbced7321ef188e7f43fd838941997ab400dd480ec1d84c91" shape="plaintext"];
  "sha256:d512fbb8ada5adddf38da963160ede4e76aa66a0a5498ca5a01bd345de7a3abf" -> "sha256:8f5dfa79194801f0238dea4747a1355b9110bfd5ff270f31d4ee88cadcbf7821" [label=""];
  "sha256:8f5dfa79194801f0238dea4747a1355b9110bfd5ff270f31d4ee88cadcbf7821" -> "sha256:c9b99ca932fee0e39098745fd88a648b13a3dfea7ecef9149e2477e726a22eb7" [label=""];
  "sha256:c9b99ca932fee0e39098745fd88a648b13a3dfea7ecef9149e2477e726a22eb7" -> "sha256:4eb76051d3e70304cc181850c60261da37dcfc98c2d31ef35bde788a630be8f1" [label=""];
  "sha256:4eb76051d3e70304cc181850c60261da37dcfc98c2d31ef35bde788a630be8f1" -> "sha256:bebfb3e93714288bbced7321ef188e7f43fd838941997ab400dd480ec1d84c91" [label=""];
}

