[app/sources/472042286.Dockerfile]
digraph {
  "sha256:ddff5be28713bdc2b7c0745c6a1b25c3f8223a4bd78372e43eb8273b5a545642" [label="docker-image://docker.io/marhoy/balena-wpe:latest" shape="ellipse"];
  "sha256:a113a190f8cfbb43ffa5010cbcdcf70784a5b62218baac96ecbf25f25af598dc" [label="local://context" shape="ellipse"];
  "sha256:ff80ff54b757a622101136b9fac27c97dbf994731b4fc9b5098493a1d3cc0205" [label="copy{src=/udev-rules, dest=/etc/udev/rules.d/}" shape="note"];
  "sha256:6737bed5a7792fa63dfb2746822d6cf9c49f3da82c340fd54e6d290544a1dd0f" [label="copy{src=/wpe-init, dest=/wpe-init}" shape="note"];
  "sha256:0a7b8b073deb421427d34469b2eb5ca72c19e6a3bd4561e699e8cd286d23fa39" [label="/bin/sh -c chmod +x /wpe-init" shape="box"];
  "sha256:53e7057a07d1df6487c4a4aeb494fc7802fd04156e81033e87bf4b12475f57b1" [label="/bin/sh -c wget -O tohora.tgz     \"https://github.com/mozz100/tohora/releases/download/v\"$TOHORA_VERSION\"/tohora_\"$TOHORA_VERSION\"_Linux_armv5.tar.gz\"     && tar xzf tohora.tgz     && rm tohora.tgz" shape="box"];
  "sha256:0b9463983d044f171a48f7ce68362528acc019e3f14077477e089139a45c2230" [label="sha256:0b9463983d044f171a48f7ce68362528acc019e3f14077477e089139a45c2230" shape="plaintext"];
  "sha256:ddff5be28713bdc2b7c0745c6a1b25c3f8223a4bd78372e43eb8273b5a545642" -> "sha256:ff80ff54b757a622101136b9fac27c97dbf994731b4fc9b5098493a1d3cc0205" [label=""];
  "sha256:a113a190f8cfbb43ffa5010cbcdcf70784a5b62218baac96ecbf25f25af598dc" -> "sha256:ff80ff54b757a622101136b9fac27c97dbf994731b4fc9b5098493a1d3cc0205" [label=""];
  "sha256:ff80ff54b757a622101136b9fac27c97dbf994731b4fc9b5098493a1d3cc0205" -> "sha256:6737bed5a7792fa63dfb2746822d6cf9c49f3da82c340fd54e6d290544a1dd0f" [label=""];
  "sha256:a113a190f8cfbb43ffa5010cbcdcf70784a5b62218baac96ecbf25f25af598dc" -> "sha256:6737bed5a7792fa63dfb2746822d6cf9c49f3da82c340fd54e6d290544a1dd0f" [label=""];
  "sha256:6737bed5a7792fa63dfb2746822d6cf9c49f3da82c340fd54e6d290544a1dd0f" -> "sha256:0a7b8b073deb421427d34469b2eb5ca72c19e6a3bd4561e699e8cd286d23fa39" [label=""];
  "sha256:0a7b8b073deb421427d34469b2eb5ca72c19e6a3bd4561e699e8cd286d23fa39" -> "sha256:53e7057a07d1df6487c4a4aeb494fc7802fd04156e81033e87bf4b12475f57b1" [label=""];
  "sha256:53e7057a07d1df6487c4a4aeb494fc7802fd04156e81033e87bf4b12475f57b1" -> "sha256:0b9463983d044f171a48f7ce68362528acc019e3f14077477e089139a45c2230" [label=""];
}

