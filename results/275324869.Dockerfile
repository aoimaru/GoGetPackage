[app/sources/275324869.Dockerfile]
digraph {
  "sha256:f8d9f9fd6ecddfa8b0c0687062775df36187f2d1e7015c8ff51fc7a677dbe1bd" [label="docker-image://registry.gitlab.com/brndnmtthws-oss/conky/builder/ubuntu-base:latest@sha256:1d89a34bf21468dfcd2c62fd8e2dd28eab6098bbdb533c5fde46e20f5c9e0653" shape="ellipse"];
  "sha256:ced9b80bf396d5aed79a5b1c664b4c0142fe563c850831059a46a1eb5bca872c" [label="/bin/sh -c wget -q https://apt.llvm.org/llvm-snapshot.gpg.key   && apt-key add llvm-snapshot.gpg.key   && add-apt-repository 'deb http://apt.llvm.org/bionic/ llvm-toolchain-bionic-7 main'   && DEBIAN_FRONTEND=noninteractive   apt-get install -qy --no-install-recommends   clang-7   lldb-7   lld-7   libc++-7-dev   libc++abi-7-dev   && apt-get clean   && rm -rf /var/lib/apt/lists/*   && wget https://deb.nodesource.com/setup_11.x -O npm.sh   && bash npm.sh   && rm npm.sh   && apt-get install -y nodejs   && npm install -g lcov-summary   && npm cache clean --force" shape="box"];
  "sha256:2819779ec8490faa72c24653d0eeb9da4ba4504a8983e128eecffc0b30e9e565" [label="sha256:2819779ec8490faa72c24653d0eeb9da4ba4504a8983e128eecffc0b30e9e565" shape="plaintext"];
  "sha256:f8d9f9fd6ecddfa8b0c0687062775df36187f2d1e7015c8ff51fc7a677dbe1bd" -> "sha256:ced9b80bf396d5aed79a5b1c664b4c0142fe563c850831059a46a1eb5bca872c" [label=""];
  "sha256:ced9b80bf396d5aed79a5b1c664b4c0142fe563c850831059a46a1eb5bca872c" -> "sha256:2819779ec8490faa72c24653d0eeb9da4ba4504a8983e128eecffc0b30e9e565" [label=""];
}

