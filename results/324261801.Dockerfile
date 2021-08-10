[app/sources/324261801.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:caa7ca716cf4f86a403488572be10dd54515d9b3e95c608646022bcad72728fc" [label="/bin/sh -c apt-get update &&     apt-get -y -q install wget lsb-release gnupg &&     wget -q http://apt-stable.ntop.org/16.04/all/apt-ntop-stable.deb &&     dpkg -i apt-ntop-stable.deb &&     apt-get clean all" shape="box"];
  "sha256:6c3eb77c618986576177b4b32f7a2431c77d6de70271db919c907bf81ab4dfea" [label="/bin/sh -c apt-get update &&     apt-get -y install n2disk" shape="box"];
  "sha256:295c3f2485024396a891ec1221a19e1c33e020cfe252e87d312c0f6f276312c0" [label="/bin/sh -c echo '#!/bin/bash\\nn2disk \"$@\"' > /run.sh &&     chmod +x /run.sh" shape="box"];
  "sha256:38424503a92caa6f09488e7d4e6feb638ee989b0e5220af5b5e80df91ab57f82" [label="sha256:38424503a92caa6f09488e7d4e6feb638ee989b0e5220af5b5e80df91ab57f82" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:caa7ca716cf4f86a403488572be10dd54515d9b3e95c608646022bcad72728fc" [label=""];
  "sha256:caa7ca716cf4f86a403488572be10dd54515d9b3e95c608646022bcad72728fc" -> "sha256:6c3eb77c618986576177b4b32f7a2431c77d6de70271db919c907bf81ab4dfea" [label=""];
  "sha256:6c3eb77c618986576177b4b32f7a2431c77d6de70271db919c907bf81ab4dfea" -> "sha256:295c3f2485024396a891ec1221a19e1c33e020cfe252e87d312c0f6f276312c0" [label=""];
  "sha256:295c3f2485024396a891ec1221a19e1c33e020cfe252e87d312c0f6f276312c0" -> "sha256:38424503a92caa6f09488e7d4e6feb638ee989b0e5220af5b5e80df91ab57f82" [label=""];
}

