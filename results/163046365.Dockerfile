[app/sources/163046365.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:a15dd3a7460800795fb3681aab84236553c5e406d981edc8ed900c402967da3e" [label="/bin/sh -c apt-get update && apt-get install -y build-essential \t\t\tpython-dev \t\t\tpython-pip \t\t\tgit \t\t\twget \t\t\tautoconf \t\t\tzlib1g-dev" shape="box"];
  "sha256:599ba9fd24f76e43c554cb806f0054ead236848d3ddc51aaa74af33e178b734e" [label="/bin/sh -c mkdir /code" shape="box"];
  "sha256:89c8d5d7c147045abb4a6ad4f2849ad8a5480c17af556e5110f84b11496e26e8" [label="local://context" shape="ellipse"];
  "sha256:bead965728c28361202e3d0906d78ad26b6b5161561d586ec891f76b0db209dc" [label="copy{src=/, dest=/code/Platypus}" shape="note"];
  "sha256:4982ec7bfebd80e87860439b73524e4f7e2fffe43ae9ff5436a09c430940e5b4" [label="/bin/sh -c wget https://github.com/samtools/htslib/releases/download/1.3/htslib-1.3.tar.bz2" shape="box"];
  "sha256:daeb7fe4c8e5cce17b2a6ca298336e1b9c249a5735ac52a901ea916b66866bfe" [label="/bin/sh -c tar xjf htslib-1.3.tar.bz2" shape="box"];
  "sha256:fb32b5c1f648aee44f68927dea7e1c421a373d7de3fb33fde7a9cfecdfcda3ea" [label="/bin/sh -c cd htslib-1.3 && autoconf && ./configure && make && make install" shape="box"];
  "sha256:b25cbf171d54b260e4407fde43779bce545f259c8f930873c5674adbb4f24d5a" [label="/bin/sh -c pip install cython" shape="box"];
  "sha256:c548f1e26ad6569b7568db5a9a7650ad65953d578f27d1643ac46b57b6c3f06e" [label="/bin/sh -c cd /code/Platypus && make" shape="box"];
  "sha256:1003993e624f51e1ac21c0f2c74c0e71add9a0f5f00d9f8a39c80cdf74991f85" [label="sha256:1003993e624f51e1ac21c0f2c74c0e71add9a0f5f00d9f8a39c80cdf74991f85" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:a15dd3a7460800795fb3681aab84236553c5e406d981edc8ed900c402967da3e" [label=""];
  "sha256:a15dd3a7460800795fb3681aab84236553c5e406d981edc8ed900c402967da3e" -> "sha256:599ba9fd24f76e43c554cb806f0054ead236848d3ddc51aaa74af33e178b734e" [label=""];
  "sha256:599ba9fd24f76e43c554cb806f0054ead236848d3ddc51aaa74af33e178b734e" -> "sha256:bead965728c28361202e3d0906d78ad26b6b5161561d586ec891f76b0db209dc" [label=""];
  "sha256:89c8d5d7c147045abb4a6ad4f2849ad8a5480c17af556e5110f84b11496e26e8" -> "sha256:bead965728c28361202e3d0906d78ad26b6b5161561d586ec891f76b0db209dc" [label=""];
  "sha256:bead965728c28361202e3d0906d78ad26b6b5161561d586ec891f76b0db209dc" -> "sha256:4982ec7bfebd80e87860439b73524e4f7e2fffe43ae9ff5436a09c430940e5b4" [label=""];
  "sha256:4982ec7bfebd80e87860439b73524e4f7e2fffe43ae9ff5436a09c430940e5b4" -> "sha256:daeb7fe4c8e5cce17b2a6ca298336e1b9c249a5735ac52a901ea916b66866bfe" [label=""];
  "sha256:daeb7fe4c8e5cce17b2a6ca298336e1b9c249a5735ac52a901ea916b66866bfe" -> "sha256:fb32b5c1f648aee44f68927dea7e1c421a373d7de3fb33fde7a9cfecdfcda3ea" [label=""];
  "sha256:fb32b5c1f648aee44f68927dea7e1c421a373d7de3fb33fde7a9cfecdfcda3ea" -> "sha256:b25cbf171d54b260e4407fde43779bce545f259c8f930873c5674adbb4f24d5a" [label=""];
  "sha256:b25cbf171d54b260e4407fde43779bce545f259c8f930873c5674adbb4f24d5a" -> "sha256:c548f1e26ad6569b7568db5a9a7650ad65953d578f27d1643ac46b57b6c3f06e" [label=""];
  "sha256:c548f1e26ad6569b7568db5a9a7650ad65953d578f27d1643ac46b57b6c3f06e" -> "sha256:1003993e624f51e1ac21c0f2c74c0e71add9a0f5f00d9f8a39c80cdf74991f85" [label=""];
}

