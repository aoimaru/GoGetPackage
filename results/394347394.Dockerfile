[app/sources/394347394.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:d9949d5d998120e4e46213236e6e441e2986674a70c5a40c7d32fc18b08c5a9b" [label="/bin/sh -c apt-get update && apt-get install -y libdb-dev libdb++-dev build-essential libtool autotools-dev automake pkg-config libssl-dev bsdmainutils libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-program-options-dev libboost-test-dev libboost-thread-dev libminiupnpc-dev libzmq3-dev git unzip wget" shape="box"];
  "sha256:3fe1d917bf9e34d6f4f064f46572f900eb7ad50f41cbe52d1416ea06cbc032e6" [label="/bin/sh -c apt-get clean && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:4322205a8650c2a93849803df2326d1a9e847ac203ea419b9bb4bd81fc5c3d33" [label="/bin/sh -c git clone https://github.com/photonproject/photon.git" shape="box"];
  "sha256:8b58d4ef912166790c5e9471a11279639b07ea785f2c35020199272e96784075" [label="/bin/sh -c cd photon/src/leveldb && chmod +x Makefile && chmod +x build_detect_platform && make libleveldb.a libmemenv.a" shape="box"];
  "sha256:86333e3be629a49ce8ac75801a3a1a3396d8b610782a850ee4a61476a5ec943f" [label="/bin/sh -c mkdir photon/src/obj" shape="box"];
  "sha256:d3bbb1b3e479f8a7f6f309c80b22607b3ea98253acd28073f68529b27d49a7b6" [label="/bin/sh -c cd photon/src/ && make -f makefile.unix" shape="box"];
  "sha256:29ea0be1cedbc79b20c77078506843eba2e5fcee10dd5e2b6b51f5fc72c2d3ff" [label="/bin/sh -c mkdir /root/.photon/ && cd /root/.photon/ && echo \"rpcuser=photonrpc\" >>  photon.conf && echo \"rpcpassword=3CAiCFyJmmjUWX2tuQYPh4NpowkUkkTfiev5if9qwBkq\" >>  photon.conf" shape="box"];
  "sha256:745fe046a30f4ff764e5bd8cd3cfba7a5001c92f340af3580b530d9ecf32208a" [label="sha256:745fe046a30f4ff764e5bd8cd3cfba7a5001c92f340af3580b530d9ecf32208a" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:d9949d5d998120e4e46213236e6e441e2986674a70c5a40c7d32fc18b08c5a9b" [label=""];
  "sha256:d9949d5d998120e4e46213236e6e441e2986674a70c5a40c7d32fc18b08c5a9b" -> "sha256:3fe1d917bf9e34d6f4f064f46572f900eb7ad50f41cbe52d1416ea06cbc032e6" [label=""];
  "sha256:3fe1d917bf9e34d6f4f064f46572f900eb7ad50f41cbe52d1416ea06cbc032e6" -> "sha256:4322205a8650c2a93849803df2326d1a9e847ac203ea419b9bb4bd81fc5c3d33" [label=""];
  "sha256:4322205a8650c2a93849803df2326d1a9e847ac203ea419b9bb4bd81fc5c3d33" -> "sha256:8b58d4ef912166790c5e9471a11279639b07ea785f2c35020199272e96784075" [label=""];
  "sha256:8b58d4ef912166790c5e9471a11279639b07ea785f2c35020199272e96784075" -> "sha256:86333e3be629a49ce8ac75801a3a1a3396d8b610782a850ee4a61476a5ec943f" [label=""];
  "sha256:86333e3be629a49ce8ac75801a3a1a3396d8b610782a850ee4a61476a5ec943f" -> "sha256:d3bbb1b3e479f8a7f6f309c80b22607b3ea98253acd28073f68529b27d49a7b6" [label=""];
  "sha256:d3bbb1b3e479f8a7f6f309c80b22607b3ea98253acd28073f68529b27d49a7b6" -> "sha256:29ea0be1cedbc79b20c77078506843eba2e5fcee10dd5e2b6b51f5fc72c2d3ff" [label=""];
  "sha256:29ea0be1cedbc79b20c77078506843eba2e5fcee10dd5e2b6b51f5fc72c2d3ff" -> "sha256:745fe046a30f4ff764e5bd8cd3cfba7a5001c92f340af3580b530d9ecf32208a" [label=""];
}

