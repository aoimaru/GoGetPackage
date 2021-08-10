[app/sources/284222891.Dockerfile]
digraph {
  "sha256:008069f3d5719eb6083929b6c7e83edf29b03c84ead7a6a012b5130799e466b0" [label="docker-image://docker.io/library/nvidia-cuda-clang:latest" shape="ellipse"];
  "sha256:75ffda625b8390cab9c235e8c9ba46b82ef6d07275fd26bc0ebf650a1e8c617b" [label="/bin/sh -c apt-get update && apt-get --no-install-recommends install -y     binutils     binutils-gold     curl     libstdc++-4.9-dev     python     python-dev     python-numpy     python-pip     unzip     zip &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:36b73a8f83f0f28c1d9758b44711970c86e34f419e65db4a3f14f8d3fbf9a4b2" [label="/bin/sh -c curl -fSsL -O https://bootstrap.pypa.io/get-pip.py &&     python get-pip.py &&     rm get-pip.py" shape="box"];
  "sha256:4c1607877d1275882f0f45942a6643f37d36267a3ffc39f19486dee29b6ec82f" [label="/bin/sh -c pip install --upgrade enum34 futures mock numpy six backports.weakref autograd &&     pip install --pre 'protobuf>=3.0.0a3' &&     pip install 'grpcio>=1.1.3'" shape="box"];
  "sha256:bedcc519fe96a24ed457cdcd173f131ca9038664af6e27f0ec5eee6ab017a944" [label="mkdir{path=/botexec}" shape="note"];
  "sha256:aaa2ee06dc7b82af58c442e7bc58c98f8e95ffeee63f1eaeeb37c425d47baee5" [label="sha256:aaa2ee06dc7b82af58c442e7bc58c98f8e95ffeee63f1eaeeb37c425d47baee5" shape="plaintext"];
  "sha256:008069f3d5719eb6083929b6c7e83edf29b03c84ead7a6a012b5130799e466b0" -> "sha256:75ffda625b8390cab9c235e8c9ba46b82ef6d07275fd26bc0ebf650a1e8c617b" [label=""];
  "sha256:75ffda625b8390cab9c235e8c9ba46b82ef6d07275fd26bc0ebf650a1e8c617b" -> "sha256:36b73a8f83f0f28c1d9758b44711970c86e34f419e65db4a3f14f8d3fbf9a4b2" [label=""];
  "sha256:36b73a8f83f0f28c1d9758b44711970c86e34f419e65db4a3f14f8d3fbf9a4b2" -> "sha256:4c1607877d1275882f0f45942a6643f37d36267a3ffc39f19486dee29b6ec82f" [label=""];
  "sha256:4c1607877d1275882f0f45942a6643f37d36267a3ffc39f19486dee29b6ec82f" -> "sha256:bedcc519fe96a24ed457cdcd173f131ca9038664af6e27f0ec5eee6ab017a944" [label=""];
  "sha256:bedcc519fe96a24ed457cdcd173f131ca9038664af6e27f0ec5eee6ab017a944" -> "sha256:aaa2ee06dc7b82af58c442e7bc58c98f8e95ffeee63f1eaeeb37c425d47baee5" [label=""];
}

