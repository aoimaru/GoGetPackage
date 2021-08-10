[app/sources/321071685.Dockerfile]
digraph {
  "sha256:2c908cac60df8d8bc638937d9c0327a6a45771b176367d3c43bc3e2f2b9bdd9d" [label="docker-image://mcr.microsoft.com/dotnet/core/runtime:2.1.10-bionic-arm32v7@sha256:da085a61a8f6609ad262eaeeb93ecbcdfbc5c48c9d18dae00580173a6ca0eab3" shape="ellipse"];
  "sha256:460f4b1ab49f55d043ee343a83f7f092ca35f34c98d8ae023e740e93a788979f" [label="/bin/sh -c apt-get update &&     apt-get install -y libsnappy1v5 &&     ln -s /lib/arm-linux-gnueabihf/libdl.so.2 /usr/lib/arm-linux-gnueabihf/libdl.so &&     ln -s /lib/arm-linux-gnueabihf/libc.so.6 /usr/lib/arm-linux-gnueabihf/libc.so &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:b9e464249c8eeffd1e29de4bbf45b2910b435215fe3347cba9ccc5c57d73cc7e" [label="local://context" shape="ellipse"];
  "sha256:5f10c5bbe6535b3abf628a85b17fbce167733da68da7b56fdb860c922b2597d7" [label="copy{src=/librocksdb.so, dest=/usr/lib/}" shape="note"];
  "sha256:69409dcf87b586d6792fddbb60bbb9b22b0f6c2f5395a1cabd606fec9a44f8b8" [label="sha256:69409dcf87b586d6792fddbb60bbb9b22b0f6c2f5395a1cabd606fec9a44f8b8" shape="plaintext"];
  "sha256:2c908cac60df8d8bc638937d9c0327a6a45771b176367d3c43bc3e2f2b9bdd9d" -> "sha256:460f4b1ab49f55d043ee343a83f7f092ca35f34c98d8ae023e740e93a788979f" [label=""];
  "sha256:460f4b1ab49f55d043ee343a83f7f092ca35f34c98d8ae023e740e93a788979f" -> "sha256:5f10c5bbe6535b3abf628a85b17fbce167733da68da7b56fdb860c922b2597d7" [label=""];
  "sha256:b9e464249c8eeffd1e29de4bbf45b2910b435215fe3347cba9ccc5c57d73cc7e" -> "sha256:5f10c5bbe6535b3abf628a85b17fbce167733da68da7b56fdb860c922b2597d7" [label=""];
  "sha256:5f10c5bbe6535b3abf628a85b17fbce167733da68da7b56fdb860c922b2597d7" -> "sha256:69409dcf87b586d6792fddbb60bbb9b22b0f6c2f5395a1cabd606fec9a44f8b8" [label=""];
}

