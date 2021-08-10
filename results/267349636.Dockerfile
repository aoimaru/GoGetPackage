[app/sources/267349636.Dockerfile]
digraph {
  "sha256:a9803c19ae97ef05dcea2c1e6a88281f0d9a543df4993c416bd251e4e69daf3d" [label="docker-image://docker.io/library/node:11-alpine" shape="ellipse"];
  "sha256:973ec099849132389e39caaa7afc5249d8feb30da861975990a7c03fc8ef7037" [label="/bin/sh -c apk --no-cache add     ca-certificates     redis" shape="box"];
  "sha256:736845cb6333abbcc0ee6786bfd21323d5cce45df24bba72aa37a7c840760690" [label="/bin/sh -c npm install localtunnel request request-promise-native" shape="box"];
  "sha256:2d7c511c8380d6e8ee12ed95f3d0ee342e7e0b60255ba2526514e3a62745fd5f" [label="mkdir{path=/usr/src}" shape="note"];
  "sha256:a3732bd262d1bca852418d067596cc06cf83b8bd0aa6b0ab06f55171e4b7c560" [label="local://context" shape="ellipse"];
  "sha256:c6c8f83f1b580382fa059d686b5a983a332dcdca115ebbae9bf9d6602adbbc84" [label="copy{src=/run-interledger-node.js, dest=/usr/src/run-interledger-node.js}" shape="note"];
  "sha256:1f399171228ce398a7a6546465d30e78162f16d9ba0187804c855e75b566a7d7" [label="docker-image://docker.io/clux/muslrust:latest" shape="ellipse"];
  "sha256:993fab70db33ce957dcb5a43d9562d0c27f094fad8459e8f38e7e4cdd86cb9a9" [label="mkdir{path=/usr/src}" shape="note"];
  "sha256:4e270a4ae59e5bc3f37c8705f4a1c6435d6377d1fd60d438e538e5fbd6b0f0b8" [label="copy{src=/Cargo.toml, dest=/usr/src/Cargo.toml}" shape="note"];
  "sha256:a80f90fb0fe744083ee42fcc10bdb22375409572b6de4eb02580f973c117c72c" [label="copy{src=/crates, dest=/usr/src/crates}" shape="note"];
  "sha256:eac548de0abe4f62671a34420560ac037e60b9ae33b8b59037363edc50067fd9" [label="/bin/sh -c cargo build --package interledger" shape="box"];
  "sha256:c89491f58468b3a48996b61b5695a1b530c11cd84e3a444777d05100655cf2e5" [label="copy{src=/usr/src/target/x86_64-unknown-linux-musl/debug/interledger, dest=/usr/local/bin/interledger}" shape="note"];
  "sha256:439f65cc2afa021a3e9433d8ca62f9db481eb75735209e061d78645ac2dcfb95" [label="sha256:439f65cc2afa021a3e9433d8ca62f9db481eb75735209e061d78645ac2dcfb95" shape="plaintext"];
  "sha256:a9803c19ae97ef05dcea2c1e6a88281f0d9a543df4993c416bd251e4e69daf3d" -> "sha256:973ec099849132389e39caaa7afc5249d8feb30da861975990a7c03fc8ef7037" [label=""];
  "sha256:973ec099849132389e39caaa7afc5249d8feb30da861975990a7c03fc8ef7037" -> "sha256:736845cb6333abbcc0ee6786bfd21323d5cce45df24bba72aa37a7c840760690" [label=""];
  "sha256:736845cb6333abbcc0ee6786bfd21323d5cce45df24bba72aa37a7c840760690" -> "sha256:2d7c511c8380d6e8ee12ed95f3d0ee342e7e0b60255ba2526514e3a62745fd5f" [label=""];
  "sha256:2d7c511c8380d6e8ee12ed95f3d0ee342e7e0b60255ba2526514e3a62745fd5f" -> "sha256:c6c8f83f1b580382fa059d686b5a983a332dcdca115ebbae9bf9d6602adbbc84" [label=""];
  "sha256:a3732bd262d1bca852418d067596cc06cf83b8bd0aa6b0ab06f55171e4b7c560" -> "sha256:c6c8f83f1b580382fa059d686b5a983a332dcdca115ebbae9bf9d6602adbbc84" [label=""];
  "sha256:1f399171228ce398a7a6546465d30e78162f16d9ba0187804c855e75b566a7d7" -> "sha256:993fab70db33ce957dcb5a43d9562d0c27f094fad8459e8f38e7e4cdd86cb9a9" [label=""];
  "sha256:993fab70db33ce957dcb5a43d9562d0c27f094fad8459e8f38e7e4cdd86cb9a9" -> "sha256:4e270a4ae59e5bc3f37c8705f4a1c6435d6377d1fd60d438e538e5fbd6b0f0b8" [label=""];
  "sha256:a3732bd262d1bca852418d067596cc06cf83b8bd0aa6b0ab06f55171e4b7c560" -> "sha256:4e270a4ae59e5bc3f37c8705f4a1c6435d6377d1fd60d438e538e5fbd6b0f0b8" [label=""];
  "sha256:4e270a4ae59e5bc3f37c8705f4a1c6435d6377d1fd60d438e538e5fbd6b0f0b8" -> "sha256:a80f90fb0fe744083ee42fcc10bdb22375409572b6de4eb02580f973c117c72c" [label=""];
  "sha256:a3732bd262d1bca852418d067596cc06cf83b8bd0aa6b0ab06f55171e4b7c560" -> "sha256:a80f90fb0fe744083ee42fcc10bdb22375409572b6de4eb02580f973c117c72c" [label=""];
  "sha256:a80f90fb0fe744083ee42fcc10bdb22375409572b6de4eb02580f973c117c72c" -> "sha256:eac548de0abe4f62671a34420560ac037e60b9ae33b8b59037363edc50067fd9" [label=""];
  "sha256:c6c8f83f1b580382fa059d686b5a983a332dcdca115ebbae9bf9d6602adbbc84" -> "sha256:c89491f58468b3a48996b61b5695a1b530c11cd84e3a444777d05100655cf2e5" [label=""];
  "sha256:eac548de0abe4f62671a34420560ac037e60b9ae33b8b59037363edc50067fd9" -> "sha256:c89491f58468b3a48996b61b5695a1b530c11cd84e3a444777d05100655cf2e5" [label=""];
  "sha256:c89491f58468b3a48996b61b5695a1b530c11cd84e3a444777d05100655cf2e5" -> "sha256:439f65cc2afa021a3e9433d8ca62f9db481eb75735209e061d78645ac2dcfb95" [label=""];
}

