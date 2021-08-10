[app/sources/371304039.Dockerfile]
digraph {
  "sha256:3156c856fb6a7600ee7934d586bbea7fc2ccc67d175f9d7594d38724b90f7f75" [label="local://context" shape="ellipse"];
  "sha256:4c38a4c6f2d2b86994a8ba7d9c0b66499d3f4da75873b05881ec9dd0471bcf46" [label="docker-image://docker.io/k8spracticalguide/node:10.11.0@sha256:c1e74d86a0a582b6fbd6b17d1cbb8456926e00cd4b0ee7c0be82e2f3e9948df3" shape="ellipse"];
  "sha256:f5167c9dbd196d23bd92ab77802269dcb8dadfd04f4d8043de4f5b205e503c23" [label="mkdir{path=/src/app}" shape="note"];
  "sha256:7e0b8019de095ce113a99374336529ad69694bcef6be53edebc9c2f557c95a82" [label="copy{src=/package*.json, dest=/src/app/}" shape="note"];
  "sha256:433c0fb6b0dd8a6d8aef12059e3720e90bf46a812945d21607b9cde07cc8cef1" [label="/bin/sh -c set -x &&     npm install --production" shape="box"];
  "sha256:abb0620133d399a321cdb6b7b576f48bf54c0ff8ebbf89c7e0d4ff01a6c6b662" [label="copy{src=/, dest=/src/app/}" shape="note"];
  "sha256:2f0568027cdb1dd34cdc1b1db66baf3e49bdd0087c1bf43638934b88683feabf" [label="sha256:2f0568027cdb1dd34cdc1b1db66baf3e49bdd0087c1bf43638934b88683feabf" shape="plaintext"];
  "sha256:4c38a4c6f2d2b86994a8ba7d9c0b66499d3f4da75873b05881ec9dd0471bcf46" -> "sha256:f5167c9dbd196d23bd92ab77802269dcb8dadfd04f4d8043de4f5b205e503c23" [label=""];
  "sha256:f5167c9dbd196d23bd92ab77802269dcb8dadfd04f4d8043de4f5b205e503c23" -> "sha256:7e0b8019de095ce113a99374336529ad69694bcef6be53edebc9c2f557c95a82" [label=""];
  "sha256:3156c856fb6a7600ee7934d586bbea7fc2ccc67d175f9d7594d38724b90f7f75" -> "sha256:7e0b8019de095ce113a99374336529ad69694bcef6be53edebc9c2f557c95a82" [label=""];
  "sha256:7e0b8019de095ce113a99374336529ad69694bcef6be53edebc9c2f557c95a82" -> "sha256:433c0fb6b0dd8a6d8aef12059e3720e90bf46a812945d21607b9cde07cc8cef1" [label=""];
  "sha256:433c0fb6b0dd8a6d8aef12059e3720e90bf46a812945d21607b9cde07cc8cef1" -> "sha256:abb0620133d399a321cdb6b7b576f48bf54c0ff8ebbf89c7e0d4ff01a6c6b662" [label=""];
  "sha256:3156c856fb6a7600ee7934d586bbea7fc2ccc67d175f9d7594d38724b90f7f75" -> "sha256:abb0620133d399a321cdb6b7b576f48bf54c0ff8ebbf89c7e0d4ff01a6c6b662" [label=""];
  "sha256:abb0620133d399a321cdb6b7b576f48bf54c0ff8ebbf89c7e0d4ff01a6c6b662" -> "sha256:2f0568027cdb1dd34cdc1b1db66baf3e49bdd0087c1bf43638934b88683feabf" [label=""];
}

