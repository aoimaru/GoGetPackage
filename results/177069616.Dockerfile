[app/sources/177069616.Dockerfile]
digraph {
  "sha256:abe92455a5e411d32e9603cc4565b237a7e19217ae4497bc975ec8368ce3b73b" [label="local://context" shape="ellipse"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:df4dbe946e091675a74494676018a8ce2023099f6b18994e4c0eaf87e21a256a" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get update" shape="box"];
  "sha256:8f42070584632d7acd5c5edf6a778482243954c6ed475c6e56b3970b29d47ba5" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get install -y python2.7-dev python-setuptools libsndfile1-dev git gcc build-essential alsa-base flac vorbis-tools python-numpy python-scipy python-matplotlib python-sklearn libsamplerate0-dev libasound2-dev cython lame libboost-program-options-dev" shape="box"];
  "sha256:a1025a7341534373290854409636f7502543c8348c324c69acbbf0aa2ea7d9b0" [label="/bin/sh -c easy_install pip" shape="box"];
  "sha256:fa4a816f6ffd20027ce8dab3ea27d3b024275528c6e97b0d446b04fb0d056005" [label="/bin/sh -c git clone https://github.com/beschulz/wav2json.git" shape="box"];
  "sha256:7c6e0decb9ac3f712b09550ce08c6ab6453fad43396e3ba1d9797d91a5b4492e" [label="copy{src=/wav2json.patch, dest=/wav2json.patch}" shape="note"];
  "sha256:905beba6f9ee94b488e77779965b0a0eeeafa725df9a96361839791aec880fd9" [label="/bin/sh -c patch wav2json/build/Makefile < wav2json.patch" shape="box"];
  "sha256:ea3573b51245cbaaee0b2add3fb179595c2cb29b5f289e20a2c563ff6dd1f956" [label="/bin/sh -c cd wav2json/build && make all && cd ../.." shape="box"];
  "sha256:685722634c046241f4ed348bdd32856e366400b01ab8ec8bc23b3a333b438036" [label="copy{src=/requirements.txt, dest=/src/requirements.txt}" shape="note"];
  "sha256:65860556ae8926549ee3fcc3c99355f29cdc2016e9b58e631e404c9f569a42af" [label="/bin/sh -c cd /src; pip install -r requirements.txt" shape="box"];
  "sha256:49712e9a1f2898c53ef258339718e9eca06e0ab691cbde46849d350ed16724df" [label="mkdir{path=/src}" shape="note"];
  "sha256:f083a3da36bf78296b41e3cadc4431e0fc37c97a71964b43a1d0e41f8cdced8d" [label="sha256:f083a3da36bf78296b41e3cadc4431e0fc37c97a71964b43a1d0e41f8cdced8d" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:df4dbe946e091675a74494676018a8ce2023099f6b18994e4c0eaf87e21a256a" [label=""];
  "sha256:df4dbe946e091675a74494676018a8ce2023099f6b18994e4c0eaf87e21a256a" -> "sha256:8f42070584632d7acd5c5edf6a778482243954c6ed475c6e56b3970b29d47ba5" [label=""];
  "sha256:8f42070584632d7acd5c5edf6a778482243954c6ed475c6e56b3970b29d47ba5" -> "sha256:a1025a7341534373290854409636f7502543c8348c324c69acbbf0aa2ea7d9b0" [label=""];
  "sha256:a1025a7341534373290854409636f7502543c8348c324c69acbbf0aa2ea7d9b0" -> "sha256:fa4a816f6ffd20027ce8dab3ea27d3b024275528c6e97b0d446b04fb0d056005" [label=""];
  "sha256:fa4a816f6ffd20027ce8dab3ea27d3b024275528c6e97b0d446b04fb0d056005" -> "sha256:7c6e0decb9ac3f712b09550ce08c6ab6453fad43396e3ba1d9797d91a5b4492e" [label=""];
  "sha256:abe92455a5e411d32e9603cc4565b237a7e19217ae4497bc975ec8368ce3b73b" -> "sha256:7c6e0decb9ac3f712b09550ce08c6ab6453fad43396e3ba1d9797d91a5b4492e" [label=""];
  "sha256:7c6e0decb9ac3f712b09550ce08c6ab6453fad43396e3ba1d9797d91a5b4492e" -> "sha256:905beba6f9ee94b488e77779965b0a0eeeafa725df9a96361839791aec880fd9" [label=""];
  "sha256:905beba6f9ee94b488e77779965b0a0eeeafa725df9a96361839791aec880fd9" -> "sha256:ea3573b51245cbaaee0b2add3fb179595c2cb29b5f289e20a2c563ff6dd1f956" [label=""];
  "sha256:ea3573b51245cbaaee0b2add3fb179595c2cb29b5f289e20a2c563ff6dd1f956" -> "sha256:685722634c046241f4ed348bdd32856e366400b01ab8ec8bc23b3a333b438036" [label=""];
  "sha256:abe92455a5e411d32e9603cc4565b237a7e19217ae4497bc975ec8368ce3b73b" -> "sha256:685722634c046241f4ed348bdd32856e366400b01ab8ec8bc23b3a333b438036" [label=""];
  "sha256:685722634c046241f4ed348bdd32856e366400b01ab8ec8bc23b3a333b438036" -> "sha256:65860556ae8926549ee3fcc3c99355f29cdc2016e9b58e631e404c9f569a42af" [label=""];
  "sha256:65860556ae8926549ee3fcc3c99355f29cdc2016e9b58e631e404c9f569a42af" -> "sha256:49712e9a1f2898c53ef258339718e9eca06e0ab691cbde46849d350ed16724df" [label=""];
  "sha256:49712e9a1f2898c53ef258339718e9eca06e0ab691cbde46849d350ed16724df" -> "sha256:f083a3da36bf78296b41e3cadc4431e0fc37c97a71964b43a1d0e41f8cdced8d" [label=""];
}

