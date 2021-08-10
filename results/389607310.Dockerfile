[app/sources/389607310.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:27d33bbeb3c37dbbd280034f8bac9189aa9cadf2b5e27f0284f9cebd1a04c249" [label="/bin/sh -c apt-get -y update && apt-get install -y software-properties-common" shape="box"];
  "sha256:300338be9bf6e21845b7420f136a92e1a6e608a8bc62b626f05f5638e850e007" [label="/bin/sh -c add-apt-repository --yes ppa:beineri/opt-qt571-trusty" shape="box"];
  "sha256:9701c66bfc22156653c1cee213e3718f0b949734f58a4c115db0ee4130ec4ebd" [label="/bin/sh -c add-apt-repository --yes ppa:fkrull/deadsnakes" shape="box"];
  "sha256:d6088911d95051f3350a1bbbde39b1c5bf76ca9e3e3099364760970f5f29e300" [label="/bin/sh -c apt-get -y update && apt-get install -y gcc g++ make git qt57tools qt573d libgl1-mesa-dev libglu1-mesa-dev python3.5 clang vim" shape="box"];
  "sha256:475a15d0c06ddc254486b90a56037343d886ea499622d1daee8c67dd5e63aab1" [label="/bin/sh -c mkdir code && cd code && git clone https://github.com/SpaceGroupUCL/depthmapX" shape="box"];
  "sha256:9e5eb1ccf1a01aa5e2880dd5fb4085b2b7edbc451ac2138df62dadfa7570a66d" [label="sha256:9e5eb1ccf1a01aa5e2880dd5fb4085b2b7edbc451ac2138df62dadfa7570a66d" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:27d33bbeb3c37dbbd280034f8bac9189aa9cadf2b5e27f0284f9cebd1a04c249" [label=""];
  "sha256:27d33bbeb3c37dbbd280034f8bac9189aa9cadf2b5e27f0284f9cebd1a04c249" -> "sha256:300338be9bf6e21845b7420f136a92e1a6e608a8bc62b626f05f5638e850e007" [label=""];
  "sha256:300338be9bf6e21845b7420f136a92e1a6e608a8bc62b626f05f5638e850e007" -> "sha256:9701c66bfc22156653c1cee213e3718f0b949734f58a4c115db0ee4130ec4ebd" [label=""];
  "sha256:9701c66bfc22156653c1cee213e3718f0b949734f58a4c115db0ee4130ec4ebd" -> "sha256:d6088911d95051f3350a1bbbde39b1c5bf76ca9e3e3099364760970f5f29e300" [label=""];
  "sha256:d6088911d95051f3350a1bbbde39b1c5bf76ca9e3e3099364760970f5f29e300" -> "sha256:475a15d0c06ddc254486b90a56037343d886ea499622d1daee8c67dd5e63aab1" [label=""];
  "sha256:475a15d0c06ddc254486b90a56037343d886ea499622d1daee8c67dd5e63aab1" -> "sha256:9e5eb1ccf1a01aa5e2880dd5fb4085b2b7edbc451ac2138df62dadfa7570a66d" [label=""];
}

