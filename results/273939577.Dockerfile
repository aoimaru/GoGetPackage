[app/sources/273939577.Dockerfile]
digraph {
  "sha256:6f30e7850cd5bdd42afbc60b19be248309500059e1d13bfde31ed3237cf3c18f" [label="local://context" shape="ellipse"];
  "sha256:a12df75446ebf790ff79cae14801b087e47c679740d4fed1421c672c6384c8c6" [label="docker-image://gcr.io/oss-fuzz-base/base-builder@sha256:bf1e92fe80dccfaf45d0968c52bc68412dd7b0b3a792c6e623608ad9a44cfd92" shape="ellipse"];
  "sha256:3bf21b6d7903948c7afcb172c302231df9790129626f146dd5eb27f5a8ff759f" [label="/bin/sh -c apt-get update && apt-get install -y python" shape="box"];
  "sha256:57fe1f51d6c1ab3be070e0451829ce18c21dd99c3d2bc69287cd12df77d999b8" [label="/bin/sh -c git clone 'https://chromium.googlesource.com/chromium/tools/depot_tools.git'" shape="box"];
  "sha256:831147d99f8027a75a08bd2c8f2e74e0d328f92dc687edcc78e9c07f4b04ffd2" [label="/bin/sh -c git clone https://skia.googlesource.com/skia.git" shape="box"];
  "sha256:0c01a266721cd1121cc4126aa791e42ad38c19c22c709bb68e688d64d043d672" [label="mkdir{path=/src/skia}" shape="note"];
  "sha256:d0d74736a4d49e7f099974ad0f1713c8db9c0790bba5253d6b10e9f780f1b695" [label="/bin/sh -c python tools/git-sync-deps" shape="box"];
  "sha256:6da93e87e882224e752ab1c3e44561bf02dc5abdd140188dd6f5ce10e10ce9c6" [label="copy{src=/build.sh, dest=/src/}" shape="note"];
  "sha256:1496341a72cd44a123e6346a2ef80de0e90da841da51f3237b5acd8b8dec471b" [label="copy{src=/region_deserialize.options, dest=/src/skia/region_deserialize.options}" shape="note"];
  "sha256:79506a347a60b9fbee362461d53eea9e9056dec4ff9f28287aa61962491bb46a" [label="copy{src=/BUILD.gn.diff, dest=/src/skia/BUILD.gn.diff}" shape="note"];
  "sha256:2fd07bbb51b0986574faeb285e39a261d3a04ed65b2e5709a77ea7f79ead13be" [label="/bin/sh -c cat BUILD.gn.diff >> BUILD.gn" shape="box"];
  "sha256:28bc34a8fa97d48c96ec5f0935069c3ed36e93490717547dae6d1a8bd83d16bf" [label="copy{src=/region_deserialize.cpp, dest=/src/skia/fuzz/oss_fuzz/region_deserialize.cpp}" shape="note"];
  "sha256:011c2a2061e01bb60623ea56c95ff736db03f698730ddff4e3ed03a10f8c26f8" [label="sha256:011c2a2061e01bb60623ea56c95ff736db03f698730ddff4e3ed03a10f8c26f8" shape="plaintext"];
  "sha256:a12df75446ebf790ff79cae14801b087e47c679740d4fed1421c672c6384c8c6" -> "sha256:3bf21b6d7903948c7afcb172c302231df9790129626f146dd5eb27f5a8ff759f" [label=""];
  "sha256:3bf21b6d7903948c7afcb172c302231df9790129626f146dd5eb27f5a8ff759f" -> "sha256:57fe1f51d6c1ab3be070e0451829ce18c21dd99c3d2bc69287cd12df77d999b8" [label=""];
  "sha256:57fe1f51d6c1ab3be070e0451829ce18c21dd99c3d2bc69287cd12df77d999b8" -> "sha256:831147d99f8027a75a08bd2c8f2e74e0d328f92dc687edcc78e9c07f4b04ffd2" [label=""];
  "sha256:831147d99f8027a75a08bd2c8f2e74e0d328f92dc687edcc78e9c07f4b04ffd2" -> "sha256:0c01a266721cd1121cc4126aa791e42ad38c19c22c709bb68e688d64d043d672" [label=""];
  "sha256:0c01a266721cd1121cc4126aa791e42ad38c19c22c709bb68e688d64d043d672" -> "sha256:d0d74736a4d49e7f099974ad0f1713c8db9c0790bba5253d6b10e9f780f1b695" [label=""];
  "sha256:d0d74736a4d49e7f099974ad0f1713c8db9c0790bba5253d6b10e9f780f1b695" -> "sha256:6da93e87e882224e752ab1c3e44561bf02dc5abdd140188dd6f5ce10e10ce9c6" [label=""];
  "sha256:6f30e7850cd5bdd42afbc60b19be248309500059e1d13bfde31ed3237cf3c18f" -> "sha256:6da93e87e882224e752ab1c3e44561bf02dc5abdd140188dd6f5ce10e10ce9c6" [label=""];
  "sha256:6da93e87e882224e752ab1c3e44561bf02dc5abdd140188dd6f5ce10e10ce9c6" -> "sha256:1496341a72cd44a123e6346a2ef80de0e90da841da51f3237b5acd8b8dec471b" [label=""];
  "sha256:6f30e7850cd5bdd42afbc60b19be248309500059e1d13bfde31ed3237cf3c18f" -> "sha256:1496341a72cd44a123e6346a2ef80de0e90da841da51f3237b5acd8b8dec471b" [label=""];
  "sha256:1496341a72cd44a123e6346a2ef80de0e90da841da51f3237b5acd8b8dec471b" -> "sha256:79506a347a60b9fbee362461d53eea9e9056dec4ff9f28287aa61962491bb46a" [label=""];
  "sha256:6f30e7850cd5bdd42afbc60b19be248309500059e1d13bfde31ed3237cf3c18f" -> "sha256:79506a347a60b9fbee362461d53eea9e9056dec4ff9f28287aa61962491bb46a" [label=""];
  "sha256:79506a347a60b9fbee362461d53eea9e9056dec4ff9f28287aa61962491bb46a" -> "sha256:2fd07bbb51b0986574faeb285e39a261d3a04ed65b2e5709a77ea7f79ead13be" [label=""];
  "sha256:2fd07bbb51b0986574faeb285e39a261d3a04ed65b2e5709a77ea7f79ead13be" -> "sha256:28bc34a8fa97d48c96ec5f0935069c3ed36e93490717547dae6d1a8bd83d16bf" [label=""];
  "sha256:6f30e7850cd5bdd42afbc60b19be248309500059e1d13bfde31ed3237cf3c18f" -> "sha256:28bc34a8fa97d48c96ec5f0935069c3ed36e93490717547dae6d1a8bd83d16bf" [label=""];
  "sha256:28bc34a8fa97d48c96ec5f0935069c3ed36e93490717547dae6d1a8bd83d16bf" -> "sha256:011c2a2061e01bb60623ea56c95ff736db03f698730ddff4e3ed03a10f8c26f8" [label=""];
}

