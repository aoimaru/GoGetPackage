[app/sources/252800189.Dockerfile]
digraph {
  "sha256:040d72d47c9a38b7c725e1d56991bb53b1601277457a9bab828c54119d442590" [label="docker-image://docker.io/library/node:8.2-alpine" shape="ellipse"];
  "sha256:aa803c62a73b6df998385f3db556b3dadfad62c705ed535a37b1f956a32757ac" [label="local://context" shape="ellipse"];
  "sha256:6b2346a907db5684432c1a53ea1fa54b5c2e0567e16aa0d1f969610e917abcd3" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:bffc2bbfa64053ed463cfa13e45625e49c68d28b71bb2ba5a37f01802a723424" [label="mkdir{path=/app}" shape="note"];
  "sha256:a85e064e4fc28704a4cdeb3ff88e5ce9554e5c300cd2a1cac0d32789216b019c" [label="/bin/sh -c npm i -g nodemon typescript && npm i && tsc && apk --update add git && git clone https://github.com/terraform-providers/terraform-provider-aws.git" shape="box"];
  "sha256:c62d7d33836d429b3a3a65c86eb1cc6595e59bc1cbbb66bd47b1cd780cc112ce" [label="sha256:c62d7d33836d429b3a3a65c86eb1cc6595e59bc1cbbb66bd47b1cd780cc112ce" shape="plaintext"];
  "sha256:040d72d47c9a38b7c725e1d56991bb53b1601277457a9bab828c54119d442590" -> "sha256:6b2346a907db5684432c1a53ea1fa54b5c2e0567e16aa0d1f969610e917abcd3" [label=""];
  "sha256:aa803c62a73b6df998385f3db556b3dadfad62c705ed535a37b1f956a32757ac" -> "sha256:6b2346a907db5684432c1a53ea1fa54b5c2e0567e16aa0d1f969610e917abcd3" [label=""];
  "sha256:6b2346a907db5684432c1a53ea1fa54b5c2e0567e16aa0d1f969610e917abcd3" -> "sha256:bffc2bbfa64053ed463cfa13e45625e49c68d28b71bb2ba5a37f01802a723424" [label=""];
  "sha256:bffc2bbfa64053ed463cfa13e45625e49c68d28b71bb2ba5a37f01802a723424" -> "sha256:a85e064e4fc28704a4cdeb3ff88e5ce9554e5c300cd2a1cac0d32789216b019c" [label=""];
  "sha256:a85e064e4fc28704a4cdeb3ff88e5ce9554e5c300cd2a1cac0d32789216b019c" -> "sha256:c62d7d33836d429b3a3a65c86eb1cc6595e59bc1cbbb66bd47b1cd780cc112ce" [label=""];
}

