[app/sources/193748146.Dockerfile]
digraph {
  "sha256:efb52ec8834203f5a78e6f83389cfc5a2b0424e00a0d69658508e04c8c32c34f" [label="docker-image://docker.io/nvidia/cuda:9.0-cudnn7-devel" shape="ellipse"];
  "sha256:a27ed0eecb6e72ee7d3f568cf708da05918b33b6f35b4e8099190e23f04660cb" [label="/bin/sh -c apt-get update &&     apt-get install -y wget python-dev gcc &&     wget https://bootstrap.pypa.io/get-pip.py &&     python get-pip.py" shape="box"];
  "sha256:343d3caf24add774907de21b3baab769300c31f8f9d76aeb0871fb5f37f9f90c" [label="/bin/sh -c pip install mxnet-cu90==$version" shape="box"];
  "sha256:8a6717cbe87df2959abaee719e44ba9122fb59843ed2555d7bb5d09d570903bf" [label="sha256:8a6717cbe87df2959abaee719e44ba9122fb59843ed2555d7bb5d09d570903bf" shape="plaintext"];
  "sha256:efb52ec8834203f5a78e6f83389cfc5a2b0424e00a0d69658508e04c8c32c34f" -> "sha256:a27ed0eecb6e72ee7d3f568cf708da05918b33b6f35b4e8099190e23f04660cb" [label=""];
  "sha256:a27ed0eecb6e72ee7d3f568cf708da05918b33b6f35b4e8099190e23f04660cb" -> "sha256:343d3caf24add774907de21b3baab769300c31f8f9d76aeb0871fb5f37f9f90c" [label=""];
  "sha256:343d3caf24add774907de21b3baab769300c31f8f9d76aeb0871fb5f37f9f90c" -> "sha256:8a6717cbe87df2959abaee719e44ba9122fb59843ed2555d7bb5d09d570903bf" [label=""];
}

