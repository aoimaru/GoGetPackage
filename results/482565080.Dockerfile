[app/sources/482565080.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:f4e774e2c83b450cbadccc810d06eeb9577d353886f15174c647810edf46b600" [label="/bin/sh -c apt-get update ; apt-get install -y git lintian build-essential debhelper ccache lsb-release" shape="box"];
  "sha256:08966d8193130416218e5c34de02d4b2767e1689f8c2b7f06782383de89f4a40" [label="/bin/sh -c git clone https://github.com/tcobbs/ldview" shape="box"];
  "sha256:202f8c9c70f08aca442e1e83f99509e3a9c4d336ff22ef042908b9c689566a5f" [label="/bin/sh -c apt-get install -y `grep Build-Depends ldview/QT/debian/control | cut -d: -f2| sed 's/(.*)//g' | tr -d ,` libtinyxml-dev libgl2ps-dev" shape="box"];
  "sha256:5ec393e27e687fc4cb0ce27215c7441ac717d8f71f4cab7f01fa0ad80c002daa" [label="sha256:5ec393e27e687fc4cb0ce27215c7441ac717d8f71f4cab7f01fa0ad80c002daa" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:f4e774e2c83b450cbadccc810d06eeb9577d353886f15174c647810edf46b600" [label=""];
  "sha256:f4e774e2c83b450cbadccc810d06eeb9577d353886f15174c647810edf46b600" -> "sha256:08966d8193130416218e5c34de02d4b2767e1689f8c2b7f06782383de89f4a40" [label=""];
  "sha256:08966d8193130416218e5c34de02d4b2767e1689f8c2b7f06782383de89f4a40" -> "sha256:202f8c9c70f08aca442e1e83f99509e3a9c4d336ff22ef042908b9c689566a5f" [label=""];
  "sha256:202f8c9c70f08aca442e1e83f99509e3a9c4d336ff22ef042908b9c689566a5f" -> "sha256:5ec393e27e687fc4cb0ce27215c7441ac717d8f71f4cab7f01fa0ad80c002daa" [label=""];
}

