[app/sources/175692528.Dockerfile]
digraph {
  "sha256:104ead44baf63ed5dc19b5b736e1eb701a1c4156842a79a68cf592a94cc892fb" [label="docker-image://docker.io/library/fedora:29" shape="ellipse"];
  "sha256:9b1c59865ac8f30f7ad5f5fc65b17a7ac27ef7abf459dc78f5f5d7212b91110e" [label="/bin/sh -c groupadd -g $CTNG_GID ctng" shape="box"];
  "sha256:63f2a8d615ed769040a9fbb1005b8c150511d05ec733f4deaa7aab9009fbb63d" [label="/bin/sh -c useradd -d /home/ctng -m -g $CTNG_GID -u $CTNG_UID -s /bin/bash ctng" shape="box"];
  "sha256:a1c24ee1e37bc1e6474e81b2c185ef0b0d0d8e93a25978197721b60fa90e6858" [label="/bin/sh -c yum install -y autoconf gperf bison file flex texinfo help2man gcc-c++ libtool make patch     ncurses-devel python3-devel perl-Thread-Queue bzip2 git wget which xz unzip" shape="box"];
  "sha256:667f88cc42335046baf62a29ae9f40e54267ef063974f2923a1ceecee194fa73" [label="/bin/sh -c wget -O /sbin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.2.1/dumb-init_1.2.1_amd64" shape="box"];
  "sha256:27719ae2c788cd657ff0eee076384c0e035f0f1191fee94a0793b1a5ed875b62" [label="/bin/sh -c chmod a+x /sbin/dumb-init" shape="box"];
  "sha256:9380120722071b080f3669d7f45a5c30ec1337114a306b481cfa64998239dedf" [label="/bin/sh -c echo 'export PATH=/opt/ctng/bin:$PATH' >> /etc/profile" shape="box"];
  "sha256:8182e68b64bd111aa658ade1044119727a15ee11dc39e1fc0634ebf1b7d88b9a" [label="sha256:8182e68b64bd111aa658ade1044119727a15ee11dc39e1fc0634ebf1b7d88b9a" shape="plaintext"];
  "sha256:104ead44baf63ed5dc19b5b736e1eb701a1c4156842a79a68cf592a94cc892fb" -> "sha256:9b1c59865ac8f30f7ad5f5fc65b17a7ac27ef7abf459dc78f5f5d7212b91110e" [label=""];
  "sha256:9b1c59865ac8f30f7ad5f5fc65b17a7ac27ef7abf459dc78f5f5d7212b91110e" -> "sha256:63f2a8d615ed769040a9fbb1005b8c150511d05ec733f4deaa7aab9009fbb63d" [label=""];
  "sha256:63f2a8d615ed769040a9fbb1005b8c150511d05ec733f4deaa7aab9009fbb63d" -> "sha256:a1c24ee1e37bc1e6474e81b2c185ef0b0d0d8e93a25978197721b60fa90e6858" [label=""];
  "sha256:a1c24ee1e37bc1e6474e81b2c185ef0b0d0d8e93a25978197721b60fa90e6858" -> "sha256:667f88cc42335046baf62a29ae9f40e54267ef063974f2923a1ceecee194fa73" [label=""];
  "sha256:667f88cc42335046baf62a29ae9f40e54267ef063974f2923a1ceecee194fa73" -> "sha256:27719ae2c788cd657ff0eee076384c0e035f0f1191fee94a0793b1a5ed875b62" [label=""];
  "sha256:27719ae2c788cd657ff0eee076384c0e035f0f1191fee94a0793b1a5ed875b62" -> "sha256:9380120722071b080f3669d7f45a5c30ec1337114a306b481cfa64998239dedf" [label=""];
  "sha256:9380120722071b080f3669d7f45a5c30ec1337114a306b481cfa64998239dedf" -> "sha256:8182e68b64bd111aa658ade1044119727a15ee11dc39e1fc0634ebf1b7d88b9a" [label=""];
}

