[app/sources/201188382.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:3951cc8b68a6b6bcc72264b241121da515fb2cc746fb3b80a907d2b5d34ce073" [label="mkdir{path=/p2pool}" shape="note"];
  "sha256:70325635c609783995cb0190a4efa9062830b16cc0c09a3f76391d47cc22dbdc" [label="/bin/sh -c apk --no-cache add     git     perl     python     python-dev     py-twisted     gcc     g++   && git clone $P2POOL_DASH_REPO $P2POOL_DASH_HOME   && cd $P2POOL_DASH_HOME   && git submodule init   && git submodule update   && cd dash_hash && python setup.py install && cd ..   && apk -v del     git     python-dev     perl     gcc     g++" shape="box"];
  "sha256:cea2da4cedd5569d261d5c96147c04cd9af93e1d141b76fcbf1d061ddd1a5130" [label="/bin/sh -c apk --no-cache add bash" shape="box"];
  "sha256:5b9a0694e3edaeda92fa1c12209e43420ea48f996c596e61d86c7d47ce0e27eb" [label="mkdir{path=/p2pool/p2pool-dash}" shape="note"];
  "sha256:d06e0b2e82261455bd9677a2a27a26173f29e9ac255072f58c86687ff19d802c" [label="/bin/sh -c chown -R nobody $P2POOL_DASH_HOME" shape="box"];
  "sha256:f53cdbb715f35170ac793edccf3325343733355378ec93d0a464413245de3c6d" [label="sha256:f53cdbb715f35170ac793edccf3325343733355378ec93d0a464413245de3c6d" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:3951cc8b68a6b6bcc72264b241121da515fb2cc746fb3b80a907d2b5d34ce073" [label=""];
  "sha256:3951cc8b68a6b6bcc72264b241121da515fb2cc746fb3b80a907d2b5d34ce073" -> "sha256:70325635c609783995cb0190a4efa9062830b16cc0c09a3f76391d47cc22dbdc" [label=""];
  "sha256:70325635c609783995cb0190a4efa9062830b16cc0c09a3f76391d47cc22dbdc" -> "sha256:cea2da4cedd5569d261d5c96147c04cd9af93e1d141b76fcbf1d061ddd1a5130" [label=""];
  "sha256:cea2da4cedd5569d261d5c96147c04cd9af93e1d141b76fcbf1d061ddd1a5130" -> "sha256:5b9a0694e3edaeda92fa1c12209e43420ea48f996c596e61d86c7d47ce0e27eb" [label=""];
  "sha256:5b9a0694e3edaeda92fa1c12209e43420ea48f996c596e61d86c7d47ce0e27eb" -> "sha256:d06e0b2e82261455bd9677a2a27a26173f29e9ac255072f58c86687ff19d802c" [label=""];
  "sha256:d06e0b2e82261455bd9677a2a27a26173f29e9ac255072f58c86687ff19d802c" -> "sha256:f53cdbb715f35170ac793edccf3325343733355378ec93d0a464413245de3c6d" [label=""];
}

