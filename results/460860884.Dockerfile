[app/sources/460860884.Dockerfile]
digraph {
  "sha256:e0d271bcd484959ecefab77a805800c3fae51ffbe840cb4daf0881b4a5f6fe8c" [label="docker-image://docker.io/library/golang:1.8.0" shape="ellipse"];
  "sha256:0d3b4a1cabd268b519666aab7cbdd67fc8cad6ebfaf2ce70b3d65f9a7f8fdab0" [label="/bin/sh -c echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list" shape="box"];
  "sha256:d14703f13e8f82e63438d3dc178cbee3395e5dcccba2f536db70c9e4b9de6fcf" [label="/bin/sh -c apt-get update && apt-get install -y     build-essential     curl     gawk     iptables     jq     pkg-config     libaio-dev     libcap-dev     libprotobuf-dev     libprotobuf-c0-dev     libseccomp2/jessie-backports     libseccomp-dev/jessie-backports     protobuf-c-compiler     protobuf-compiler     python-minimal     --no-install-recommends     && apt-get clean" shape="box"];
  "sha256:e7b6477b22a6b86fe8bbc9de5bd57c2f506004727e52561de24531f2b09ee875" [label="/bin/sh -c cd /tmp     && git clone https://github.com/sstephenson/bats.git     && cd bats     && git reset --hard 03608115df2071fff4eaaff1605768c275e5f81f     && ./install.sh /usr/local     && rm -rf /tmp/bats" shape="box"];
  "sha256:c958caefceac17a795c6d4a4bcad9cf027b9bd59fce650a32d4d5f74fd98953c" [label="/bin/sh -c mkdir -p /usr/src/criu     && curl -sSL https://github.com/xemul/criu/archive/v${CRIU_VERSION}.tar.gz | tar -v -C /usr/src/criu/ -xz --strip-components=1     && cd /usr/src/criu     && make install-criu     && rm -rf /usr/src/criu" shape="box"];
  "sha256:b8f8bfc97d98a069ad9c8630fbae1e98316d7d76ed01d84d177db05855be083e" [label="/bin/sh -c mkdir -p /go/src/github.com/mvdan     && cd /go/src/github.com/mvdan     && git clone https://github.com/mvdan/sh     && cd sh     && git checkout -f v0.4.0     && go install ./cmd/shfmt     && rm -rf /go/src/github.com/mvdan" shape="box"];
  "sha256:034d07606edc4a3f5c5677cbd27639836013039544bc724da7971e60f73b2470" [label="/bin/sh -c mkdir -p ${ROOTFS}     && curl -o- -sSL 'https://github.com/docker-library/busybox/raw/a0558a9006ce0dd6f6ec5d56cfd3f32ebeeb815f/glibc/busybox.tar.xz' | tar xfJC - ${ROOTFS}" shape="box"];
  "sha256:c6aa4be97aae852e32162e3923d8f9df266f9a0eadfebb8e30030d6a183221ac" [label="local://context" shape="ellipse"];
  "sha256:56829e0422f1389748e3952ba65e3af55b6bb2833d8115884121d4b04699b1ab" [label="copy{src=/script/tmpmount, dest=/}" shape="note"];
  "sha256:6729bdf742f622d993c05dddb0092f5a92dac49b1f26eaadb0c5ca26baa10464" [label="mkdir{path=/go/src/github.com/opencontainers/runc}" shape="note"];
  "sha256:ce500f581e2290a50925570591c9a013a9e94b90e8a1f8308c28360ceab23f0e" [label="copy{src=/, dest=/go/src/github.com/opencontainers/runc}" shape="note"];
  "sha256:aa9ba6700f49dd5628342a32d157be76c8df339187f7ef9a2842102de45ffe4e" [label="sha256:aa9ba6700f49dd5628342a32d157be76c8df339187f7ef9a2842102de45ffe4e" shape="plaintext"];
  "sha256:e0d271bcd484959ecefab77a805800c3fae51ffbe840cb4daf0881b4a5f6fe8c" -> "sha256:0d3b4a1cabd268b519666aab7cbdd67fc8cad6ebfaf2ce70b3d65f9a7f8fdab0" [label=""];
  "sha256:0d3b4a1cabd268b519666aab7cbdd67fc8cad6ebfaf2ce70b3d65f9a7f8fdab0" -> "sha256:d14703f13e8f82e63438d3dc178cbee3395e5dcccba2f536db70c9e4b9de6fcf" [label=""];
  "sha256:d14703f13e8f82e63438d3dc178cbee3395e5dcccba2f536db70c9e4b9de6fcf" -> "sha256:e7b6477b22a6b86fe8bbc9de5bd57c2f506004727e52561de24531f2b09ee875" [label=""];
  "sha256:e7b6477b22a6b86fe8bbc9de5bd57c2f506004727e52561de24531f2b09ee875" -> "sha256:c958caefceac17a795c6d4a4bcad9cf027b9bd59fce650a32d4d5f74fd98953c" [label=""];
  "sha256:c958caefceac17a795c6d4a4bcad9cf027b9bd59fce650a32d4d5f74fd98953c" -> "sha256:b8f8bfc97d98a069ad9c8630fbae1e98316d7d76ed01d84d177db05855be083e" [label=""];
  "sha256:b8f8bfc97d98a069ad9c8630fbae1e98316d7d76ed01d84d177db05855be083e" -> "sha256:034d07606edc4a3f5c5677cbd27639836013039544bc724da7971e60f73b2470" [label=""];
  "sha256:034d07606edc4a3f5c5677cbd27639836013039544bc724da7971e60f73b2470" -> "sha256:56829e0422f1389748e3952ba65e3af55b6bb2833d8115884121d4b04699b1ab" [label=""];
  "sha256:c6aa4be97aae852e32162e3923d8f9df266f9a0eadfebb8e30030d6a183221ac" -> "sha256:56829e0422f1389748e3952ba65e3af55b6bb2833d8115884121d4b04699b1ab" [label=""];
  "sha256:56829e0422f1389748e3952ba65e3af55b6bb2833d8115884121d4b04699b1ab" -> "sha256:6729bdf742f622d993c05dddb0092f5a92dac49b1f26eaadb0c5ca26baa10464" [label=""];
  "sha256:6729bdf742f622d993c05dddb0092f5a92dac49b1f26eaadb0c5ca26baa10464" -> "sha256:ce500f581e2290a50925570591c9a013a9e94b90e8a1f8308c28360ceab23f0e" [label=""];
  "sha256:c6aa4be97aae852e32162e3923d8f9df266f9a0eadfebb8e30030d6a183221ac" -> "sha256:ce500f581e2290a50925570591c9a013a9e94b90e8a1f8308c28360ceab23f0e" [label=""];
  "sha256:ce500f581e2290a50925570591c9a013a9e94b90e8a1f8308c28360ceab23f0e" -> "sha256:aa9ba6700f49dd5628342a32d157be76c8df339187f7ef9a2842102de45ffe4e" [label=""];
}

