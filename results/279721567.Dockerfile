[app/sources/279721567.Dockerfile]
digraph {
  "sha256:4c3d89fe598cf4b3681a5505fe2b988628aeb0442a937740567ddfa2d454f101" [label="local://context" shape="ellipse"];
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" [label="docker-image://docker.io/library/ubuntu:bionic" shape="ellipse"];
  "sha256:d2183abc3f2a3478cfe44f94a01291ba4325ffd9ea38a0d6b41df1fe94e227bc" [label="/bin/sh -c apt-get update  && apt-get install gnupg -y" shape="box"];
  "sha256:055d788fcd432ba2f8e16588131a2500968217572baddaf22bbbe0f5489873b5" [label="/bin/sh -c apt-get update && apt-get install -y -q --no-install-recommends     curl     ca-certificates     pkg-config     build-essential     libzmq3-dev  && curl -s -S -o /tmp/setup-node.sh https://deb.nodesource.com/setup_8.x  && chmod 755 /tmp/setup-node.sh  && /tmp/setup-node.sh  && apt-get install nodejs -y -q  && rm /tmp/setup-node.sh  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && npm install -g prebuild-install" shape="box"];
  "sha256:d42c6a26cf5643912af8e2a082ae1c006b8ac2660accc19aef32b1303b9ea8ca" [label="mkdir{path=/sawtooth-supply-chain/ledger_sync}" shape="note"];
  "sha256:157c9f7a949ccf866cc380967bb50c504d2a911bcb345dd74f5e4dfbbe89a53d" [label="copy{src=/ledger_sync/package.json, dest=/sawtooth-supply-chain/ledger_sync/}" shape="note"];
  "sha256:50f6108c814e36446833a62b93b511d2928286b1d7f81eac88daf7ae39f6b616" [label="/bin/sh -c npm install" shape="box"];
  "sha256:f1ddda079f5194c9fe41657a94bc26b93b3a3cf89f8a24dd1cca30a63a1c335e" [label="copy{src=/protos, dest=/sawtooth-supply-chain/protos/}" shape="note"];
  "sha256:dab1007b260ad9f3da4412a932dcbba0b0fc16fbf25dac4dc301fe5dd2b36b6e" [label="copy{src=/ledger_sync, dest=/sawtooth-supply-chain/ledger_sync/}" shape="note"];
  "sha256:3f18ea966a619d8cd1f60a7ba60eb35e19f1d4eaa5994d8c1d9674297f838a2f" [label="sha256:3f18ea966a619d8cd1f60a7ba60eb35e19f1d4eaa5994d8c1d9674297f838a2f" shape="plaintext"];
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" -> "sha256:d2183abc3f2a3478cfe44f94a01291ba4325ffd9ea38a0d6b41df1fe94e227bc" [label=""];
  "sha256:d2183abc3f2a3478cfe44f94a01291ba4325ffd9ea38a0d6b41df1fe94e227bc" -> "sha256:055d788fcd432ba2f8e16588131a2500968217572baddaf22bbbe0f5489873b5" [label=""];
  "sha256:055d788fcd432ba2f8e16588131a2500968217572baddaf22bbbe0f5489873b5" -> "sha256:d42c6a26cf5643912af8e2a082ae1c006b8ac2660accc19aef32b1303b9ea8ca" [label=""];
  "sha256:d42c6a26cf5643912af8e2a082ae1c006b8ac2660accc19aef32b1303b9ea8ca" -> "sha256:157c9f7a949ccf866cc380967bb50c504d2a911bcb345dd74f5e4dfbbe89a53d" [label=""];
  "sha256:4c3d89fe598cf4b3681a5505fe2b988628aeb0442a937740567ddfa2d454f101" -> "sha256:157c9f7a949ccf866cc380967bb50c504d2a911bcb345dd74f5e4dfbbe89a53d" [label=""];
  "sha256:157c9f7a949ccf866cc380967bb50c504d2a911bcb345dd74f5e4dfbbe89a53d" -> "sha256:50f6108c814e36446833a62b93b511d2928286b1d7f81eac88daf7ae39f6b616" [label=""];
  "sha256:50f6108c814e36446833a62b93b511d2928286b1d7f81eac88daf7ae39f6b616" -> "sha256:f1ddda079f5194c9fe41657a94bc26b93b3a3cf89f8a24dd1cca30a63a1c335e" [label=""];
  "sha256:4c3d89fe598cf4b3681a5505fe2b988628aeb0442a937740567ddfa2d454f101" -> "sha256:f1ddda079f5194c9fe41657a94bc26b93b3a3cf89f8a24dd1cca30a63a1c335e" [label=""];
  "sha256:f1ddda079f5194c9fe41657a94bc26b93b3a3cf89f8a24dd1cca30a63a1c335e" -> "sha256:dab1007b260ad9f3da4412a932dcbba0b0fc16fbf25dac4dc301fe5dd2b36b6e" [label=""];
  "sha256:4c3d89fe598cf4b3681a5505fe2b988628aeb0442a937740567ddfa2d454f101" -> "sha256:dab1007b260ad9f3da4412a932dcbba0b0fc16fbf25dac4dc301fe5dd2b36b6e" [label=""];
  "sha256:dab1007b260ad9f3da4412a932dcbba0b0fc16fbf25dac4dc301fe5dd2b36b6e" -> "sha256:3f18ea966a619d8cd1f60a7ba60eb35e19f1d4eaa5994d8c1d9674297f838a2f" [label=""];
}

