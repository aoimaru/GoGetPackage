[app/sources/251286642.Dockerfile]
digraph {
  "sha256:83e836f18ae40db5413a6484b35f60a56c0d26da29f14d7db3e2ebfd022c070b" [label="local://context" shape="ellipse"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:760fa229f0271c8e3bbbc4ed0a727fff12d8780f9626e5a70ff195252892c3af" [label="/bin/sh -c apt-get update -y  && apt-get install --no-install-recommends -y -q     apt-utils     apt-transport-https     build-essential     curl     python2.7     python2.7-dev     python-pip     git     wget  && pip install -U pip  && pip install virtualenv" shape="box"];
  "sha256:1ab76d4d7b7a32ea65ba7aa52eaeda069f5aebcf6e6bfd472c2973d8305f1b40" [label="/bin/sh -c echo \"deb https://packages.cloud.google.com/apt cloud-sdk-jessie main\" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list" shape="box"];
  "sha256:93809489ed5f22db4233795568ed0113aab9ce3736e11143a79c094eab8c3ec1" [label="/bin/sh -c curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -" shape="box"];
  "sha256:f3ddc51d4929d4c82e29d4cdaa144866d2746f21ad2ba9b477fcc80cc91f7f6e" [label="/bin/sh -c apt-get update -y && apt-get install -y google-cloud-sdk && apt-get install -y kubectl" shape="box"];
  "sha256:2736c15a229b2933c0a01cd51478608618c6ce5fccd15a106bc25199c4b847ae" [label="mkdir{path=/app}" shape="note"];
  "sha256:aa9b7c62940bed1384ea9a30ec24808dfa812d75f9c19412dca44a534e0fde3a" [label="/bin/sh -c virtualenv /env" shape="box"];
  "sha256:cf13c99bb664ceb99115a3d04967dd376c56fa716b8205451e69e9b65d39d370" [label="copy{src=/requirements.txt, dest=/app/requirements.txt}" shape="note"];
  "sha256:94485e17b1d200f45c72f3204f83b656fb8bd8163a0a9bbed042345fc0e71d37" [label="/bin/sh -c /env/bin/pip install -r /app/requirements.txt" shape="box"];
  "sha256:7229e993974eb26a3d38bcb2eff463736c6117e79d51a73ff8feb97d0edba0d0" [label="copy{src=/keytar.py, dest=/app/},copy{src=/test_runner.py, dest=/app/}" shape="note"];
  "sha256:f9b1fa31cdb8797e55dc4c49390c51ecbd9118c3b851d7b0ea36063d6c28041a" [label="copy{src=/static, dest=/app/static}" shape="note"];
  "sha256:931e529d5dbc40af5b8e6622b2a8985938bc6c1168c61f264f40c8ab235e35f2" [label="/bin/sh -c /bin/bash -c \"source ~/.bashrc\"" shape="box"];
  "sha256:ef81b03733673daccb4688e9a7133ecd78b30804c53f3e842987a8febe5d6e68" [label="sha256:ef81b03733673daccb4688e9a7133ecd78b30804c53f3e842987a8febe5d6e68" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:760fa229f0271c8e3bbbc4ed0a727fff12d8780f9626e5a70ff195252892c3af" [label=""];
  "sha256:760fa229f0271c8e3bbbc4ed0a727fff12d8780f9626e5a70ff195252892c3af" -> "sha256:1ab76d4d7b7a32ea65ba7aa52eaeda069f5aebcf6e6bfd472c2973d8305f1b40" [label=""];
  "sha256:1ab76d4d7b7a32ea65ba7aa52eaeda069f5aebcf6e6bfd472c2973d8305f1b40" -> "sha256:93809489ed5f22db4233795568ed0113aab9ce3736e11143a79c094eab8c3ec1" [label=""];
  "sha256:93809489ed5f22db4233795568ed0113aab9ce3736e11143a79c094eab8c3ec1" -> "sha256:f3ddc51d4929d4c82e29d4cdaa144866d2746f21ad2ba9b477fcc80cc91f7f6e" [label=""];
  "sha256:f3ddc51d4929d4c82e29d4cdaa144866d2746f21ad2ba9b477fcc80cc91f7f6e" -> "sha256:2736c15a229b2933c0a01cd51478608618c6ce5fccd15a106bc25199c4b847ae" [label=""];
  "sha256:2736c15a229b2933c0a01cd51478608618c6ce5fccd15a106bc25199c4b847ae" -> "sha256:aa9b7c62940bed1384ea9a30ec24808dfa812d75f9c19412dca44a534e0fde3a" [label=""];
  "sha256:aa9b7c62940bed1384ea9a30ec24808dfa812d75f9c19412dca44a534e0fde3a" -> "sha256:cf13c99bb664ceb99115a3d04967dd376c56fa716b8205451e69e9b65d39d370" [label=""];
  "sha256:83e836f18ae40db5413a6484b35f60a56c0d26da29f14d7db3e2ebfd022c070b" -> "sha256:cf13c99bb664ceb99115a3d04967dd376c56fa716b8205451e69e9b65d39d370" [label=""];
  "sha256:cf13c99bb664ceb99115a3d04967dd376c56fa716b8205451e69e9b65d39d370" -> "sha256:94485e17b1d200f45c72f3204f83b656fb8bd8163a0a9bbed042345fc0e71d37" [label=""];
  "sha256:94485e17b1d200f45c72f3204f83b656fb8bd8163a0a9bbed042345fc0e71d37" -> "sha256:7229e993974eb26a3d38bcb2eff463736c6117e79d51a73ff8feb97d0edba0d0" [label=""];
  "sha256:83e836f18ae40db5413a6484b35f60a56c0d26da29f14d7db3e2ebfd022c070b" -> "sha256:7229e993974eb26a3d38bcb2eff463736c6117e79d51a73ff8feb97d0edba0d0" [label=""];
  "sha256:7229e993974eb26a3d38bcb2eff463736c6117e79d51a73ff8feb97d0edba0d0" -> "sha256:f9b1fa31cdb8797e55dc4c49390c51ecbd9118c3b851d7b0ea36063d6c28041a" [label=""];
  "sha256:83e836f18ae40db5413a6484b35f60a56c0d26da29f14d7db3e2ebfd022c070b" -> "sha256:f9b1fa31cdb8797e55dc4c49390c51ecbd9118c3b851d7b0ea36063d6c28041a" [label=""];
  "sha256:f9b1fa31cdb8797e55dc4c49390c51ecbd9118c3b851d7b0ea36063d6c28041a" -> "sha256:931e529d5dbc40af5b8e6622b2a8985938bc6c1168c61f264f40c8ab235e35f2" [label=""];
  "sha256:931e529d5dbc40af5b8e6622b2a8985938bc6c1168c61f264f40c8ab235e35f2" -> "sha256:ef81b03733673daccb4688e9a7133ecd78b30804c53f3e842987a8febe5d6e68" [label=""];
}

