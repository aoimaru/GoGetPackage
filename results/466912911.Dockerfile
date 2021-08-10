[app/sources/466912911.Dockerfile]
digraph {
  "sha256:7997ead0267fe831acdd05d5fa5a571cb20d6e522cfd447e5453494215de6fe1" [label="docker-image://docker.io/library/node:10-alpine" shape="ellipse"];
  "sha256:3d6395611ab6fef5cac7a35fbfe7619f7787639ff2e12d3837cf763413315ca8" [label="mkdir{path=/usr/src/midtrans-payment-example-app}" shape="note"];
  "sha256:fd0b43c3f4a03a1e73271f5baec3e0dd7dbd140ac74036613efe874ffad0abe3" [label="local://context" shape="ellipse"];
  "sha256:447b60e914fb81b2475e96de51359f0a29510605f07b80d65c87b5a42f6aa1ec" [label="copy{src=/package*.json, dest=/usr/src/midtrans-payment-example-app/}" shape="note"];
  "sha256:ab0b93b416fd4f5df35cf03c70411a390c40defa9f40773e2a0a64890c2d9b84" [label="/bin/sh -c npm install" shape="box"];
  "sha256:4b416f03efa805b8cefa918e27926ccd547afa629c9335015cdd8449777c57d7" [label="copy{src=/, dest=/usr/src/midtrans-payment-example-app/}" shape="note"];
  "sha256:9b5997433490335f925f76ef921716929772a7ec9d5921f2012d8743e8e08642" [label="sha256:9b5997433490335f925f76ef921716929772a7ec9d5921f2012d8743e8e08642" shape="plaintext"];
  "sha256:7997ead0267fe831acdd05d5fa5a571cb20d6e522cfd447e5453494215de6fe1" -> "sha256:3d6395611ab6fef5cac7a35fbfe7619f7787639ff2e12d3837cf763413315ca8" [label=""];
  "sha256:3d6395611ab6fef5cac7a35fbfe7619f7787639ff2e12d3837cf763413315ca8" -> "sha256:447b60e914fb81b2475e96de51359f0a29510605f07b80d65c87b5a42f6aa1ec" [label=""];
  "sha256:fd0b43c3f4a03a1e73271f5baec3e0dd7dbd140ac74036613efe874ffad0abe3" -> "sha256:447b60e914fb81b2475e96de51359f0a29510605f07b80d65c87b5a42f6aa1ec" [label=""];
  "sha256:447b60e914fb81b2475e96de51359f0a29510605f07b80d65c87b5a42f6aa1ec" -> "sha256:ab0b93b416fd4f5df35cf03c70411a390c40defa9f40773e2a0a64890c2d9b84" [label=""];
  "sha256:ab0b93b416fd4f5df35cf03c70411a390c40defa9f40773e2a0a64890c2d9b84" -> "sha256:4b416f03efa805b8cefa918e27926ccd547afa629c9335015cdd8449777c57d7" [label=""];
  "sha256:fd0b43c3f4a03a1e73271f5baec3e0dd7dbd140ac74036613efe874ffad0abe3" -> "sha256:4b416f03efa805b8cefa918e27926ccd547afa629c9335015cdd8449777c57d7" [label=""];
  "sha256:4b416f03efa805b8cefa918e27926ccd547afa629c9335015cdd8449777c57d7" -> "sha256:9b5997433490335f925f76ef921716929772a7ec9d5921f2012d8743e8e08642" [label=""];
}

