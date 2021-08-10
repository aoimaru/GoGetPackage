[app/sources/210343174.Dockerfile]
digraph {
  "sha256:42779b5156e529c7b31c054cd03ebf583af748eae29121921527615a739ecce1" [label="local://context" shape="ellipse"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:e2f4b1ee2969c662f34a5e9533e2625f6fc874cf60bd01d8220d93f4dc849b4e" [label="mkdir{path=/root}" shape="note"];
  "sha256:fbad880fa96c2e0a4564854c49448f2c9bb5980b53710cbb74e24e4313744ef7" [label="copy{src=/config/run.sh, dest=/root/}" shape="note"];
  "sha256:e35be9230d7a4100ce13dab08eb519807f49e43acff014d3a4a17862b0ec8529" [label="copy{src=/config/get_pub_key.py, dest=/root/}" shape="note"];
  "sha256:1c26002ed723be732161a153c5e30035768cc9b65c6ef19bb54856bacc8bc10a" [label="/bin/sh -c echo 'deb-src ftp://ftp.us.debian.org/debian/ sid main contrib non-free' >> /etc/apt/sources.list &&     apt-get update &&     apt-get build-dep -y         bitcoin &&     apt-get --install-recommends install -y         libbitcoin-dev &&     apt-get install -y         git &&     rm -rf /var/lib/apt/lists/* &&         cd $HOME &&     git clone https://github.com/coinclone/litecoin.git &&         cd $HOME/litecoin &&     autoreconf --install &&     aclocal &&     automake --add-missing &&     ./configure --with-incompatible-bdb --with-gui=no --with-qrencode=no &&     make" shape="box"];
  "sha256:e7f2debda0cd17629f36c1e38e3f72b081e675d7a658dc61249e209f6747c445" [label="sha256:e7f2debda0cd17629f36c1e38e3f72b081e675d7a658dc61249e209f6747c445" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:e2f4b1ee2969c662f34a5e9533e2625f6fc874cf60bd01d8220d93f4dc849b4e" [label=""];
  "sha256:e2f4b1ee2969c662f34a5e9533e2625f6fc874cf60bd01d8220d93f4dc849b4e" -> "sha256:fbad880fa96c2e0a4564854c49448f2c9bb5980b53710cbb74e24e4313744ef7" [label=""];
  "sha256:42779b5156e529c7b31c054cd03ebf583af748eae29121921527615a739ecce1" -> "sha256:fbad880fa96c2e0a4564854c49448f2c9bb5980b53710cbb74e24e4313744ef7" [label=""];
  "sha256:fbad880fa96c2e0a4564854c49448f2c9bb5980b53710cbb74e24e4313744ef7" -> "sha256:e35be9230d7a4100ce13dab08eb519807f49e43acff014d3a4a17862b0ec8529" [label=""];
  "sha256:42779b5156e529c7b31c054cd03ebf583af748eae29121921527615a739ecce1" -> "sha256:e35be9230d7a4100ce13dab08eb519807f49e43acff014d3a4a17862b0ec8529" [label=""];
  "sha256:e35be9230d7a4100ce13dab08eb519807f49e43acff014d3a4a17862b0ec8529" -> "sha256:1c26002ed723be732161a153c5e30035768cc9b65c6ef19bb54856bacc8bc10a" [label=""];
  "sha256:1c26002ed723be732161a153c5e30035768cc9b65c6ef19bb54856bacc8bc10a" -> "sha256:e7f2debda0cd17629f36c1e38e3f72b081e675d7a658dc61249e209f6747c445" [label=""];
}

