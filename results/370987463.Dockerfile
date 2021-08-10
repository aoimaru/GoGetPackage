[app/sources/370987463.Dockerfile]
digraph {
  "sha256:6847b7c7e3aec47a94451c30e1aefcc36ba07f157ca37dec964028715dd39804" [label="local://context" shape="ellipse"];
  "sha256:565c6b17dfbc803f9dd813b6c5ca3d6e6a3a4348a99543002ba8b003135766fe" [label="docker-image://docker.io/library/golang:1.11.4-stretch" shape="ellipse"];
  "sha256:6709b2fae247c0446b651e5667dfae136c6116cdd375058d30ef65e13ab89b31" [label="/bin/sh -c apt-get update && apt-get install -y     build-essential     curl     sudo     gawk     iptables     jq     pkg-config     libaio-dev     libcap-dev     libprotobuf-dev     libprotobuf-c0-dev     libnl-3-dev     libnet-dev     libseccomp2     libseccomp-dev     libapparmor-dev     protobuf-c-compiler     protobuf-compiler     python-minimal     uidmap     kmod     libseccomp-dev     --no-install-recommends && apt-get clean" shape="box"];
  "sha256:081abef4640239721457079d9f6d69531c33de3990557a55d0b231681c96035b" [label="copy{src=/, dest=/go/src/github.com/opencontainers/runc}" shape="note"];
  "sha256:75e546d06210dc1c638440a3e692d4c1ec35975bbb8047b996adc988e938c8cf" [label="mkdir{path=/go/src/github.com/opencontainers/runc}" shape="note"];
  "sha256:e957172ae680698a58584fa4aa510e9205139ebc2c17fc3818b218e07d79f179" [label="/bin/sh -c for VER in v1.12.6 v1.13.1 v17.03.2 v17.06.2 v17.09.1 v17.12.1 v18.03.1 v18.06.1; do     git checkout release-${VER}-${TAG} &&     for GOARCH in $(go env GOARCH); do         export GOARCH &&         mkdir -p dist &&         make BUILDTAGS=\"seccomp selinux apparmor\" static &&         mv runc dist/runc-${VER}-${GOARCH} &&         make CGO_CFLAGS=\"-DDISABLE_MEMFD_CREATE=1\" BUILDTAGS=\"seccomp selinux apparmor\" static &&         mv runc dist/runc-${VER}-${GOARCH}-no-memfd_create     ; done ; done &&     cd dist &&     sha256sum * > sha256sum-${GOARCH}.txt" shape="box"];
  "sha256:bbba19f7b22ed73ee0c78d6b3b6da771c09e8ae688e751dd8f730ea3699fd335" [label="sha256:bbba19f7b22ed73ee0c78d6b3b6da771c09e8ae688e751dd8f730ea3699fd335" shape="plaintext"];
  "sha256:565c6b17dfbc803f9dd813b6c5ca3d6e6a3a4348a99543002ba8b003135766fe" -> "sha256:6709b2fae247c0446b651e5667dfae136c6116cdd375058d30ef65e13ab89b31" [label=""];
  "sha256:6709b2fae247c0446b651e5667dfae136c6116cdd375058d30ef65e13ab89b31" -> "sha256:081abef4640239721457079d9f6d69531c33de3990557a55d0b231681c96035b" [label=""];
  "sha256:6847b7c7e3aec47a94451c30e1aefcc36ba07f157ca37dec964028715dd39804" -> "sha256:081abef4640239721457079d9f6d69531c33de3990557a55d0b231681c96035b" [label=""];
  "sha256:081abef4640239721457079d9f6d69531c33de3990557a55d0b231681c96035b" -> "sha256:75e546d06210dc1c638440a3e692d4c1ec35975bbb8047b996adc988e938c8cf" [label=""];
  "sha256:75e546d06210dc1c638440a3e692d4c1ec35975bbb8047b996adc988e938c8cf" -> "sha256:e957172ae680698a58584fa4aa510e9205139ebc2c17fc3818b218e07d79f179" [label=""];
  "sha256:e957172ae680698a58584fa4aa510e9205139ebc2c17fc3818b218e07d79f179" -> "sha256:bbba19f7b22ed73ee0c78d6b3b6da771c09e8ae688e751dd8f730ea3699fd335" [label=""];
}

