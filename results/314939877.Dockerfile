[app/sources/314939877.Dockerfile]
digraph {
  "sha256:ceb9fddc22a900c8533d394ef171eeb86cea3e8cc46d7caafd8f9d1562d86167" [label="local://context" shape="ellipse"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:684790774def17a0c88c7fd4ed834a72bdc86a212a9528c8f5ec64b800314ee8" [label="mkdir{path=/tmp-simulator}" shape="note"];
  "sha256:3954e758d06c4a62609e015456b85cceafa750c23bf70c8d9b2bda588e02b901" [label="copy{src=/, dest=/tmp-simulator/}" shape="note"];
  "sha256:3634cfd51b2fed31311056052c11ac083582c01af976ac6023e5c61a48f63840" [label="/bin/sh -c npm install" shape="box"];
  "sha256:168e8d66d320d944bd54d98a90835dd465c0a476ba7e429ea5c82e237eb3e03c" [label="sha256:168e8d66d320d944bd54d98a90835dd465c0a476ba7e429ea5c82e237eb3e03c" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:684790774def17a0c88c7fd4ed834a72bdc86a212a9528c8f5ec64b800314ee8" [label=""];
  "sha256:684790774def17a0c88c7fd4ed834a72bdc86a212a9528c8f5ec64b800314ee8" -> "sha256:3954e758d06c4a62609e015456b85cceafa750c23bf70c8d9b2bda588e02b901" [label=""];
  "sha256:ceb9fddc22a900c8533d394ef171eeb86cea3e8cc46d7caafd8f9d1562d86167" -> "sha256:3954e758d06c4a62609e015456b85cceafa750c23bf70c8d9b2bda588e02b901" [label=""];
  "sha256:3954e758d06c4a62609e015456b85cceafa750c23bf70c8d9b2bda588e02b901" -> "sha256:3634cfd51b2fed31311056052c11ac083582c01af976ac6023e5c61a48f63840" [label=""];
  "sha256:3634cfd51b2fed31311056052c11ac083582c01af976ac6023e5c61a48f63840" -> "sha256:168e8d66d320d944bd54d98a90835dd465c0a476ba7e429ea5c82e237eb3e03c" [label=""];
}

