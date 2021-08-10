[app/sources/252854588.Dockerfile]
digraph {
  "sha256:9c0f10bbb79e89e95fb7e60164485ee1a02f9a4e0c5d5d092838ebcf434d5475" [label="docker-image://docker.io/library/node:4.5" shape="ellipse"];
  "sha256:4a51565c69fa6e0a2a6a3a4c072699dc17d0ec083ce8e06432e42fe474deb444" [label="/bin/sh -c npm i -g npm@3" shape="box"];
  "sha256:b7a3f75bee421a91873e05c20999de6a750f19d8e0b9214d7c6892e9abfb2a14" [label="/bin/sh -c mkdir -p $DIR" shape="box"];
  "sha256:fefc18efbcae88751bd21a472895a61f2ccaa3d192d271b28134e1fa1f989df8" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:488792722150cadf74462b889fe037590075cac6bf821fd34a8610e912b407d2" [label="local://context" shape="ellipse"];
  "sha256:c6110f130d2af983dbd67a225b047aeadf47c1e1b3ef62f44480e83311afabce" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:df0d396c8f8dc1720400ed0d672b36c523d860c4290a4fe0861d2201c1dfc5cc" [label="/bin/sh -c npm install" shape="box"];
  "sha256:998e0979fcf097183acd94967c9eaf0cfc6c88a91b6e5c196e618ebfb0217dd0" [label="/bin/sh -c $DIR/node_modules/.bin/clap build" shape="box"];
  "sha256:da84d2a14dae710e3af29680abf0eb4a575fdba778b1ee489d173ca8a6a61287" [label="sha256:da84d2a14dae710e3af29680abf0eb4a575fdba778b1ee489d173ca8a6a61287" shape="plaintext"];
  "sha256:9c0f10bbb79e89e95fb7e60164485ee1a02f9a4e0c5d5d092838ebcf434d5475" -> "sha256:4a51565c69fa6e0a2a6a3a4c072699dc17d0ec083ce8e06432e42fe474deb444" [label=""];
  "sha256:4a51565c69fa6e0a2a6a3a4c072699dc17d0ec083ce8e06432e42fe474deb444" -> "sha256:b7a3f75bee421a91873e05c20999de6a750f19d8e0b9214d7c6892e9abfb2a14" [label=""];
  "sha256:b7a3f75bee421a91873e05c20999de6a750f19d8e0b9214d7c6892e9abfb2a14" -> "sha256:fefc18efbcae88751bd21a472895a61f2ccaa3d192d271b28134e1fa1f989df8" [label=""];
  "sha256:fefc18efbcae88751bd21a472895a61f2ccaa3d192d271b28134e1fa1f989df8" -> "sha256:c6110f130d2af983dbd67a225b047aeadf47c1e1b3ef62f44480e83311afabce" [label=""];
  "sha256:488792722150cadf74462b889fe037590075cac6bf821fd34a8610e912b407d2" -> "sha256:c6110f130d2af983dbd67a225b047aeadf47c1e1b3ef62f44480e83311afabce" [label=""];
  "sha256:c6110f130d2af983dbd67a225b047aeadf47c1e1b3ef62f44480e83311afabce" -> "sha256:df0d396c8f8dc1720400ed0d672b36c523d860c4290a4fe0861d2201c1dfc5cc" [label=""];
  "sha256:df0d396c8f8dc1720400ed0d672b36c523d860c4290a4fe0861d2201c1dfc5cc" -> "sha256:998e0979fcf097183acd94967c9eaf0cfc6c88a91b6e5c196e618ebfb0217dd0" [label=""];
  "sha256:998e0979fcf097183acd94967c9eaf0cfc6c88a91b6e5c196e618ebfb0217dd0" -> "sha256:da84d2a14dae710e3af29680abf0eb4a575fdba778b1ee489d173ca8a6a61287" [label=""];
}

