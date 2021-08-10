[app/sources/204996611.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:f162e290f277890a67a4d3c794fb952fef3a53344fc41ea5713703a5ed975b7c" [label="/bin/sh -c apt-get update && apt-get install -y         build-essential         gcc         g++         make         cmake         git         ca-certificates         tar         gzip         vim         curl         libelf-dev         libelf1         libiberty-dev         libboost-all-dev     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:5a36c5106638f177a3e770aa829a2757dd28df91e74ff857ded8d615ffd8b543" [label="/bin/sh -c git clone https://github.com/dyninst/dyninst         && cd dyninst && mkdir build && cd build         && cmake ..         && make         && make install         && cd ../.." shape="box"];
  "sha256:726eeca799820bcfcdccbbf3efd99ea86503fb038ff861ff1efe4ff1ad409fa7" [label="/bin/sh -c curl http://lcamtuf.coredump.cx/afl/releases/afl-latest.tgz | tar -zxvf -         && cd afl-*         && make         && make install         && cd .." shape="box"];
  "sha256:2f796df54417afac7e7061e79389438b18f7dc66fb6add6d42e2247622125100" [label="/bin/sh -c git clone https://github.com/vanhauser-thc/afl-dyninst         && cd afl-dyninst         && ln -s `ls -d1 ../afl-2* | tail -1` afl         && make         && make install         && cd ..         && echo \"/usr/local/lib\" > /etc/ld.so.conf.d/dyninst.conf && ldconfig         && echo \"export DYNINSTAPI_RT_LIB=/usr/local/lib/libdyninstAPI_RT.so\" >> .bashrc" shape="box"];
  "sha256:f568f2537d91293d94adfc69a5ee1d6d79a70c9af8e6a99340b6fa47ab99519b" [label="sha256:f568f2537d91293d94adfc69a5ee1d6d79a70c9af8e6a99340b6fa47ab99519b" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:f162e290f277890a67a4d3c794fb952fef3a53344fc41ea5713703a5ed975b7c" [label=""];
  "sha256:f162e290f277890a67a4d3c794fb952fef3a53344fc41ea5713703a5ed975b7c" -> "sha256:5a36c5106638f177a3e770aa829a2757dd28df91e74ff857ded8d615ffd8b543" [label=""];
  "sha256:5a36c5106638f177a3e770aa829a2757dd28df91e74ff857ded8d615ffd8b543" -> "sha256:726eeca799820bcfcdccbbf3efd99ea86503fb038ff861ff1efe4ff1ad409fa7" [label=""];
  "sha256:726eeca799820bcfcdccbbf3efd99ea86503fb038ff861ff1efe4ff1ad409fa7" -> "sha256:2f796df54417afac7e7061e79389438b18f7dc66fb6add6d42e2247622125100" [label=""];
  "sha256:2f796df54417afac7e7061e79389438b18f7dc66fb6add6d42e2247622125100" -> "sha256:f568f2537d91293d94adfc69a5ee1d6d79a70c9af8e6a99340b6fa47ab99519b" [label=""];
}

