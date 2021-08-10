[app/sources/285572673.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:b9ceaddedc99ad71ca6905cbd81a4b54efa64652fa531e3ed2f6df452df66138" [label="/bin/sh -c apt-get update -qq  && apt-get install --no-install-recommends -y     ca-certificates     cmake     g++     git     libboost-program-options-dev     make" shape="box"];
  "sha256:00cf3fe0300fbd016733e22a3eb3df6ddc75cbc624e6f0b94b8f59b3328562cb" [label="/bin/sh -c git clone https://github.com/tfhe/tfhe /tfhe  && cd tfhe  && make" shape="box"];
  "sha256:a2b07c0a0811a4bfa211b4ee91e00a046f1d4d0ff6c709b81089a30ed1dc9e11" [label="/bin/sh -c useradd -u $uid $uname" shape="box"];
  "sha256:9b215d2ec1e2b7efbacb2e76d8891048cb11bc7524a32b5ce90aa45aa6e6476b" [label="mkdir{path=/cingu}" shape="note"];
  "sha256:2797479a8b1bc5df4de1a394d5322396e9b0a98e9738ddd6a6cafa1690bec62f" [label="sha256:2797479a8b1bc5df4de1a394d5322396e9b0a98e9738ddd6a6cafa1690bec62f" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:b9ceaddedc99ad71ca6905cbd81a4b54efa64652fa531e3ed2f6df452df66138" [label=""];
  "sha256:b9ceaddedc99ad71ca6905cbd81a4b54efa64652fa531e3ed2f6df452df66138" -> "sha256:00cf3fe0300fbd016733e22a3eb3df6ddc75cbc624e6f0b94b8f59b3328562cb" [label=""];
  "sha256:00cf3fe0300fbd016733e22a3eb3df6ddc75cbc624e6f0b94b8f59b3328562cb" -> "sha256:a2b07c0a0811a4bfa211b4ee91e00a046f1d4d0ff6c709b81089a30ed1dc9e11" [label=""];
  "sha256:a2b07c0a0811a4bfa211b4ee91e00a046f1d4d0ff6c709b81089a30ed1dc9e11" -> "sha256:9b215d2ec1e2b7efbacb2e76d8891048cb11bc7524a32b5ce90aa45aa6e6476b" [label=""];
  "sha256:9b215d2ec1e2b7efbacb2e76d8891048cb11bc7524a32b5ce90aa45aa6e6476b" -> "sha256:2797479a8b1bc5df4de1a394d5322396e9b0a98e9738ddd6a6cafa1690bec62f" [label=""];
}

