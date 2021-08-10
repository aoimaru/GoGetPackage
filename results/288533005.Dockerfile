[app/sources/288533005.Dockerfile]
digraph {
  "sha256:40c82d219d32ebf08900b90ee54584c516f1c8dd084bed144388129c9a901d93" [label="docker-image://docker.io/nvidia/cuda:8.0-devel-ubuntu16.04" shape="ellipse"];
  "sha256:7aea8d3fa0b3c8c4633d11ecfddff3d8d2400063fe264f473c3c79e159e00c4f" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         cuda-samples-$CUDA_PKG_VERSION &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:bc7abc90ff9b8d0f1c6e4703e5d92f599a47995f69baa8e1fe2616a17fc29002" [label="mkdir{path=/usr/local/cuda/samples/0_Simple/vectorAdd}" shape="note"];
  "sha256:af5809f4cd0386a5f9f1fb26e23899436dd4f66ead9b5e171793172b1e961526" [label="/bin/sh -c make" shape="box"];
  "sha256:afd58240b7f66119ee876790713d562a446f97f030b5aa57c32903616c82bc72" [label="sha256:afd58240b7f66119ee876790713d562a446f97f030b5aa57c32903616c82bc72" shape="plaintext"];
  "sha256:40c82d219d32ebf08900b90ee54584c516f1c8dd084bed144388129c9a901d93" -> "sha256:7aea8d3fa0b3c8c4633d11ecfddff3d8d2400063fe264f473c3c79e159e00c4f" [label=""];
  "sha256:7aea8d3fa0b3c8c4633d11ecfddff3d8d2400063fe264f473c3c79e159e00c4f" -> "sha256:bc7abc90ff9b8d0f1c6e4703e5d92f599a47995f69baa8e1fe2616a17fc29002" [label=""];
  "sha256:bc7abc90ff9b8d0f1c6e4703e5d92f599a47995f69baa8e1fe2616a17fc29002" -> "sha256:af5809f4cd0386a5f9f1fb26e23899436dd4f66ead9b5e171793172b1e961526" [label=""];
  "sha256:af5809f4cd0386a5f9f1fb26e23899436dd4f66ead9b5e171793172b1e961526" -> "sha256:afd58240b7f66119ee876790713d562a446f97f030b5aa57c32903616c82bc72" [label=""];
}

