[app/sources/299376651.Dockerfile]
digraph {
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" [label="docker-image://docker.io/library/alpine:3.5" shape="ellipse"];
  "sha256:c8e3cf72e93ce80f587ae0783cadbfbfee8112a8f468f6d622098c9f34f4b5c8" [label="/bin/sh -c mkdir -p /app" shape="box"];
  "sha256:16d281a6bb1052cb70663f919891a6c2b2970e352618d934a4a3763269fd8a47" [label="mkdir{path=/app}" shape="note"];
  "sha256:2187ec94597b9df507a21bc42de8c8eb41ee3a271e2ff05f8719e7c3726b6a63" [label="local://context" shape="ellipse"];
  "sha256:845451978794d1998a1a41118794718a337b720359518eb6f40226bf53829bd8" [label="copy{src=/Gemfile, dest=/app/},copy{src=/Gemfile.lock, dest=/app/}" shape="note"];
  "sha256:4be8e0124178c014d9e25fff014bbd2b67f7a26b44cd7b062b9645af0c774d9c" [label="/bin/sh -c apk add --no-cache --virtual build_deps       build-base                                  linux-headers                               ruby-bundler                                ruby-dev                           &&     bundle config --global frozen 1      &&     bundle install                       &&     apk del build_deps" shape="box"];
  "sha256:b579e2fd211d39fa0e544f13b175f62662cd533178d60f86fbefe2289ee37ce5" [label="/bin/sh -c apk add --no-cache ruby" shape="box"];
  "sha256:b59d0675a372b6fc921ed2d4343fcfa382fda25d477139c11eeb449bfa09983f" [label="copy{src=/lib, dest=/app/lib}" shape="note"];
  "sha256:5173105db8f0fa9480dcbf8533793b0b6950ad085266fca04a56f2121d6260fd" [label="copy{src=/config.ru, dest=/app/}" shape="note"];
  "sha256:5c3f202d702f209bf3ef7d19b6db9b0379770a47de4ba9b287d67addb9b512a2" [label="sha256:5c3f202d702f209bf3ef7d19b6db9b0379770a47de4ba9b287d67addb9b512a2" shape="plaintext"];
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" -> "sha256:c8e3cf72e93ce80f587ae0783cadbfbfee8112a8f468f6d622098c9f34f4b5c8" [label=""];
  "sha256:c8e3cf72e93ce80f587ae0783cadbfbfee8112a8f468f6d622098c9f34f4b5c8" -> "sha256:16d281a6bb1052cb70663f919891a6c2b2970e352618d934a4a3763269fd8a47" [label=""];
  "sha256:16d281a6bb1052cb70663f919891a6c2b2970e352618d934a4a3763269fd8a47" -> "sha256:845451978794d1998a1a41118794718a337b720359518eb6f40226bf53829bd8" [label=""];
  "sha256:2187ec94597b9df507a21bc42de8c8eb41ee3a271e2ff05f8719e7c3726b6a63" -> "sha256:845451978794d1998a1a41118794718a337b720359518eb6f40226bf53829bd8" [label=""];
  "sha256:845451978794d1998a1a41118794718a337b720359518eb6f40226bf53829bd8" -> "sha256:4be8e0124178c014d9e25fff014bbd2b67f7a26b44cd7b062b9645af0c774d9c" [label=""];
  "sha256:4be8e0124178c014d9e25fff014bbd2b67f7a26b44cd7b062b9645af0c774d9c" -> "sha256:b579e2fd211d39fa0e544f13b175f62662cd533178d60f86fbefe2289ee37ce5" [label=""];
  "sha256:b579e2fd211d39fa0e544f13b175f62662cd533178d60f86fbefe2289ee37ce5" -> "sha256:b59d0675a372b6fc921ed2d4343fcfa382fda25d477139c11eeb449bfa09983f" [label=""];
  "sha256:2187ec94597b9df507a21bc42de8c8eb41ee3a271e2ff05f8719e7c3726b6a63" -> "sha256:b59d0675a372b6fc921ed2d4343fcfa382fda25d477139c11eeb449bfa09983f" [label=""];
  "sha256:b59d0675a372b6fc921ed2d4343fcfa382fda25d477139c11eeb449bfa09983f" -> "sha256:5173105db8f0fa9480dcbf8533793b0b6950ad085266fca04a56f2121d6260fd" [label=""];
  "sha256:2187ec94597b9df507a21bc42de8c8eb41ee3a271e2ff05f8719e7c3726b6a63" -> "sha256:5173105db8f0fa9480dcbf8533793b0b6950ad085266fca04a56f2121d6260fd" [label=""];
  "sha256:5173105db8f0fa9480dcbf8533793b0b6950ad085266fca04a56f2121d6260fd" -> "sha256:5c3f202d702f209bf3ef7d19b6db9b0379770a47de4ba9b287d67addb9b512a2" [label=""];
}

