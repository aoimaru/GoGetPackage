[app/sources/320104354.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:b94ef2ebdecbdaa187816492bc9624ab6ac8c3be0261ba2799da186ac898ce47" [label="/bin/sh -c mkdir -p /apps/deepfabric" shape="box"];
  "sha256:fbb66bda1c31a7ceb92904d2eb3ac04c7c95bdb9c936cfba61c50adb885fd80d" [label="local://context" shape="ellipse"];
  "sha256:fca231a09341a5a81a1374b57db108f3466b175f1c3a73a6880e7f1447a63f8e" [label="copy{src=/dist/redis-proxy, dest=/apps/deepfabric}" shape="note"];
  "sha256:56005b81f34df9b0d6505bbfaeffefd970b7a0943198d51e01631070d46c1184" [label="copy{src=/entrypoint.sh, dest=/apps/deepfabric}" shape="note"];
  "sha256:acc0644348e1e986d6b4b900c58d3b953cbe701c672e7b8cb5ae71790cd2f7b3" [label="/bin/sh -c chmod +x /apps/deepfabric/redis-proxy     && chmod +x /apps/deepfabric/entrypoint.sh" shape="box"];
  "sha256:e66bbed164a32c5d57e06420d5f7109d2904710135a707bc54eb0eed1156bf25" [label="mkdir{path=/apps/deepfabric}" shape="note"];
  "sha256:9bfa29323785badaa7f6c109e0ab2a30aa7019d8b1d2cd28b657ee07b1980e33" [label="sha256:9bfa29323785badaa7f6c109e0ab2a30aa7019d8b1d2cd28b657ee07b1980e33" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:b94ef2ebdecbdaa187816492bc9624ab6ac8c3be0261ba2799da186ac898ce47" [label=""];
  "sha256:b94ef2ebdecbdaa187816492bc9624ab6ac8c3be0261ba2799da186ac898ce47" -> "sha256:fca231a09341a5a81a1374b57db108f3466b175f1c3a73a6880e7f1447a63f8e" [label=""];
  "sha256:fbb66bda1c31a7ceb92904d2eb3ac04c7c95bdb9c936cfba61c50adb885fd80d" -> "sha256:fca231a09341a5a81a1374b57db108f3466b175f1c3a73a6880e7f1447a63f8e" [label=""];
  "sha256:fca231a09341a5a81a1374b57db108f3466b175f1c3a73a6880e7f1447a63f8e" -> "sha256:56005b81f34df9b0d6505bbfaeffefd970b7a0943198d51e01631070d46c1184" [label=""];
  "sha256:fbb66bda1c31a7ceb92904d2eb3ac04c7c95bdb9c936cfba61c50adb885fd80d" -> "sha256:56005b81f34df9b0d6505bbfaeffefd970b7a0943198d51e01631070d46c1184" [label=""];
  "sha256:56005b81f34df9b0d6505bbfaeffefd970b7a0943198d51e01631070d46c1184" -> "sha256:acc0644348e1e986d6b4b900c58d3b953cbe701c672e7b8cb5ae71790cd2f7b3" [label=""];
  "sha256:acc0644348e1e986d6b4b900c58d3b953cbe701c672e7b8cb5ae71790cd2f7b3" -> "sha256:e66bbed164a32c5d57e06420d5f7109d2904710135a707bc54eb0eed1156bf25" [label=""];
  "sha256:e66bbed164a32c5d57e06420d5f7109d2904710135a707bc54eb0eed1156bf25" -> "sha256:9bfa29323785badaa7f6c109e0ab2a30aa7019d8b1d2cd28b657ee07b1980e33" [label=""];
}

