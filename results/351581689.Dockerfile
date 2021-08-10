[app/sources/351581689.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:3470f98cb56cf0c5de4fe58b4050f81fb6be95867adcda3eb6c5f190f9f7fcce" [label="/bin/sh -c apt-get update &&     apt-get -y install curl &&     curl -sL https://deb.nodesource.com/setup | sudo bash - &&     apt-get -y install python build-essential nodejs" shape="box"];
  "sha256:3ef8f761c2f5d47e2b6b958b314c126cf78d5532035ea71451614fe3bffa307f" [label="/bin/sh -c npm install -g babel" shape="box"];
  "sha256:a6307c300b8f8319c35c6bbd40ac9a31fd26dace98c3ea0ced9535855c882edc" [label="local://context" shape="ellipse"];
  "sha256:4bd4abc393cc28c57a103a0e7500dce8101cacc1d5fe2ec472238c93da430df6" [label="copy{src=/package.json, dest=/tmp/package.json}" shape="note"];
  "sha256:2a256ad87e541b5e0414b26f7ff3523be0e8b7fbab7e1b4d4fc1123314f8429d" [label="/bin/sh -c cd /tmp && npm install" shape="box"];
  "sha256:00d321ce02d596001c2b6b25a5824306975a9456f5c9a1fa5463156940451fc8" [label="/bin/sh -c mkdir -p /src && cp -a /tmp/node_modules /src/" shape="box"];
  "sha256:f5d1c80bb62fb2b4050b1bec9b8f419daab2970e970eb1b75d81649014ed88ee" [label="mkdir{path=/src}" shape="note"];
  "sha256:5c2aab2effc593cb3d026836c3f52d6218bea58f4bd80d6b17802c01e389a67b" [label="copy{src=/, dest=/src}" shape="note"];
  "sha256:871601a598f9c8a4176bcff9770b871f11faa949a8ec8c90440208931a94395b" [label="sha256:871601a598f9c8a4176bcff9770b871f11faa949a8ec8c90440208931a94395b" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:3470f98cb56cf0c5de4fe58b4050f81fb6be95867adcda3eb6c5f190f9f7fcce" [label=""];
  "sha256:3470f98cb56cf0c5de4fe58b4050f81fb6be95867adcda3eb6c5f190f9f7fcce" -> "sha256:3ef8f761c2f5d47e2b6b958b314c126cf78d5532035ea71451614fe3bffa307f" [label=""];
  "sha256:3ef8f761c2f5d47e2b6b958b314c126cf78d5532035ea71451614fe3bffa307f" -> "sha256:4bd4abc393cc28c57a103a0e7500dce8101cacc1d5fe2ec472238c93da430df6" [label=""];
  "sha256:a6307c300b8f8319c35c6bbd40ac9a31fd26dace98c3ea0ced9535855c882edc" -> "sha256:4bd4abc393cc28c57a103a0e7500dce8101cacc1d5fe2ec472238c93da430df6" [label=""];
  "sha256:4bd4abc393cc28c57a103a0e7500dce8101cacc1d5fe2ec472238c93da430df6" -> "sha256:2a256ad87e541b5e0414b26f7ff3523be0e8b7fbab7e1b4d4fc1123314f8429d" [label=""];
  "sha256:2a256ad87e541b5e0414b26f7ff3523be0e8b7fbab7e1b4d4fc1123314f8429d" -> "sha256:00d321ce02d596001c2b6b25a5824306975a9456f5c9a1fa5463156940451fc8" [label=""];
  "sha256:00d321ce02d596001c2b6b25a5824306975a9456f5c9a1fa5463156940451fc8" -> "sha256:f5d1c80bb62fb2b4050b1bec9b8f419daab2970e970eb1b75d81649014ed88ee" [label=""];
  "sha256:f5d1c80bb62fb2b4050b1bec9b8f419daab2970e970eb1b75d81649014ed88ee" -> "sha256:5c2aab2effc593cb3d026836c3f52d6218bea58f4bd80d6b17802c01e389a67b" [label=""];
  "sha256:a6307c300b8f8319c35c6bbd40ac9a31fd26dace98c3ea0ced9535855c882edc" -> "sha256:5c2aab2effc593cb3d026836c3f52d6218bea58f4bd80d6b17802c01e389a67b" [label=""];
  "sha256:5c2aab2effc593cb3d026836c3f52d6218bea58f4bd80d6b17802c01e389a67b" -> "sha256:871601a598f9c8a4176bcff9770b871f11faa949a8ec8c90440208931a94395b" [label=""];
}

