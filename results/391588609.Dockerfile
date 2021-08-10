[app/sources/391588609.Dockerfile]
digraph {
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:b58180fbfee8ae429323e26aaef482c28127687dcdfcd3681e04454609222792" [label="/bin/sh -c useradd -ms /bin/bash nibble" shape="box"];
  "sha256:60b9195f20a5de25c9ad680627780676e13c84239699b8eb2eeaa96795ce0d65" [label="mkdir{path=/home/nibble}" shape="note"];
  "sha256:4dd1f858789a01df6eeb71d70a5e34c86db79e9112a24a74d1489d2bf4033764" [label="/bin/sh -c apt-get update && apt-get install -y build-essential m4 opam" shape="box"];
  "sha256:b684e44e94191fddea74d66825b7671a057d8030fedaccb95817f44e835bdfcf" [label="/bin/sh -c opam init -ya --compiler 4.06.1 && opam update && opam install -y depext oml reason ezjsonm && opam depext -i tls ssl irmin-unix" shape="box"];
  "sha256:22dc47908d8f296d0e74eed0a39e1c7b79dac1aee644053871ea40e5582cca19" [label="local://context" shape="ellipse"];
  "sha256:4ef949eea348c53e1a047f96631940040a518fb48735964c89a67aa157311574" [label="copy{src=/src, dest=/src}" shape="note"];
  "sha256:91476f549d5875301386398fc6f95b12a2b80c6438caf0e60a5f03b6600f7f24" [label="/bin/sh -c cd src && opam config exec -- dune build --profile release ./main.exe" shape="box"];
  "sha256:639c54f7fa6e6c9c8eb0f54e39847e50f158d33bd49d914d7c0c7bd2390f2427" [label="copy{src=/src/_build/default/main.exe, dest=/home/nibble/nibbledb}" shape="note"];
  "sha256:ba2d3e79745e58220008a3aab2841e7f0a9cc69afd5a9334cb73fc354d5bdb89" [label="/bin/sh -c apt-get update && apt-get install -y libgmp10 libssl1.1 zlib1g openssl" shape="box"];
  "sha256:83d6bdf95df5993b3b50258a5f6803bbced8062d271bcb482570281626439298" [label="/bin/sh -c openssl req -x509 -newkey rsa:4096 -keyout /tmp/server.key -out /tmp/server.crt -days 3650 -nodes -subj \"/C=UK/ST=foo/L=bar/O=baz/OU= Department/CN=example.com\"" shape="box"];
  "sha256:5b912b5f8e58553caf37d2c7cd8624647085dc887875c7a01367573d3a534ba9" [label="sha256:5b912b5f8e58553caf37d2c7cd8624647085dc887875c7a01367573d3a534ba9" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:b58180fbfee8ae429323e26aaef482c28127687dcdfcd3681e04454609222792" [label=""];
  "sha256:b58180fbfee8ae429323e26aaef482c28127687dcdfcd3681e04454609222792" -> "sha256:60b9195f20a5de25c9ad680627780676e13c84239699b8eb2eeaa96795ce0d65" [label=""];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:4dd1f858789a01df6eeb71d70a5e34c86db79e9112a24a74d1489d2bf4033764" [label=""];
  "sha256:4dd1f858789a01df6eeb71d70a5e34c86db79e9112a24a74d1489d2bf4033764" -> "sha256:b684e44e94191fddea74d66825b7671a057d8030fedaccb95817f44e835bdfcf" [label=""];
  "sha256:b684e44e94191fddea74d66825b7671a057d8030fedaccb95817f44e835bdfcf" -> "sha256:4ef949eea348c53e1a047f96631940040a518fb48735964c89a67aa157311574" [label=""];
  "sha256:22dc47908d8f296d0e74eed0a39e1c7b79dac1aee644053871ea40e5582cca19" -> "sha256:4ef949eea348c53e1a047f96631940040a518fb48735964c89a67aa157311574" [label=""];
  "sha256:4ef949eea348c53e1a047f96631940040a518fb48735964c89a67aa157311574" -> "sha256:91476f549d5875301386398fc6f95b12a2b80c6438caf0e60a5f03b6600f7f24" [label=""];
  "sha256:60b9195f20a5de25c9ad680627780676e13c84239699b8eb2eeaa96795ce0d65" -> "sha256:639c54f7fa6e6c9c8eb0f54e39847e50f158d33bd49d914d7c0c7bd2390f2427" [label=""];
  "sha256:91476f549d5875301386398fc6f95b12a2b80c6438caf0e60a5f03b6600f7f24" -> "sha256:639c54f7fa6e6c9c8eb0f54e39847e50f158d33bd49d914d7c0c7bd2390f2427" [label=""];
  "sha256:639c54f7fa6e6c9c8eb0f54e39847e50f158d33bd49d914d7c0c7bd2390f2427" -> "sha256:ba2d3e79745e58220008a3aab2841e7f0a9cc69afd5a9334cb73fc354d5bdb89" [label=""];
  "sha256:ba2d3e79745e58220008a3aab2841e7f0a9cc69afd5a9334cb73fc354d5bdb89" -> "sha256:83d6bdf95df5993b3b50258a5f6803bbced8062d271bcb482570281626439298" [label=""];
  "sha256:83d6bdf95df5993b3b50258a5f6803bbced8062d271bcb482570281626439298" -> "sha256:5b912b5f8e58553caf37d2c7cd8624647085dc887875c7a01367573d3a534ba9" [label=""];
}

