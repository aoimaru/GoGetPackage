[app/sources/455572663.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:dfce181cfe6e714ccd9632be9f3c7792c8c4497dcfb65d02b485fdf83df18751" [label="local://context" shape="ellipse"];
  "sha256:ff4d293de7005959e7b89f30541af8a5af6c43a56d2a9b22683730e42e77b656" [label="copy{src=/install/cpp.sh, dest=/install/}" shape="note"];
  "sha256:4ce8eaf6373fcae47fe0e8f7a3ee59069c10d75d86afe8aed84a6b70b0d6354d" [label="/bin/sh -c install/cpp.sh" shape="box"];
  "sha256:b24900cb755b71097e002cfa31ec34b57463333d59a03e4be6d5c36becca696b" [label="/bin/sh -c git clone --recursive https://github.com/dmlc/mxnet && cd mxnet &&     make -j$(nproc) &&     rm -r build" shape="box"];
  "sha256:80cdd61e9b705cd79cc1acefc78af276e4daa672c70a28d3856f7fff9bd24e5e" [label="sha256:80cdd61e9b705cd79cc1acefc78af276e4daa672c70a28d3856f7fff9bd24e5e" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:ff4d293de7005959e7b89f30541af8a5af6c43a56d2a9b22683730e42e77b656" [label=""];
  "sha256:dfce181cfe6e714ccd9632be9f3c7792c8c4497dcfb65d02b485fdf83df18751" -> "sha256:ff4d293de7005959e7b89f30541af8a5af6c43a56d2a9b22683730e42e77b656" [label=""];
  "sha256:ff4d293de7005959e7b89f30541af8a5af6c43a56d2a9b22683730e42e77b656" -> "sha256:4ce8eaf6373fcae47fe0e8f7a3ee59069c10d75d86afe8aed84a6b70b0d6354d" [label=""];
  "sha256:4ce8eaf6373fcae47fe0e8f7a3ee59069c10d75d86afe8aed84a6b70b0d6354d" -> "sha256:b24900cb755b71097e002cfa31ec34b57463333d59a03e4be6d5c36becca696b" [label=""];
  "sha256:b24900cb755b71097e002cfa31ec34b57463333d59a03e4be6d5c36becca696b" -> "sha256:80cdd61e9b705cd79cc1acefc78af276e4daa672c70a28d3856f7fff9bd24e5e" [label=""];
}

