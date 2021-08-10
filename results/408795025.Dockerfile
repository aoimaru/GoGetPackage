[app/sources/408795025.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:2415f51edf8a9c1eb6a12916d26889bc07d1cbd984fbdbd0665ecf0d87f5de36" [label="/bin/sh -c adduser --disabled-password --gecos '' evething &&     mkdir /evething-env &&     mkdir /evething &&     chown evething /evething-env &&     chown evething /evething" shape="box"];
  "sha256:b9d5f9f9a08e3358326bc97a5ec5b59e39a4ee30a175ab5692fbdb44f311250a" [label="/bin/sh -c apt-get update &&     apt-get install -y python2.7 python2.7-dev python-virtualenv python-pip                     libpq-dev                     build-essential wget" shape="box"];
  "sha256:821b72ea7b39c58bb00f0233c832f88049a1817c5cdb77a2b5df748960f37489" [label="mkdir{path=/evething}" shape="note"];
  "sha256:08c4e2923d48e49f16e95667d0e25814bce8b910b473b6cf2ca655d823fbe1ff" [label="local://context" shape="ellipse"];
  "sha256:e3e4ca44aa3e88b25904f24149312d8e214a296693e10538bdabaa0911cd17af" [label="copy{src=/requirements.txt, dest=/evething/}" shape="note"];
  "sha256:d17beaf4f4f223086de99e86a0aceb96c22cfbf9d19061f70e2ad242c1f3fa4a" [label="copy{src=/docker/requirements-docker.txt, dest=/evething/docker/},copy{src=/docker/requirements-docker-prod.txt, dest=/evething/docker/}" shape="note"];
  "sha256:9b2cdbccb947de7df26cc8521657d1235a011c6907528766c63162f2b14666ce" [label="/bin/sh -c /usr/bin/virtualenv /evething-env &&     . /evething-env/bin/activate &&     pip install -r requirements.txt -r docker/requirements-docker.txt -r docker/requirements-docker-prod.txt &&     echo '. /evething-env/bin/activate' >> $HOME/.bashrc" shape="box"];
  "sha256:2022fb3658b2fc8f1e9406e8dbdb59953cdbaaa2020103eec4cf806ea548bedf" [label="sha256:2022fb3658b2fc8f1e9406e8dbdb59953cdbaaa2020103eec4cf806ea548bedf" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:2415f51edf8a9c1eb6a12916d26889bc07d1cbd984fbdbd0665ecf0d87f5de36" [label=""];
  "sha256:2415f51edf8a9c1eb6a12916d26889bc07d1cbd984fbdbd0665ecf0d87f5de36" -> "sha256:b9d5f9f9a08e3358326bc97a5ec5b59e39a4ee30a175ab5692fbdb44f311250a" [label=""];
  "sha256:b9d5f9f9a08e3358326bc97a5ec5b59e39a4ee30a175ab5692fbdb44f311250a" -> "sha256:821b72ea7b39c58bb00f0233c832f88049a1817c5cdb77a2b5df748960f37489" [label=""];
  "sha256:821b72ea7b39c58bb00f0233c832f88049a1817c5cdb77a2b5df748960f37489" -> "sha256:e3e4ca44aa3e88b25904f24149312d8e214a296693e10538bdabaa0911cd17af" [label=""];
  "sha256:08c4e2923d48e49f16e95667d0e25814bce8b910b473b6cf2ca655d823fbe1ff" -> "sha256:e3e4ca44aa3e88b25904f24149312d8e214a296693e10538bdabaa0911cd17af" [label=""];
  "sha256:e3e4ca44aa3e88b25904f24149312d8e214a296693e10538bdabaa0911cd17af" -> "sha256:d17beaf4f4f223086de99e86a0aceb96c22cfbf9d19061f70e2ad242c1f3fa4a" [label=""];
  "sha256:08c4e2923d48e49f16e95667d0e25814bce8b910b473b6cf2ca655d823fbe1ff" -> "sha256:d17beaf4f4f223086de99e86a0aceb96c22cfbf9d19061f70e2ad242c1f3fa4a" [label=""];
  "sha256:d17beaf4f4f223086de99e86a0aceb96c22cfbf9d19061f70e2ad242c1f3fa4a" -> "sha256:9b2cdbccb947de7df26cc8521657d1235a011c6907528766c63162f2b14666ce" [label=""];
  "sha256:9b2cdbccb947de7df26cc8521657d1235a011c6907528766c63162f2b14666ce" -> "sha256:2022fb3658b2fc8f1e9406e8dbdb59953cdbaaa2020103eec4cf806ea548bedf" [label=""];
}

