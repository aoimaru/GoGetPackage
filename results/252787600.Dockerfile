[app/sources/252787600.Dockerfile]
digraph {
  "sha256:e784024e57ad4a3e1d11fd396df967dac19223c62b319df5f5630eef9e57aa3f" [label="docker-image://docker.io/brownman/bashrc:latest" shape="ellipse"];
  "sha256:6180219963faba4ab003b1e31f1f1a22555187ad66eff53823a753f92b75994a" [label="local://context" shape="ellipse"];
  "sha256:413a91401522cb86562f8e83f532ee839f780f8377c282148400dd26d96eccda" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:984d0af29a7bb05d39127dac5d902f960f7daf2a0eb17959b899fd86b0a94eb0" [label="/bin/sh -c sudo chmod 755 $HOME/nvm.sh && bash -c $HOME/nvm.sh" shape="box"];
  "sha256:c2f7c8c078d16a66bcbee5af046cbde5992dfabb3a9a6fc0a5adf169b28e4bf3" [label="sha256:c2f7c8c078d16a66bcbee5af046cbde5992dfabb3a9a6fc0a5adf169b28e4bf3" shape="plaintext"];
  "sha256:e784024e57ad4a3e1d11fd396df967dac19223c62b319df5f5630eef9e57aa3f" -> "sha256:413a91401522cb86562f8e83f532ee839f780f8377c282148400dd26d96eccda" [label=""];
  "sha256:6180219963faba4ab003b1e31f1f1a22555187ad66eff53823a753f92b75994a" -> "sha256:413a91401522cb86562f8e83f532ee839f780f8377c282148400dd26d96eccda" [label=""];
  "sha256:413a91401522cb86562f8e83f532ee839f780f8377c282148400dd26d96eccda" -> "sha256:984d0af29a7bb05d39127dac5d902f960f7daf2a0eb17959b899fd86b0a94eb0" [label=""];
  "sha256:984d0af29a7bb05d39127dac5d902f960f7daf2a0eb17959b899fd86b0a94eb0" -> "sha256:c2f7c8c078d16a66bcbee5af046cbde5992dfabb3a9a6fc0a5adf169b28e4bf3" [label=""];
}

