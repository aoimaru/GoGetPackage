[app/sources/306295821.Dockerfile]
digraph {
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" [label="docker-image://docker.io/library/centos:latest" shape="ellipse"];
  "sha256:cd36076d87a65194d6216935bc29585b4949a91b69f7c92a8f4a4349148d29e8" [label="/bin/sh -c yum -y install /usr/bin/ps nfs-utils && yum clean all" shape="box"];
  "sha256:73e4b14be90ce29f56dc25be90d31acbc94a197a9b09a9454db1abc631a6cce4" [label="/bin/sh -c mkdir -p /exports" shape="box"];
  "sha256:6e3c019743de3a88a8a67ac67e93e430ed0fa1eb61c47c6e1b9b9f458ff40f87" [label="local://context" shape="ellipse"];
  "sha256:6d762dee3d7b514fa9c4bec4238aa60bb9e57586a8949baf44ccf8fa916423d0" [label="copy{src=/run_nfs.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:d7512f82cba1de017e57bd5a1ba4fbb81e2934f5045b72d7dcb21ebb55490d8c" [label="copy{src=/index.html, dest=/tmp/index.html}" shape="note"];
  "sha256:d38bde252cca03991dab512e25a14bd5b3be0ed40639101fead4006fbebb239d" [label="/bin/sh -c chmod 644 /tmp/index.html" shape="box"];
  "sha256:2ff276c8570180194f01cda14ab6245b3d6de1ef22e681dbbca31c263f443857" [label="sha256:2ff276c8570180194f01cda14ab6245b3d6de1ef22e681dbbca31c263f443857" shape="plaintext"];
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" -> "sha256:cd36076d87a65194d6216935bc29585b4949a91b69f7c92a8f4a4349148d29e8" [label=""];
  "sha256:cd36076d87a65194d6216935bc29585b4949a91b69f7c92a8f4a4349148d29e8" -> "sha256:73e4b14be90ce29f56dc25be90d31acbc94a197a9b09a9454db1abc631a6cce4" [label=""];
  "sha256:73e4b14be90ce29f56dc25be90d31acbc94a197a9b09a9454db1abc631a6cce4" -> "sha256:6d762dee3d7b514fa9c4bec4238aa60bb9e57586a8949baf44ccf8fa916423d0" [label=""];
  "sha256:6e3c019743de3a88a8a67ac67e93e430ed0fa1eb61c47c6e1b9b9f458ff40f87" -> "sha256:6d762dee3d7b514fa9c4bec4238aa60bb9e57586a8949baf44ccf8fa916423d0" [label=""];
  "sha256:6d762dee3d7b514fa9c4bec4238aa60bb9e57586a8949baf44ccf8fa916423d0" -> "sha256:d7512f82cba1de017e57bd5a1ba4fbb81e2934f5045b72d7dcb21ebb55490d8c" [label=""];
  "sha256:6e3c019743de3a88a8a67ac67e93e430ed0fa1eb61c47c6e1b9b9f458ff40f87" -> "sha256:d7512f82cba1de017e57bd5a1ba4fbb81e2934f5045b72d7dcb21ebb55490d8c" [label=""];
  "sha256:d7512f82cba1de017e57bd5a1ba4fbb81e2934f5045b72d7dcb21ebb55490d8c" -> "sha256:d38bde252cca03991dab512e25a14bd5b3be0ed40639101fead4006fbebb239d" [label=""];
  "sha256:d38bde252cca03991dab512e25a14bd5b3be0ed40639101fead4006fbebb239d" -> "sha256:2ff276c8570180194f01cda14ab6245b3d6de1ef22e681dbbca31c263f443857" [label=""];
}

