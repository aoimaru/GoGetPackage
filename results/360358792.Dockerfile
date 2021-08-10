[app/sources/360358792.Dockerfile]
digraph {
  "sha256:efb52ec8834203f5a78e6f83389cfc5a2b0424e00a0d69658508e04c8c32c34f" [label="docker-image://docker.io/nvidia/cuda:9.0-cudnn7-devel" shape="ellipse"];
  "sha256:a27ed0eecb6e72ee7d3f568cf708da05918b33b6f35b4e8099190e23f04660cb" [label="/bin/sh -c apt-get update &&     apt-get install -y wget python-dev gcc &&     wget https://bootstrap.pypa.io/get-pip.py &&     python get-pip.py" shape="box"];
  "sha256:c24840d7d5e129114425855e03a436e2725e6aa32cbea0d14663acf47eea1666" [label="/bin/sh -c pip install mxnet-cu90mkl==$version" shape="box"];
  "sha256:20c91578afcdb05fa5e786ebed9e110fb4312b0421c9ec1434aa25ea5883a48b" [label="sha256:20c91578afcdb05fa5e786ebed9e110fb4312b0421c9ec1434aa25ea5883a48b" shape="plaintext"];
  "sha256:efb52ec8834203f5a78e6f83389cfc5a2b0424e00a0d69658508e04c8c32c34f" -> "sha256:a27ed0eecb6e72ee7d3f568cf708da05918b33b6f35b4e8099190e23f04660cb" [label=""];
  "sha256:a27ed0eecb6e72ee7d3f568cf708da05918b33b6f35b4e8099190e23f04660cb" -> "sha256:c24840d7d5e129114425855e03a436e2725e6aa32cbea0d14663acf47eea1666" [label=""];
  "sha256:c24840d7d5e129114425855e03a436e2725e6aa32cbea0d14663acf47eea1666" -> "sha256:20c91578afcdb05fa5e786ebed9e110fb4312b0421c9ec1434aa25ea5883a48b" [label=""];
}

