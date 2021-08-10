[app/sources/252793822.Dockerfile]
digraph {
  "sha256:efb52ec8834203f5a78e6f83389cfc5a2b0424e00a0d69658508e04c8c32c34f" [label="docker-image://docker.io/nvidia/cuda:9.0-cudnn7-devel" shape="ellipse"];
  "sha256:356dc5591928b47ce233ceac9057ca58d02b6dba69b790d2ac8298f923d5aa26" [label="/bin/bash -c mkdir /input" shape="box"];
  "sha256:b98885161d58fbc313dc5c994486df967d745d4cd71ad210d8007704ceff0a47" [label="/bin/bash -c mkdir /output" shape="box"];
  "sha256:dd074ce44b40b194a1778240a07c64157eb651f9e8d9d078f58b15b3728c8b18" [label="/bin/bash -c mkdir /license" shape="box"];
  "sha256:d49b823dbca870e52f82485b9f1fe280eb185fa1ac05ae98f3d3b8cab33c484f" [label="/bin/bash -c apt-get update && apt-get install -y wget && apt-get install -y git" shape="box"];
  "sha256:1804a9f35c28ec36820fda4f47c2a69eb85cd4f3bd1e2e1112e95a54793a4007" [label="/bin/bash -c MINICONDA=\"Miniconda3-latest-Linux-x86_64.sh\" && wget --quiet https://repo.continuum.io/miniconda/$MINICONDA && bash $MINICONDA -b -p /miniconda && rm -f $MINICONDA" shape="box"];
  "sha256:3b619e44a3743cff43d75deefac4f8cd62bdb61be0df6e01d7e4358c8c652e10" [label="/bin/bash -c conda config --add channels omnia" shape="box"];
  "sha256:a935cef15f21f0e7371a1426ddeec4255eeb57312f6753b5ce5531589918223d" [label="/bin/bash -c conda update --yes -n base conda" shape="box"];
  "sha256:f4432e2fc54be653169e7cb98326b2c34dfcca0e27c0756574bccb984602a98e" [label="/bin/bash -c conda config --add channels conda-forge" shape="box"];
  "sha256:877420757ed2744c7de3c5c8312f02d2b708d470f8fd59646aa2b062616f3187" [label="/bin/bash -c conda update --yes --all" shape="box"];
  "sha256:35f2ec245a483f9c941a02a8da20343e8d62982812eb8ebec63c68eeca93149e" [label="/bin/bash -c conda config --add channels omnia/label/dev" shape="box"];
  "sha256:ed222b2709ed3daf4dde98e020553b7aea00a0f23cfb653931ee87fea7f4ff6e" [label="/bin/bash -c conda config --add channels openeye" shape="box"];
  "sha256:6070a7d82c179813ffe58d5bbe99ecedde73dc8a14871e5f7c1973e5112db233" [label="/bin/bash -c conda install --yes conda-build jinja2 anaconda-client pip" shape="box"];
  "sha256:4f0e660460079ec271f7412b241a18426d0f715a95cbcbd7ceae39e0ec6c86a8" [label="/bin/bash -c git clone https://github.com/choderalab/perses" shape="box"];
  "sha256:b20c574e42f8f881cbca713ab74326671498268d35310202d37d3a8d5d783fdc" [label="/bin/bash -c conda build perses/devtools/conda-recipe" shape="box"];
  "sha256:ff510e56e21524d869326346cc3224f2e80d68e38acc17ac8eb98d3b909e9f92" [label="/bin/bash -c conda install --yes --use-local perses-dev" shape="box"];
  "sha256:ad8ea1d398ff68576a35485a6ff77b43c0c40015cc23f4179524053b62c402e4" [label="sha256:ad8ea1d398ff68576a35485a6ff77b43c0c40015cc23f4179524053b62c402e4" shape="plaintext"];
  "sha256:efb52ec8834203f5a78e6f83389cfc5a2b0424e00a0d69658508e04c8c32c34f" -> "sha256:356dc5591928b47ce233ceac9057ca58d02b6dba69b790d2ac8298f923d5aa26" [label=""];
  "sha256:356dc5591928b47ce233ceac9057ca58d02b6dba69b790d2ac8298f923d5aa26" -> "sha256:b98885161d58fbc313dc5c994486df967d745d4cd71ad210d8007704ceff0a47" [label=""];
  "sha256:b98885161d58fbc313dc5c994486df967d745d4cd71ad210d8007704ceff0a47" -> "sha256:dd074ce44b40b194a1778240a07c64157eb651f9e8d9d078f58b15b3728c8b18" [label=""];
  "sha256:dd074ce44b40b194a1778240a07c64157eb651f9e8d9d078f58b15b3728c8b18" -> "sha256:d49b823dbca870e52f82485b9f1fe280eb185fa1ac05ae98f3d3b8cab33c484f" [label=""];
  "sha256:d49b823dbca870e52f82485b9f1fe280eb185fa1ac05ae98f3d3b8cab33c484f" -> "sha256:1804a9f35c28ec36820fda4f47c2a69eb85cd4f3bd1e2e1112e95a54793a4007" [label=""];
  "sha256:1804a9f35c28ec36820fda4f47c2a69eb85cd4f3bd1e2e1112e95a54793a4007" -> "sha256:3b619e44a3743cff43d75deefac4f8cd62bdb61be0df6e01d7e4358c8c652e10" [label=""];
  "sha256:3b619e44a3743cff43d75deefac4f8cd62bdb61be0df6e01d7e4358c8c652e10" -> "sha256:a935cef15f21f0e7371a1426ddeec4255eeb57312f6753b5ce5531589918223d" [label=""];
  "sha256:a935cef15f21f0e7371a1426ddeec4255eeb57312f6753b5ce5531589918223d" -> "sha256:f4432e2fc54be653169e7cb98326b2c34dfcca0e27c0756574bccb984602a98e" [label=""];
  "sha256:f4432e2fc54be653169e7cb98326b2c34dfcca0e27c0756574bccb984602a98e" -> "sha256:877420757ed2744c7de3c5c8312f02d2b708d470f8fd59646aa2b062616f3187" [label=""];
  "sha256:877420757ed2744c7de3c5c8312f02d2b708d470f8fd59646aa2b062616f3187" -> "sha256:35f2ec245a483f9c941a02a8da20343e8d62982812eb8ebec63c68eeca93149e" [label=""];
  "sha256:35f2ec245a483f9c941a02a8da20343e8d62982812eb8ebec63c68eeca93149e" -> "sha256:ed222b2709ed3daf4dde98e020553b7aea00a0f23cfb653931ee87fea7f4ff6e" [label=""];
  "sha256:ed222b2709ed3daf4dde98e020553b7aea00a0f23cfb653931ee87fea7f4ff6e" -> "sha256:6070a7d82c179813ffe58d5bbe99ecedde73dc8a14871e5f7c1973e5112db233" [label=""];
  "sha256:6070a7d82c179813ffe58d5bbe99ecedde73dc8a14871e5f7c1973e5112db233" -> "sha256:4f0e660460079ec271f7412b241a18426d0f715a95cbcbd7ceae39e0ec6c86a8" [label=""];
  "sha256:4f0e660460079ec271f7412b241a18426d0f715a95cbcbd7ceae39e0ec6c86a8" -> "sha256:b20c574e42f8f881cbca713ab74326671498268d35310202d37d3a8d5d783fdc" [label=""];
  "sha256:b20c574e42f8f881cbca713ab74326671498268d35310202d37d3a8d5d783fdc" -> "sha256:ff510e56e21524d869326346cc3224f2e80d68e38acc17ac8eb98d3b909e9f92" [label=""];
  "sha256:ff510e56e21524d869326346cc3224f2e80d68e38acc17ac8eb98d3b909e9f92" -> "sha256:ad8ea1d398ff68576a35485a6ff77b43c0c40015cc23f4179524053b62c402e4" [label=""];
}

