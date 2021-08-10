[app/sources/188721637.Dockerfile]
digraph {
  "sha256:926a1cc4b10247bc9686839aa034030394e419f79bb0d18ee15c18ccd0bb6973" [label="https://github.com/krallin/tini/releases/download/v0.18.0/tini" shape="ellipse"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:821a95b827c6a77c5644efa3aec444d3f82334fe5906263526e81c4aeff54dea" [label="/bin/sh -c apt-get update     && apt-get install -y         libgtk2.0-0 libcanberra-gtk-module libxext-dev libxrender-dev libxtst-dev libxslt-dev dmz-cursor-theme         build-essential cmake git         libglfw3-dev libassimp-dev libxinerama-dev libxcursor-dev mesa-utils mesa-utils-extra kmod         wget htop zip unzip nano     && apt-get clean && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:6a9efe551bffbae99eae31fc55900f37c617ca78c77dd04d6f7fe0be69d699d8" [label="copy{src=/tini, dest=/tini}" shape="note"];
  "sha256:d7c68fae8de373e78910269ed94c9bd216eeded47be16e73389bcdf458d5cc51" [label="/bin/sh -c chmod +x /tini" shape="box"];
  "sha256:ab25fb6464960d3e04499c681c765c0e0450f43355dc3fe989937cfd102a60eb" [label="sha256:ab25fb6464960d3e04499c681c765c0e0450f43355dc3fe989937cfd102a60eb" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:821a95b827c6a77c5644efa3aec444d3f82334fe5906263526e81c4aeff54dea" [label=""];
  "sha256:821a95b827c6a77c5644efa3aec444d3f82334fe5906263526e81c4aeff54dea" -> "sha256:6a9efe551bffbae99eae31fc55900f37c617ca78c77dd04d6f7fe0be69d699d8" [label=""];
  "sha256:926a1cc4b10247bc9686839aa034030394e419f79bb0d18ee15c18ccd0bb6973" -> "sha256:6a9efe551bffbae99eae31fc55900f37c617ca78c77dd04d6f7fe0be69d699d8" [label=""];
  "sha256:6a9efe551bffbae99eae31fc55900f37c617ca78c77dd04d6f7fe0be69d699d8" -> "sha256:d7c68fae8de373e78910269ed94c9bd216eeded47be16e73389bcdf458d5cc51" [label=""];
  "sha256:d7c68fae8de373e78910269ed94c9bd216eeded47be16e73389bcdf458d5cc51" -> "sha256:ab25fb6464960d3e04499c681c765c0e0450f43355dc3fe989937cfd102a60eb" [label=""];
}

