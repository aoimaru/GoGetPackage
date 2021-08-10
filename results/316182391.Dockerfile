[app/sources/316182391.Dockerfile]
digraph {
  "sha256:8ea2b55edd4f80bdcde5d90a9e3891d80de7b896c00ee7285ca1457a1d391953" [label="docker-image://docker.io/library/golang:1.10-stretch" shape="ellipse"];
  "sha256:2a8d391bb8df835df819e252cee71bfc3a14b2dcccc1c1a79c0ec764d02f4098" [label="/bin/sh -c dpkg --add-architecture armel     && dpkg --add-architecture armhf     && dpkg --add-architecture arm64     && dpkg --add-architecture ppc64el     && apt-get update && apt-get install -y     build-essential     curl     sudo     gawk     iptables     jq     pkg-config     libaio-dev     libcap-dev     libprotobuf-dev     libprotobuf-c0-dev     libnl-3-dev     libnet-dev     libseccomp2     libseccomp-dev     protobuf-c-compiler     protobuf-compiler     python-minimal     uidmap     kmod     crossbuild-essential-armel crossbuild-essential-armhf crossbuild-essential-arm64 crossbuild-essential-ppc64el     libseccomp-dev:armel libseccomp-dev:armhf libseccomp-dev:arm64 libseccomp-dev:ppc64el     --no-install-recommends     && apt-get clean" shape="box"];
  "sha256:fdf22303707ae37937fcbc8cb2ef1bf676eb4e0ee7713a5e2d5608e5586e35cf" [label="/bin/sh -c useradd -u1000 -m -d/home/rootless -s/bin/bash rootless" shape="box"];
  "sha256:1db7fd77f1eca588a0caa9d2734459160b12ed867ec32e1c08bbf641905a94fd" [label="/bin/sh -c cd /tmp     && git clone https://github.com/sstephenson/bats.git     && cd bats     && git reset --hard 03608115df2071fff4eaaff1605768c275e5f81f     && ./install.sh /usr/local     && rm -rf /tmp/bats" shape="box"];
  "sha256:a4ed402422447f3c9239bdcc6b9d8be0d2dae2c94d0fc5d876dfd82f798cfd06" [label="/bin/sh -c mkdir -p /usr/src/criu     && curl -sSL https://github.com/checkpoint-restore/criu/archive/${CRIU_VERSION}.tar.gz | tar -v -C /usr/src/criu/ -xz --strip-components=1     && cd /usr/src/criu     && curl https://github.com/checkpoint-restore/criu/commit/bb0b2f2635d71e549851b7c626a1464e42a3b5c7.patch | patch -p1     && make install-criu     && rm -rf /usr/src/criu" shape="box"];
  "sha256:bcc486b11fb1380e68c9808a96dffdb4247214392dbbdc357c2115041f1fc2f8" [label="/bin/sh -c mkdir -p ${ROOTFS}" shape="box"];
  "sha256:0db5da9383a0e33575f74f9867e7d10d21c490325b833fa9e03b8d326a26fd54" [label="local://context" shape="ellipse"];
  "sha256:61e333e244ededc78e8216678717176fe98288c439964c2bc1cf87f198d9e3ea" [label="copy{src=/script/tmpmount, dest=/}" shape="note"];
  "sha256:ed8e45d4135462ef980cc196aac1e18c27840af2921f820b0b48945d968554b8" [label="mkdir{path=/go/src/github.com/opencontainers/runc}" shape="note"];
  "sha256:5c3da2133546f46aa017c62d640451c6a38b6375e9f670800de1f9553bf9cb59" [label="copy{src=/, dest=/go/src/github.com/opencontainers/runc}" shape="note"];
  "sha256:87f89f0ea67ae6d4966815215b5ab82ec31bc27931e07a8d4e587f76c662255f" [label="/bin/sh -c . tests/integration/multi-arch.bash     && curl -o- -sSL `get_busybox` | tar xfJC - ${ROOTFS}" shape="box"];
  "sha256:257890dcdf1ef21139c67a91e5c94a011e26fc8c3fc72e9929aff30889b8324e" [label="sha256:257890dcdf1ef21139c67a91e5c94a011e26fc8c3fc72e9929aff30889b8324e" shape="plaintext"];
  "sha256:8ea2b55edd4f80bdcde5d90a9e3891d80de7b896c00ee7285ca1457a1d391953" -> "sha256:2a8d391bb8df835df819e252cee71bfc3a14b2dcccc1c1a79c0ec764d02f4098" [label=""];
  "sha256:2a8d391bb8df835df819e252cee71bfc3a14b2dcccc1c1a79c0ec764d02f4098" -> "sha256:fdf22303707ae37937fcbc8cb2ef1bf676eb4e0ee7713a5e2d5608e5586e35cf" [label=""];
  "sha256:fdf22303707ae37937fcbc8cb2ef1bf676eb4e0ee7713a5e2d5608e5586e35cf" -> "sha256:1db7fd77f1eca588a0caa9d2734459160b12ed867ec32e1c08bbf641905a94fd" [label=""];
  "sha256:1db7fd77f1eca588a0caa9d2734459160b12ed867ec32e1c08bbf641905a94fd" -> "sha256:a4ed402422447f3c9239bdcc6b9d8be0d2dae2c94d0fc5d876dfd82f798cfd06" [label=""];
  "sha256:a4ed402422447f3c9239bdcc6b9d8be0d2dae2c94d0fc5d876dfd82f798cfd06" -> "sha256:bcc486b11fb1380e68c9808a96dffdb4247214392dbbdc357c2115041f1fc2f8" [label=""];
  "sha256:bcc486b11fb1380e68c9808a96dffdb4247214392dbbdc357c2115041f1fc2f8" -> "sha256:61e333e244ededc78e8216678717176fe98288c439964c2bc1cf87f198d9e3ea" [label=""];
  "sha256:0db5da9383a0e33575f74f9867e7d10d21c490325b833fa9e03b8d326a26fd54" -> "sha256:61e333e244ededc78e8216678717176fe98288c439964c2bc1cf87f198d9e3ea" [label=""];
  "sha256:61e333e244ededc78e8216678717176fe98288c439964c2bc1cf87f198d9e3ea" -> "sha256:ed8e45d4135462ef980cc196aac1e18c27840af2921f820b0b48945d968554b8" [label=""];
  "sha256:ed8e45d4135462ef980cc196aac1e18c27840af2921f820b0b48945d968554b8" -> "sha256:5c3da2133546f46aa017c62d640451c6a38b6375e9f670800de1f9553bf9cb59" [label=""];
  "sha256:0db5da9383a0e33575f74f9867e7d10d21c490325b833fa9e03b8d326a26fd54" -> "sha256:5c3da2133546f46aa017c62d640451c6a38b6375e9f670800de1f9553bf9cb59" [label=""];
  "sha256:5c3da2133546f46aa017c62d640451c6a38b6375e9f670800de1f9553bf9cb59" -> "sha256:87f89f0ea67ae6d4966815215b5ab82ec31bc27931e07a8d4e587f76c662255f" [label=""];
  "sha256:87f89f0ea67ae6d4966815215b5ab82ec31bc27931e07a8d4e587f76c662255f" -> "sha256:257890dcdf1ef21139c67a91e5c94a011e26fc8c3fc72e9929aff30889b8324e" [label=""];
}

