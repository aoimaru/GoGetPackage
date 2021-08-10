[app/sources/320595520.Dockerfile]
digraph {
  "sha256:5f761cda434462cd1dbb70726e2d0b3703edeb65e48b639391d65e8b049ecb20" [label="local://context" shape="ellipse"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" [label="docker-image://docker.io/library/golang:alpine" shape="ellipse"];
  "sha256:1a43c3ea32ae9b5ab068701d5c2b0a3b3f22e27f6eb89e4b50c4246b6e4a9582" [label="/bin/sh -c apk --update add git openssh &&     rm -rf /var/lib/apt/lists/* &&     rm /var/cache/apk/*" shape="box"];
  "sha256:f9694c83a6b40a1f0305f5622a7cfddf73e077e451772540a3a2198dfb7d3752" [label="/bin/sh -c go get golang.org/x/tools/cmd/present" shape="box"];
  "sha256:ce3dc2adda71c88c56a25e738a96ba41acf1e0d3aa59aa388dee3e3feef17d1a" [label="copy{src=/101/kubernetes-101.slide, dest=/slides/101/}" shape="note"];
  "sha256:af95f63109780b0996d7b57b57cf1f9a1089e62296c3a08b9bd97725fb3ad1dd" [label="copy{src=/101/images, dest=/slides/101/images}" shape="note"];
  "sha256:2029860b24b529b944cb437df547ad784d6607b353ea716650926926c4289587" [label="copy{src=/101/yml, dest=/slides/101/yml}" shape="note"];
  "sha256:6037c5ef9f9ea65c14e565fc7667542dcacde2a65db8864c7b0a128db231c9eb" [label="copy{src=/clouds/kubernetes-clouds.slide, dest=/slides/clouds/}" shape="note"];
  "sha256:4025f8885332838b447a5fde2c287818ef7186371cd9e70541fa465dcc678142" [label="copy{src=/clouds/images, dest=/slides/clouds/images}" shape="note"];
  "sha256:6bf9109110bd075ca48dbc9eb1f15f3e6e1c9290bc99403e7014a00565ec24cf" [label="copy{src=/traefik/traefik.slide, dest=/slides/traefik/}" shape="note"];
  "sha256:ee6b7f7acee860057f4c06f7262f0f767c196b064f772fadba9453a83a99c445" [label="copy{src=/traefik/images, dest=/slides/traefik/images}" shape="note"];
  "sha256:7d0e3e51a320ee3e3e199b00d96a56bc52dd5846fe99d56a543a65819c5e516e" [label="copy{src=/providers/do/digital-ocean.slide, dest=/slides/providers/do/}" shape="note"];
  "sha256:f514d35e3b37db5d73fde8ec38627022b7882bf7b6e8b5e458e0553a3c185a9a" [label="copy{src=/providers/do/images, dest=/slides/providers/do/images}" shape="note"];
  "sha256:464efd5e0ebf25fdbe0ec46208f66ccfb43c043fb220694cec5bfb2dea08cc90" [label="mkdir{path=/slides}" shape="note"];
  "sha256:0718f92dd6ee189c9b0e4326f9777f7e2b10a60fff032af093a3fa064dc36a15" [label="sha256:0718f92dd6ee189c9b0e4326f9777f7e2b10a60fff032af093a3fa064dc36a15" shape="plaintext"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" -> "sha256:1a43c3ea32ae9b5ab068701d5c2b0a3b3f22e27f6eb89e4b50c4246b6e4a9582" [label=""];
  "sha256:1a43c3ea32ae9b5ab068701d5c2b0a3b3f22e27f6eb89e4b50c4246b6e4a9582" -> "sha256:f9694c83a6b40a1f0305f5622a7cfddf73e077e451772540a3a2198dfb7d3752" [label=""];
  "sha256:f9694c83a6b40a1f0305f5622a7cfddf73e077e451772540a3a2198dfb7d3752" -> "sha256:ce3dc2adda71c88c56a25e738a96ba41acf1e0d3aa59aa388dee3e3feef17d1a" [label=""];
  "sha256:5f761cda434462cd1dbb70726e2d0b3703edeb65e48b639391d65e8b049ecb20" -> "sha256:ce3dc2adda71c88c56a25e738a96ba41acf1e0d3aa59aa388dee3e3feef17d1a" [label=""];
  "sha256:ce3dc2adda71c88c56a25e738a96ba41acf1e0d3aa59aa388dee3e3feef17d1a" -> "sha256:af95f63109780b0996d7b57b57cf1f9a1089e62296c3a08b9bd97725fb3ad1dd" [label=""];
  "sha256:5f761cda434462cd1dbb70726e2d0b3703edeb65e48b639391d65e8b049ecb20" -> "sha256:af95f63109780b0996d7b57b57cf1f9a1089e62296c3a08b9bd97725fb3ad1dd" [label=""];
  "sha256:af95f63109780b0996d7b57b57cf1f9a1089e62296c3a08b9bd97725fb3ad1dd" -> "sha256:2029860b24b529b944cb437df547ad784d6607b353ea716650926926c4289587" [label=""];
  "sha256:5f761cda434462cd1dbb70726e2d0b3703edeb65e48b639391d65e8b049ecb20" -> "sha256:2029860b24b529b944cb437df547ad784d6607b353ea716650926926c4289587" [label=""];
  "sha256:2029860b24b529b944cb437df547ad784d6607b353ea716650926926c4289587" -> "sha256:6037c5ef9f9ea65c14e565fc7667542dcacde2a65db8864c7b0a128db231c9eb" [label=""];
  "sha256:5f761cda434462cd1dbb70726e2d0b3703edeb65e48b639391d65e8b049ecb20" -> "sha256:6037c5ef9f9ea65c14e565fc7667542dcacde2a65db8864c7b0a128db231c9eb" [label=""];
  "sha256:6037c5ef9f9ea65c14e565fc7667542dcacde2a65db8864c7b0a128db231c9eb" -> "sha256:4025f8885332838b447a5fde2c287818ef7186371cd9e70541fa465dcc678142" [label=""];
  "sha256:5f761cda434462cd1dbb70726e2d0b3703edeb65e48b639391d65e8b049ecb20" -> "sha256:4025f8885332838b447a5fde2c287818ef7186371cd9e70541fa465dcc678142" [label=""];
  "sha256:4025f8885332838b447a5fde2c287818ef7186371cd9e70541fa465dcc678142" -> "sha256:6bf9109110bd075ca48dbc9eb1f15f3e6e1c9290bc99403e7014a00565ec24cf" [label=""];
  "sha256:5f761cda434462cd1dbb70726e2d0b3703edeb65e48b639391d65e8b049ecb20" -> "sha256:6bf9109110bd075ca48dbc9eb1f15f3e6e1c9290bc99403e7014a00565ec24cf" [label=""];
  "sha256:6bf9109110bd075ca48dbc9eb1f15f3e6e1c9290bc99403e7014a00565ec24cf" -> "sha256:ee6b7f7acee860057f4c06f7262f0f767c196b064f772fadba9453a83a99c445" [label=""];
  "sha256:5f761cda434462cd1dbb70726e2d0b3703edeb65e48b639391d65e8b049ecb20" -> "sha256:ee6b7f7acee860057f4c06f7262f0f767c196b064f772fadba9453a83a99c445" [label=""];
  "sha256:ee6b7f7acee860057f4c06f7262f0f767c196b064f772fadba9453a83a99c445" -> "sha256:7d0e3e51a320ee3e3e199b00d96a56bc52dd5846fe99d56a543a65819c5e516e" [label=""];
  "sha256:5f761cda434462cd1dbb70726e2d0b3703edeb65e48b639391d65e8b049ecb20" -> "sha256:7d0e3e51a320ee3e3e199b00d96a56bc52dd5846fe99d56a543a65819c5e516e" [label=""];
  "sha256:7d0e3e51a320ee3e3e199b00d96a56bc52dd5846fe99d56a543a65819c5e516e" -> "sha256:f514d35e3b37db5d73fde8ec38627022b7882bf7b6e8b5e458e0553a3c185a9a" [label=""];
  "sha256:5f761cda434462cd1dbb70726e2d0b3703edeb65e48b639391d65e8b049ecb20" -> "sha256:f514d35e3b37db5d73fde8ec38627022b7882bf7b6e8b5e458e0553a3c185a9a" [label=""];
  "sha256:f514d35e3b37db5d73fde8ec38627022b7882bf7b6e8b5e458e0553a3c185a9a" -> "sha256:464efd5e0ebf25fdbe0ec46208f66ccfb43c043fb220694cec5bfb2dea08cc90" [label=""];
  "sha256:464efd5e0ebf25fdbe0ec46208f66ccfb43c043fb220694cec5bfb2dea08cc90" -> "sha256:0718f92dd6ee189c9b0e4326f9777f7e2b10a60fff032af093a3fa064dc36a15" [label=""];
}

