[app/sources/307538479.Dockerfile]
digraph {
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:ed7cfdefcb45410c4324e26ded59bd34e56ae9fec678ea4f38216dcfa00f877f" [label="/bin/sh -c cat /etc/apt/sources.list | sed \"s/deb/deb-src/\" >> /etc/apt/sources.list" shape="box"];
  "sha256:6bf8e8d77ce6670eb48afb377b9c5ae18a7d37059a0daad784737d3d074cc9db" [label="/bin/sh -c dpkg --add-architecture s390x" shape="box"];
  "sha256:986f5032f7774cc0885ca14dfccf209ec423635c3297c3d1a674be1b443901a1" [label="/bin/sh -c apt update && apt dist-upgrade -yy" shape="box"];
  "sha256:c94a0c70b46497073b0a73bc59a16eba05179c974a2eb232041d27adbcba7ab8" [label="/bin/sh -c apt install -yy build-essential clang" shape="box"];
  "sha256:bff31ab30f14f283e7b3c3f310c9d2b4ba23a8e9638277a4427c3c3d4cbd343e" [label="/bin/sh -c apt install -yy gcc-multilib-s390x-linux-gnu binutils-multiarch" shape="box"];
  "sha256:c0a685e50199a04b4cc338f741a72b5415c94cb32489b74e38da2e6eb22ec0f2" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         libbz2-dev:s390x         liblzo2-dev:s390x         zlib1g-dev:s390x         libncursesw5-dev:s390x         libnfs-dev:s390x         librdmacm-dev:s390x         libsnappy-dev:s390x         libltdl-dev:s390x         libtool:s390x         libtool         libltdl-dev         ca-certificates         curl         git         openssl         vim &&   rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:9c71f3f97cbb1d0a4e51ae4fc23ab31ccc5b38f2f25111b6a9f3be09e55d3e02" [label="/bin/sh -c mkdir -p ${GOPATH} &&     curl -sL -o /tmp/go.tgz https://storage.googleapis.com/golang/go${GO_VERSION}.linux-amd64.tar.gz &&     tar -xf /tmp/go.tgz -C /opt/ &&     rm -rf /tmp/go.tgz" shape="box"];
  "sha256:d42158b226c26258853ee39ea9ba09c08be46eb39352772cb3e0452b5faf467e" [label="sha256:d42158b226c26258853ee39ea9ba09c08be46eb39352772cb3e0452b5faf467e" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:ed7cfdefcb45410c4324e26ded59bd34e56ae9fec678ea4f38216dcfa00f877f" [label=""];
  "sha256:ed7cfdefcb45410c4324e26ded59bd34e56ae9fec678ea4f38216dcfa00f877f" -> "sha256:6bf8e8d77ce6670eb48afb377b9c5ae18a7d37059a0daad784737d3d074cc9db" [label=""];
  "sha256:6bf8e8d77ce6670eb48afb377b9c5ae18a7d37059a0daad784737d3d074cc9db" -> "sha256:986f5032f7774cc0885ca14dfccf209ec423635c3297c3d1a674be1b443901a1" [label=""];
  "sha256:986f5032f7774cc0885ca14dfccf209ec423635c3297c3d1a674be1b443901a1" -> "sha256:c94a0c70b46497073b0a73bc59a16eba05179c974a2eb232041d27adbcba7ab8" [label=""];
  "sha256:c94a0c70b46497073b0a73bc59a16eba05179c974a2eb232041d27adbcba7ab8" -> "sha256:bff31ab30f14f283e7b3c3f310c9d2b4ba23a8e9638277a4427c3c3d4cbd343e" [label=""];
  "sha256:bff31ab30f14f283e7b3c3f310c9d2b4ba23a8e9638277a4427c3c3d4cbd343e" -> "sha256:c0a685e50199a04b4cc338f741a72b5415c94cb32489b74e38da2e6eb22ec0f2" [label=""];
  "sha256:c0a685e50199a04b4cc338f741a72b5415c94cb32489b74e38da2e6eb22ec0f2" -> "sha256:9c71f3f97cbb1d0a4e51ae4fc23ab31ccc5b38f2f25111b6a9f3be09e55d3e02" [label=""];
  "sha256:9c71f3f97cbb1d0a4e51ae4fc23ab31ccc5b38f2f25111b6a9f3be09e55d3e02" -> "sha256:d42158b226c26258853ee39ea9ba09c08be46eb39352772cb3e0452b5faf467e" [label=""];
}

