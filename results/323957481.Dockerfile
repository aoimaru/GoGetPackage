[app/sources/323957481.Dockerfile]
digraph {
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:88eb8376e51f2b66b25dfb0b7dea58dae337dfb7de0613bb3351a8ab97d58a5d" [label="mkdir{path=/fetch}" shape="note"];
  "sha256:0f128aed576dded4b1ae8ab97b9d2a479c42fb225a264825a1bb2624c06950fc" [label="/bin/sh -c wget https://github.com/insolar/insolar/releases/download/$VERSION/insolar-node.tar.gz" shape="box"];
  "sha256:a0bcfe2ab770e9bde01655f4a043f461f58581568aa2d2f9c74f59d17994652c" [label="/bin/sh -c tar xzf insolar-node.tar.gz" shape="box"];
  "sha256:191f934a49691f0baa2329ec1e9c4262f3ea5d3ca7d4141fc4b742e6407f143b" [label="/bin/sh -c ls -la /fetch" shape="box"];
  "sha256:80054066c55d253abf7d9c52984bb7369b9c368059b5d0154661f582de952710" [label="copy{src=/fetch/genesis, dest=/genesis}" shape="note"];
  "sha256:a6314989f73622a8da9d4f890071acaf3aa35fd878184433ba0f9da9ec2a2e6c" [label="local://context" shape="ellipse"];
  "sha256:ed7c442f9ddce0121a9eee9b1d9a0a90148c41e3a7a1807144e71f6196612cdf" [label="copy{src=/init.sh, dest=/}" shape="note"];
  "sha256:2917ad9c37bd809520bb0ebf2f375b15ed7307232ad10b72da4619fef685e337" [label="sha256:2917ad9c37bd809520bb0ebf2f375b15ed7307232ad10b72da4619fef685e337" shape="plaintext"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:88eb8376e51f2b66b25dfb0b7dea58dae337dfb7de0613bb3351a8ab97d58a5d" [label=""];
  "sha256:88eb8376e51f2b66b25dfb0b7dea58dae337dfb7de0613bb3351a8ab97d58a5d" -> "sha256:0f128aed576dded4b1ae8ab97b9d2a479c42fb225a264825a1bb2624c06950fc" [label=""];
  "sha256:0f128aed576dded4b1ae8ab97b9d2a479c42fb225a264825a1bb2624c06950fc" -> "sha256:a0bcfe2ab770e9bde01655f4a043f461f58581568aa2d2f9c74f59d17994652c" [label=""];
  "sha256:a0bcfe2ab770e9bde01655f4a043f461f58581568aa2d2f9c74f59d17994652c" -> "sha256:191f934a49691f0baa2329ec1e9c4262f3ea5d3ca7d4141fc4b742e6407f143b" [label=""];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:80054066c55d253abf7d9c52984bb7369b9c368059b5d0154661f582de952710" [label=""];
  "sha256:191f934a49691f0baa2329ec1e9c4262f3ea5d3ca7d4141fc4b742e6407f143b" -> "sha256:80054066c55d253abf7d9c52984bb7369b9c368059b5d0154661f582de952710" [label=""];
  "sha256:80054066c55d253abf7d9c52984bb7369b9c368059b5d0154661f582de952710" -> "sha256:ed7c442f9ddce0121a9eee9b1d9a0a90148c41e3a7a1807144e71f6196612cdf" [label=""];
  "sha256:a6314989f73622a8da9d4f890071acaf3aa35fd878184433ba0f9da9ec2a2e6c" -> "sha256:ed7c442f9ddce0121a9eee9b1d9a0a90148c41e3a7a1807144e71f6196612cdf" [label=""];
  "sha256:ed7c442f9ddce0121a9eee9b1d9a0a90148c41e3a7a1807144e71f6196612cdf" -> "sha256:2917ad9c37bd809520bb0ebf2f375b15ed7307232ad10b72da4619fef685e337" [label=""];
}

