[app/sources/275055141.Dockerfile]
digraph {
  "sha256:da108411ea99ec52f65543aed20d4c0f23392d483cf17a5b4dd0b47c85bb07f4" [label="docker-image://docker.io/library/s2client-game:latest" shape="ellipse"];
  "sha256:b6376835bd1bd4103492e65569959144120a885a839bd500d7248c2c6ab494dd" [label="/bin/sh -c sed -i 's/# \\(.*multiverse$\\)/\\1/g' /etc/apt/sources.list &&   apt-get update &&   apt-get -y upgrade &&   apt-get install -y     net-tools     build-essential     clang     cmake     curl      git      htop      libidn11      libz-dev     libssl-dev     make     python-minimal     software-properties-common     unzip     vim     wget" shape="box"];
  "sha256:b7273bdd6ef5aea40242d72466cb2650d7832c6c696de50f101332a1e30303de" [label="/bin/sh -c useradd -ms /bin/bash $SYSTEM_USER_NAME" shape="box"];
  "sha256:4f3b3ed00b76a4cbb1060fb513620866e0953947f4e29d674161dd8668b32051" [label="/bin/sh -c chown -R $SYSTEM_USER_NAME:$SYSTEM_USER_NAME /SC2" shape="box"];
  "sha256:abc33149f048f525904c10ac5bc41824c4fd6a32bb38c7706d6b36783908f5e0" [label="/bin/sh -c git config --global user.name \"$GIT_USER_NAME\"" shape="box"];
  "sha256:d8c5853c8aff5bca790fe6da4ef7ffc09ad8ad98324b772f76e9597032fea355" [label="/bin/sh -c git config --global user.email \"$GIT_EMAIL\"" shape="box"];
  "sha256:801b6b9b27ab8f890f4f6470a1c76939068bb720b9b1cd4dc7811c32dd5ba50c" [label="/bin/sh -c cat /dev/zero | ssh-keygen -q -N \"\" > /dev/null" shape="box"];
  "sha256:c53b86d0035683cd84596ed300c655589f84a9154bc6d498fed68e8286d5ddf1" [label="mkdir{path=/home/gituser}" shape="note"];
  "sha256:0d774912b1367b567bfba40dc5cb9311abfc9408a51f9e02caaf15c87b1fb2da" [label="sha256:0d774912b1367b567bfba40dc5cb9311abfc9408a51f9e02caaf15c87b1fb2da" shape="plaintext"];
  "sha256:da108411ea99ec52f65543aed20d4c0f23392d483cf17a5b4dd0b47c85bb07f4" -> "sha256:b6376835bd1bd4103492e65569959144120a885a839bd500d7248c2c6ab494dd" [label=""];
  "sha256:b6376835bd1bd4103492e65569959144120a885a839bd500d7248c2c6ab494dd" -> "sha256:b7273bdd6ef5aea40242d72466cb2650d7832c6c696de50f101332a1e30303de" [label=""];
  "sha256:b7273bdd6ef5aea40242d72466cb2650d7832c6c696de50f101332a1e30303de" -> "sha256:4f3b3ed00b76a4cbb1060fb513620866e0953947f4e29d674161dd8668b32051" [label=""];
  "sha256:4f3b3ed00b76a4cbb1060fb513620866e0953947f4e29d674161dd8668b32051" -> "sha256:abc33149f048f525904c10ac5bc41824c4fd6a32bb38c7706d6b36783908f5e0" [label=""];
  "sha256:abc33149f048f525904c10ac5bc41824c4fd6a32bb38c7706d6b36783908f5e0" -> "sha256:d8c5853c8aff5bca790fe6da4ef7ffc09ad8ad98324b772f76e9597032fea355" [label=""];
  "sha256:d8c5853c8aff5bca790fe6da4ef7ffc09ad8ad98324b772f76e9597032fea355" -> "sha256:801b6b9b27ab8f890f4f6470a1c76939068bb720b9b1cd4dc7811c32dd5ba50c" [label=""];
  "sha256:801b6b9b27ab8f890f4f6470a1c76939068bb720b9b1cd4dc7811c32dd5ba50c" -> "sha256:c53b86d0035683cd84596ed300c655589f84a9154bc6d498fed68e8286d5ddf1" [label=""];
  "sha256:c53b86d0035683cd84596ed300c655589f84a9154bc6d498fed68e8286d5ddf1" -> "sha256:0d774912b1367b567bfba40dc5cb9311abfc9408a51f9e02caaf15c87b1fb2da" [label=""];
}

