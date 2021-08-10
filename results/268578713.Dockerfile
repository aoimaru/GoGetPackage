[app/sources/268578713.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:690c0f4ce34f49ca0b1d5ade24173cb5ab93a9e059d1971880b2ccec3b3c849c" [label="/bin/sh -c mv /etc/apt/sources.list /etc/apt/sources.list.bkp &&     bash -c 'echo -e \"deb mirror://mirrors.ubuntu.com/mirrors.txt xenial main restricted universe multiverse\\ndeb mirror://mirrors.ubuntu.com/mirrors.txt xenial-updates main restricted universe multiverse\\ndeb mirror://mirrors.ubuntu.com/mirrors.txt xenial-backports main restricted universe multiverse\\ndeb mirror://mirrors.ubuntu.com/mirrors.txt xenial-security main restricted universe multiverse\\n\\n\" > /etc/apt/sources.list' &&     cat /etc/apt/sources.list.bkp >> /etc/apt/sources.list &&     cat /etc/apt/sources.list" shape="box"];
  "sha256:e0ca4d079c945bb651a374f39ae19342716da8ddd40f6bfcbcf25464a098d358" [label="/bin/sh -c apt-get clean all &&      apt-get update &&         apt-get upgrade -y &&     apt-get install -y          pkg-config              zip                     g++                     zlib1g-dev              unzip                   curl                    git                     lsb-release             liblz4-dev              libssl-dev              libcurl4-openssl-dev         liblz-dev               libbz2-dev              liblzma-dev             autotools-dev           automake                cmake                   curl                    grep                    sed                     dpkg                    fuse                    git                     wget                    zip                     build-essential         pkg-config              bzip2                   git                     zlib1g-dev &&           apt-get clean &&         apt-get purge &&         rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:411b7cfd57dd86cee71241782916421234fe76cb738f150e5a6d88ced1063ff3" [label="/bin/sh -c mkdir -p /opt" shape="box"];
  "sha256:e0bae64d52a7d8658e96da427836ab6ccdd5dbb26420338185ba418c62b19fb7" [label="/bin/sh -c cd /opt     && git clone https://github.com/samtools/htslib.git     && cd /opt/htslib     && make     && make lib-static     && make install" shape="box"];
  "sha256:954d8f7de83523cb1af9e90c5794e6895e7933fbaa33859ba6984bd35521d32d" [label="/bin/sh -c cd /opt     && git clone https://github.com/facebook/zstd.git     && cd /opt/zstd/     && make     && make install" shape="box"];
  "sha256:f1b829c0ca594cd3556a67bd1d6fe2bc2788d8cbfe3255597285ffec4bc96133" [label="/bin/sh -c cd /opt     && git clone https://mklarqvist:CpgqYBz6-S@github.com/mklarqvist/tomahawk     && cd /opt/tomahawk/     && make     && make install" shape="box"];
  "sha256:c6fdb82e6989b25cf1fbadf18808c303756d4caa43d7ee9327091effd64b2cd4" [label="mkdir{path=/data}" shape="note"];
  "sha256:646f9e9f99b9802f1b681138b31249f02a1630a8e7e4d3793e643d6b8f7af5c4" [label="sha256:646f9e9f99b9802f1b681138b31249f02a1630a8e7e4d3793e643d6b8f7af5c4" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:690c0f4ce34f49ca0b1d5ade24173cb5ab93a9e059d1971880b2ccec3b3c849c" [label=""];
  "sha256:690c0f4ce34f49ca0b1d5ade24173cb5ab93a9e059d1971880b2ccec3b3c849c" -> "sha256:e0ca4d079c945bb651a374f39ae19342716da8ddd40f6bfcbcf25464a098d358" [label=""];
  "sha256:e0ca4d079c945bb651a374f39ae19342716da8ddd40f6bfcbcf25464a098d358" -> "sha256:411b7cfd57dd86cee71241782916421234fe76cb738f150e5a6d88ced1063ff3" [label=""];
  "sha256:411b7cfd57dd86cee71241782916421234fe76cb738f150e5a6d88ced1063ff3" -> "sha256:e0bae64d52a7d8658e96da427836ab6ccdd5dbb26420338185ba418c62b19fb7" [label=""];
  "sha256:e0bae64d52a7d8658e96da427836ab6ccdd5dbb26420338185ba418c62b19fb7" -> "sha256:954d8f7de83523cb1af9e90c5794e6895e7933fbaa33859ba6984bd35521d32d" [label=""];
  "sha256:954d8f7de83523cb1af9e90c5794e6895e7933fbaa33859ba6984bd35521d32d" -> "sha256:f1b829c0ca594cd3556a67bd1d6fe2bc2788d8cbfe3255597285ffec4bc96133" [label=""];
  "sha256:f1b829c0ca594cd3556a67bd1d6fe2bc2788d8cbfe3255597285ffec4bc96133" -> "sha256:c6fdb82e6989b25cf1fbadf18808c303756d4caa43d7ee9327091effd64b2cd4" [label=""];
  "sha256:c6fdb82e6989b25cf1fbadf18808c303756d4caa43d7ee9327091effd64b2cd4" -> "sha256:646f9e9f99b9802f1b681138b31249f02a1630a8e7e4d3793e643d6b8f7af5c4" [label=""];
}

