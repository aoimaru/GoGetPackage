[app/sources/165686698.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:dab0bb2991c799477c42e410334ad31e417751402b7b8b80d448e1546da87537" [label="/bin/sh -c apt-get update && apt-get install -y sudo && apt-get install -y wget && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a5db0ffc4e20d8c9be0fc21013ad4691a193a4155dbc3b26374dcaacec9e9374" [label="/bin/sh -c wget http://us.download.nvidia.com/XFree86/Linux-x86_64/375.51/${NVIDIA_RUNNER} && \tchmod +x ${NVIDIA_RUNNER}" shape="box"];
  "sha256:7b20e9d3d19351df6d929eee157b33c6e221dce5f5bfdb2447e642588ea82015" [label="local://context" shape="ellipse"];
  "sha256:a635bdb6fdd81faa5bac67161ccb38d2f93b4852d5aedd39c7d99a7a70679a92" [label="copy{src=/install-nvidia-driver.sh, dest=/}" shape="note"];
  "sha256:fd5d8faa084770e6352718dd0e2a9b18620a969fde870161c6cc05213bd02e95" [label="copy{src=/install.sh, dest=/}" shape="note"];
  "sha256:a136a6d6bfcc16eef1db7fc19ffd19173286000dc8d303fb7f998c2d4a9091bd" [label="sha256:a136a6d6bfcc16eef1db7fc19ffd19173286000dc8d303fb7f998c2d4a9091bd" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:dab0bb2991c799477c42e410334ad31e417751402b7b8b80d448e1546da87537" [label=""];
  "sha256:dab0bb2991c799477c42e410334ad31e417751402b7b8b80d448e1546da87537" -> "sha256:a5db0ffc4e20d8c9be0fc21013ad4691a193a4155dbc3b26374dcaacec9e9374" [label=""];
  "sha256:a5db0ffc4e20d8c9be0fc21013ad4691a193a4155dbc3b26374dcaacec9e9374" -> "sha256:a635bdb6fdd81faa5bac67161ccb38d2f93b4852d5aedd39c7d99a7a70679a92" [label=""];
  "sha256:7b20e9d3d19351df6d929eee157b33c6e221dce5f5bfdb2447e642588ea82015" -> "sha256:a635bdb6fdd81faa5bac67161ccb38d2f93b4852d5aedd39c7d99a7a70679a92" [label=""];
  "sha256:a635bdb6fdd81faa5bac67161ccb38d2f93b4852d5aedd39c7d99a7a70679a92" -> "sha256:fd5d8faa084770e6352718dd0e2a9b18620a969fde870161c6cc05213bd02e95" [label=""];
  "sha256:7b20e9d3d19351df6d929eee157b33c6e221dce5f5bfdb2447e642588ea82015" -> "sha256:fd5d8faa084770e6352718dd0e2a9b18620a969fde870161c6cc05213bd02e95" [label=""];
  "sha256:fd5d8faa084770e6352718dd0e2a9b18620a969fde870161c6cc05213bd02e95" -> "sha256:a136a6d6bfcc16eef1db7fc19ffd19173286000dc8d303fb7f998c2d4a9091bd" [label=""];
}

