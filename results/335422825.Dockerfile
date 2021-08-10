[app/sources/335422825.Dockerfile]
digraph {
  "sha256:dc8bc7d0589656994b6a56905a63badb7a7c20edad9d53db823274ffae84a9ce" [label="docker-image://docker.io/library/node:9-alpine" shape="ellipse"];
  "sha256:5b1ffd570c60b1e1b64ad30505dca0a8e6d380676c02b1f46a5380e9feb0331c" [label="/bin/sh -c npm i npm@latest -g  && npm install -g truffle@^4.1.0  && npm install -g ganache-cli" shape="box"];
  "sha256:14107a82d3d94a433c88aa3487ba24d3d4f0c4599d5fbaa1f15e5e8e866f3dde" [label="sha256:14107a82d3d94a433c88aa3487ba24d3d4f0c4599d5fbaa1f15e5e8e866f3dde" shape="plaintext"];
  "sha256:dc8bc7d0589656994b6a56905a63badb7a7c20edad9d53db823274ffae84a9ce" -> "sha256:5b1ffd570c60b1e1b64ad30505dca0a8e6d380676c02b1f46a5380e9feb0331c" [label=""];
  "sha256:5b1ffd570c60b1e1b64ad30505dca0a8e6d380676c02b1f46a5380e9feb0331c" -> "sha256:14107a82d3d94a433c88aa3487ba24d3d4f0c4599d5fbaa1f15e5e8e866f3dde" [label=""];
}

