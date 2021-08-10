[app/sources/205303697.Dockerfile]
digraph {
  "sha256:41fd22cdbd9ce09a6a60826c8a9ef9bad1acc47038b7403637e2e97b9bc3303b" [label="docker-image://docker.io/library/nginx:1.9" shape="ellipse"];
  "sha256:f4511e7ea67155804ff17da3016b9e46b1e3c3ce274ace151e1eb736a59e45c8" [label="local://context" shape="ellipse"];
  "sha256:3f9630a0e700f240329333dece2ded60b58d3c0ecc431b0fbc1ea882e5d73e35" [label="copy{src=/dist, dest=/usr/share/nginx/html}" shape="note"];
  "sha256:249b4fabfeb748a66bcb6f5e598f73835e7777046a89c0e18b531c6df44ecab4" [label="sha256:249b4fabfeb748a66bcb6f5e598f73835e7777046a89c0e18b531c6df44ecab4" shape="plaintext"];
  "sha256:41fd22cdbd9ce09a6a60826c8a9ef9bad1acc47038b7403637e2e97b9bc3303b" -> "sha256:3f9630a0e700f240329333dece2ded60b58d3c0ecc431b0fbc1ea882e5d73e35" [label=""];
  "sha256:f4511e7ea67155804ff17da3016b9e46b1e3c3ce274ace151e1eb736a59e45c8" -> "sha256:3f9630a0e700f240329333dece2ded60b58d3c0ecc431b0fbc1ea882e5d73e35" [label=""];
  "sha256:3f9630a0e700f240329333dece2ded60b58d3c0ecc431b0fbc1ea882e5d73e35" -> "sha256:249b4fabfeb748a66bcb6f5e598f73835e7777046a89c0e18b531c6df44ecab4" [label=""];
}

