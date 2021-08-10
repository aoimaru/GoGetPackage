[app/sources/441265583.Dockerfile]
digraph {
  "sha256:4beae2eb3c3a26d804408934640890266fd2002804131f4b1711041f22a7ca02" [label="docker-image://docker.io/nvidia/cuda:8.0-cudnn5-devel-ubuntu14.04" shape="ellipse"];
  "sha256:670730344c01c901bedf66dd66feb02baa5df95ef035c548bf96ad0184d28cba" [label="/bin/sh -c which wget || (apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         wget     && rm -rf /var/lib/apt/lists/*)" shape="box"];
  "sha256:13281dcc53ee74fb07451f21f72e777fae1f02c2ec9f945feec3f78a93a9ad17" [label="/bin/sh -c wget https://github.com/NVIDIA/nccl/releases/download/v1.2.3-1%2Bcuda8.0/libnccl1_1.2.3-1.cuda8.0_amd64.deb -O libnccl.deb     && dpkg -i libnccl.deb     && rm libnccl.deb     && ldconfig" shape="box"];
  "sha256:3e367dedf4015bed82da57632c8f64d341a171b8483f8bcaee3428eb67aa7715" [label="/bin/sh -c wget https://github.com/NVIDIA/nccl/releases/download/v1.2.3-1%2Bcuda8.0/libnccl-dev_1.2.3-1.cuda8.0_amd64.deb -O libnccl-dev.deb     && dpkg -i libnccl-dev.deb     && rm libnccl-dev.deb     && ldconfig" shape="box"];
  "sha256:89004ec23b8a2ad6357147d934e6f78c4cd486d8e40cb4fa4b739c91144d9b01" [label="sha256:89004ec23b8a2ad6357147d934e6f78c4cd486d8e40cb4fa4b739c91144d9b01" shape="plaintext"];
  "sha256:4beae2eb3c3a26d804408934640890266fd2002804131f4b1711041f22a7ca02" -> "sha256:670730344c01c901bedf66dd66feb02baa5df95ef035c548bf96ad0184d28cba" [label=""];
  "sha256:670730344c01c901bedf66dd66feb02baa5df95ef035c548bf96ad0184d28cba" -> "sha256:13281dcc53ee74fb07451f21f72e777fae1f02c2ec9f945feec3f78a93a9ad17" [label=""];
  "sha256:13281dcc53ee74fb07451f21f72e777fae1f02c2ec9f945feec3f78a93a9ad17" -> "sha256:3e367dedf4015bed82da57632c8f64d341a171b8483f8bcaee3428eb67aa7715" [label=""];
  "sha256:3e367dedf4015bed82da57632c8f64d341a171b8483f8bcaee3428eb67aa7715" -> "sha256:89004ec23b8a2ad6357147d934e6f78c4cd486d8e40cb4fa4b739c91144d9b01" [label=""];
}

