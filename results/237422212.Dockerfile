[app/sources/237422212.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:488d71ca6925529e4938bf22f737b9d86bd14449ece8c7583bbc87109e241252" [label="/bin/sh -c apt-get update &&     apt-get install -y       binutils       clang       g++       libc6-dev       libc6-dev-i386       libedit2       libevent-dev       libexpat1       libffi6       libgc-dev       libgcc-5-dev       libgfortran3       libgmp-dev       libicu55       libmpc3       libpcre3-dev       libstdc++-5-dev       locales       python-dev       python3-dev &&     apt-get install -y       libcurl4-openssl-dev &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* &&     ln -s libgmp.so /usr/lib/x86_64-linux-gnu/libgmp.so.3" shape="box"];
  "sha256:61e5956faa92eee1d5b3298374023ed0f0f16a09f5e26c1ec394de9acdcf444b" [label="/bin/sh -c locale-gen en_US.UTF-8 &&     update-locale LC_ALL=en_US.UTF-8" shape="box"];
  "sha256:cac6a6b3865521fe899def8116691b6e4a4022d30abaabaee8b5c0120c64379c" [label="sha256:cac6a6b3865521fe899def8116691b6e4a4022d30abaabaee8b5c0120c64379c" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:488d71ca6925529e4938bf22f737b9d86bd14449ece8c7583bbc87109e241252" [label=""];
  "sha256:488d71ca6925529e4938bf22f737b9d86bd14449ece8c7583bbc87109e241252" -> "sha256:61e5956faa92eee1d5b3298374023ed0f0f16a09f5e26c1ec394de9acdcf444b" [label=""];
  "sha256:61e5956faa92eee1d5b3298374023ed0f0f16a09f5e26c1ec394de9acdcf444b" -> "sha256:cac6a6b3865521fe899def8116691b6e4a4022d30abaabaee8b5c0120c64379c" [label=""];
}

