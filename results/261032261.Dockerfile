[app/sources/261032261.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:d88de66692420e283779d1de15c6fd935711573813b3b1c8452ad0ab4b219e2b" [label="/bin/sh -c mkdir /install" shape="box"];
  "sha256:66ae394c1bc8db6a44ffb0523a59ec57ef6289fa1cf1726be64f34ee83bc5514" [label="mkdir{path=/install}" shape="note"];
  "sha256:a6d68048118ae3993aa26131049fb87e840f915d7c86595a2d23baa928895bff" [label="/bin/sh -c apt-get update && apt-get install --no-install-recommends -y         make python python-pip python-pytest         vim nasm libc6-dev-i386 gcc-multilib wget git         ocaml menhir ocaml-findlib libzarith-ocaml-dev         libocamlgraph-ocaml-dev python-setuptools python-dev         ocaml-compiler-libs libppx-tools-ocaml-dev cppo libapparmor1" shape="box"];
  "sha256:6c78434034d6214fe270d11ec592ff01ca4cf3e42a9156434e92e0763b50937a" [label="/bin/sh -c wget http://fr.archive.ubuntu.com/ubuntu/pool/universe/f/firejail/firejail_0.9.52-2_amd64.deb ; dpkg -i firejail*deb; rm firejail*deb" shape="box"];
  "sha256:6abdfefb711a93bfe7ebd739b5dfd8d832f9cf70d6aab6925f560c1f49f59e1e" [label="/bin/sh -c pip install Flask" shape="box"];
  "sha256:717269dd989b0d8d7df71da8c993e73e2c66deacfedad337af6c933e3f1c5eac" [label="/bin/sh -c mkdir -p /tmp/bincat_web" shape="box"];
  "sha256:1f86a620f359bdba672eb56652a002e1365b4b4c29db6d4a9a4ae5ca39357f9f" [label="/bin/sh -c git clone https://github.com/airbus-seclab/bincat/" shape="box"];
  "sha256:4c810a05b03deb7ecf7a5028916cc0a70dcce58983409b33a29a9c94fdfa9a60" [label="/bin/sh -c cd bincat && git checkout \"$SOURCE_BRANCH\" && make PREFIX=/usr && make PREFIX=/usr install" shape="box"];
  "sha256:3940eaa0af1cd087c648032d4ed8ebd38c8f25ca460d72ed8dff9dab93c99f97" [label="sha256:3940eaa0af1cd087c648032d4ed8ebd38c8f25ca460d72ed8dff9dab93c99f97" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:d88de66692420e283779d1de15c6fd935711573813b3b1c8452ad0ab4b219e2b" [label=""];
  "sha256:d88de66692420e283779d1de15c6fd935711573813b3b1c8452ad0ab4b219e2b" -> "sha256:66ae394c1bc8db6a44ffb0523a59ec57ef6289fa1cf1726be64f34ee83bc5514" [label=""];
  "sha256:66ae394c1bc8db6a44ffb0523a59ec57ef6289fa1cf1726be64f34ee83bc5514" -> "sha256:a6d68048118ae3993aa26131049fb87e840f915d7c86595a2d23baa928895bff" [label=""];
  "sha256:a6d68048118ae3993aa26131049fb87e840f915d7c86595a2d23baa928895bff" -> "sha256:6c78434034d6214fe270d11ec592ff01ca4cf3e42a9156434e92e0763b50937a" [label=""];
  "sha256:6c78434034d6214fe270d11ec592ff01ca4cf3e42a9156434e92e0763b50937a" -> "sha256:6abdfefb711a93bfe7ebd739b5dfd8d832f9cf70d6aab6925f560c1f49f59e1e" [label=""];
  "sha256:6abdfefb711a93bfe7ebd739b5dfd8d832f9cf70d6aab6925f560c1f49f59e1e" -> "sha256:717269dd989b0d8d7df71da8c993e73e2c66deacfedad337af6c933e3f1c5eac" [label=""];
  "sha256:717269dd989b0d8d7df71da8c993e73e2c66deacfedad337af6c933e3f1c5eac" -> "sha256:1f86a620f359bdba672eb56652a002e1365b4b4c29db6d4a9a4ae5ca39357f9f" [label=""];
  "sha256:1f86a620f359bdba672eb56652a002e1365b4b4c29db6d4a9a4ae5ca39357f9f" -> "sha256:4c810a05b03deb7ecf7a5028916cc0a70dcce58983409b33a29a9c94fdfa9a60" [label=""];
  "sha256:4c810a05b03deb7ecf7a5028916cc0a70dcce58983409b33a29a9c94fdfa9a60" -> "sha256:3940eaa0af1cd087c648032d4ed8ebd38c8f25ca460d72ed8dff9dab93c99f97" [label=""];
}

