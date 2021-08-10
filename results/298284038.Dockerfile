[app/sources/298284038.Dockerfile]
digraph {
  "sha256:c6e229c6a3e80d8311bbd96088e7fdfe330a59c9b08dd48f072a9b104aa9c3e1" [label="docker-image://gcr.io/chainpoint-registry/github-chainpoint-chainpoint-services/node-base@sha256:fd2f366acd83bc48c9c215074e8da11b05d456034349fa4226f757ab494b0851" shape="ellipse"];
  "sha256:3091159ea950a29a96e19a0624053050eda3de878a2472afa27630a7a44bb88d" [label="local://context" shape="ellipse"];
  "sha256:3a3818c2a78f3277bc777a7566aabdba9e42bef64f541126bf5b347e8a244767" [label="copy{src=/node-lib/lib, dest=/home/node/app/lib}" shape="note"];
  "sha256:93f985106b42adc62ea820e8788d019b43b82d15bc19ce2681709f9da50471b9" [label="copy{src=/node-aggregator-service/package.json, dest=/home/node/app/},copy{src=/node-aggregator-service/yarn.lock, dest=/home/node/app/}" shape="note"];
  "sha256:bd897ff77a33eab5ae5ab3e87a7ab236063a036d8791ee3cfc7b3aa0260efd69" [label="/bin/sh -c yarn" shape="box"];
  "sha256:73dc2db06fe7a8516c4aa322a0fa89f61a942a0fee1255486ef4c401523af08b" [label="copy{src=/node-aggregator-service/server.js, dest=/home/node/app/}" shape="note"];
  "sha256:6e8e9d277055a7a564009f1c94a6c462940ebe7e7cf5c9d9652d2b9bd7669afb" [label="sha256:6e8e9d277055a7a564009f1c94a6c462940ebe7e7cf5c9d9652d2b9bd7669afb" shape="plaintext"];
  "sha256:c6e229c6a3e80d8311bbd96088e7fdfe330a59c9b08dd48f072a9b104aa9c3e1" -> "sha256:3a3818c2a78f3277bc777a7566aabdba9e42bef64f541126bf5b347e8a244767" [label=""];
  "sha256:3091159ea950a29a96e19a0624053050eda3de878a2472afa27630a7a44bb88d" -> "sha256:3a3818c2a78f3277bc777a7566aabdba9e42bef64f541126bf5b347e8a244767" [label=""];
  "sha256:3a3818c2a78f3277bc777a7566aabdba9e42bef64f541126bf5b347e8a244767" -> "sha256:93f985106b42adc62ea820e8788d019b43b82d15bc19ce2681709f9da50471b9" [label=""];
  "sha256:3091159ea950a29a96e19a0624053050eda3de878a2472afa27630a7a44bb88d" -> "sha256:93f985106b42adc62ea820e8788d019b43b82d15bc19ce2681709f9da50471b9" [label=""];
  "sha256:93f985106b42adc62ea820e8788d019b43b82d15bc19ce2681709f9da50471b9" -> "sha256:bd897ff77a33eab5ae5ab3e87a7ab236063a036d8791ee3cfc7b3aa0260efd69" [label=""];
  "sha256:bd897ff77a33eab5ae5ab3e87a7ab236063a036d8791ee3cfc7b3aa0260efd69" -> "sha256:73dc2db06fe7a8516c4aa322a0fa89f61a942a0fee1255486ef4c401523af08b" [label=""];
  "sha256:3091159ea950a29a96e19a0624053050eda3de878a2472afa27630a7a44bb88d" -> "sha256:73dc2db06fe7a8516c4aa322a0fa89f61a942a0fee1255486ef4c401523af08b" [label=""];
  "sha256:73dc2db06fe7a8516c4aa322a0fa89f61a942a0fee1255486ef4c401523af08b" -> "sha256:6e8e9d277055a7a564009f1c94a6c462940ebe7e7cf5c9d9652d2b9bd7669afb" [label=""];
}

