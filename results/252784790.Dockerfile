[app/sources/252784790.Dockerfile]
digraph {
  "sha256:5e2d088cf9efbfed80aaf317788672d3024cb82fcf9c01b5de69400940fb7607" [label="docker-image://docker.io/library/node:6.9-slim" shape="ellipse"];
  "sha256:8d1de2e35e8168043580e7a33c8ff9a105033aae9b508026e0ab9aa56f04d3a9" [label="/bin/sh -c npm install --global --unsafe-perm slackin@$SLACKIN_VERSION" shape="box"];
  "sha256:832b7e514a004f01ba5a98e827c28530018412dbaae829c93a493a4d932c33a0" [label="sha256:832b7e514a004f01ba5a98e827c28530018412dbaae829c93a493a4d932c33a0" shape="plaintext"];
  "sha256:5e2d088cf9efbfed80aaf317788672d3024cb82fcf9c01b5de69400940fb7607" -> "sha256:8d1de2e35e8168043580e7a33c8ff9a105033aae9b508026e0ab9aa56f04d3a9" [label=""];
  "sha256:8d1de2e35e8168043580e7a33c8ff9a105033aae9b508026e0ab9aa56f04d3a9" -> "sha256:832b7e514a004f01ba5a98e827c28530018412dbaae829c93a493a4d932c33a0" [label=""];
}

