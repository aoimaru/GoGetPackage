[app/sources/249553889.Dockerfile]
digraph {
  "sha256:49c22f3c46ac33f934b99ae8d8931a3281c568e14144a24474629da154037493" [label="docker-image://docker.io/library/node:alpine" shape="ellipse"];
  "sha256:83be431a98bb69c73f82bc79d7a3ebdfe1a9a9ae31f08a3b72488068e44c6351" [label="/bin/sh -c apk add --no-cache \tgit" shape="box"];
  "sha256:59156ad2c49cc7bcb2d443ab88b24be45644db5ac3297a45a0573832df45ade2" [label="/bin/sh -c npm install -g \tbower \tgulp" shape="box"];
  "sha256:7751f1e1d7a2ec644d035c79c90b5ca2a290c8818cad113be1eac55394bbe555" [label="local://context" shape="ellipse"];
  "sha256:6629a82125b9ae1cbbc5c117d4a365ff748bb6c4eb875b5a732b6367df422270" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:5479b3f00fbccd5d036ec17acf1a8acb2f54e78ef4ed0966f59b3771ac639b6a" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:f9f9f3db74db0843d5df76a458992943e8d9882168b1d5c7570a17311391167d" [label="/bin/sh -c npm install" shape="box"];
  "sha256:14b5e9b81964de4cf764ac65ebab101e801dbf90bcb0d5990b82a836b70171a8" [label="/bin/sh -c bower install --allow-root" shape="box"];
  "sha256:95e7fae279d0aa13f27b04019fc2b0c8081578f4cc16c562f6d814f67d956c8a" [label="sha256:95e7fae279d0aa13f27b04019fc2b0c8081578f4cc16c562f6d814f67d956c8a" shape="plaintext"];
  "sha256:49c22f3c46ac33f934b99ae8d8931a3281c568e14144a24474629da154037493" -> "sha256:83be431a98bb69c73f82bc79d7a3ebdfe1a9a9ae31f08a3b72488068e44c6351" [label=""];
  "sha256:83be431a98bb69c73f82bc79d7a3ebdfe1a9a9ae31f08a3b72488068e44c6351" -> "sha256:59156ad2c49cc7bcb2d443ab88b24be45644db5ac3297a45a0573832df45ade2" [label=""];
  "sha256:59156ad2c49cc7bcb2d443ab88b24be45644db5ac3297a45a0573832df45ade2" -> "sha256:6629a82125b9ae1cbbc5c117d4a365ff748bb6c4eb875b5a732b6367df422270" [label=""];
  "sha256:7751f1e1d7a2ec644d035c79c90b5ca2a290c8818cad113be1eac55394bbe555" -> "sha256:6629a82125b9ae1cbbc5c117d4a365ff748bb6c4eb875b5a732b6367df422270" [label=""];
  "sha256:6629a82125b9ae1cbbc5c117d4a365ff748bb6c4eb875b5a732b6367df422270" -> "sha256:5479b3f00fbccd5d036ec17acf1a8acb2f54e78ef4ed0966f59b3771ac639b6a" [label=""];
  "sha256:5479b3f00fbccd5d036ec17acf1a8acb2f54e78ef4ed0966f59b3771ac639b6a" -> "sha256:f9f9f3db74db0843d5df76a458992943e8d9882168b1d5c7570a17311391167d" [label=""];
  "sha256:f9f9f3db74db0843d5df76a458992943e8d9882168b1d5c7570a17311391167d" -> "sha256:14b5e9b81964de4cf764ac65ebab101e801dbf90bcb0d5990b82a836b70171a8" [label=""];
  "sha256:14b5e9b81964de4cf764ac65ebab101e801dbf90bcb0d5990b82a836b70171a8" -> "sha256:95e7fae279d0aa13f27b04019fc2b0c8081578f4cc16c562f6d814f67d956c8a" [label=""];
}

