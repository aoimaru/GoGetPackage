[app/sources/161442199.Dockerfile]
digraph {
  "sha256:4954229d0e5f396f0781850dd377ecdc8abc208e1fb8740c3a6c75cbc4794510" [label="docker-image://docker.io/library/debian:stretch@sha256:06f9296409de8cfecaff43aaee6d608ed48a95c0cac0da2a418ff526acedf67b" shape="ellipse"];
  "sha256:8996843b8e97c73844d9eb369462b54fe4a461fe52a447c073fe43c3b263c685" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends     wget     ca-certificates     gcc     g++     perl     python     python-dev     python-setuptools     libgmp10     libgmp-dev     bash     make     mawk     file     pkg-config     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:b9c4df3c1fb77b93fa11a2663891fb8139b279454c308c0539ca9c5bfb51defe" [label="/bin/sh -c mkdir -p /opt/chapel     && wget -q -O - https://github.com/chapel-lang/chapel/releases/download/$CHPL_VERSION/chapel-$CHPL_VERSION.tar.gz | tar -xzC /opt/chapel --transform 's/chapel-//'     && make -C $CHPL_HOME     && make -C $CHPL_HOME chpldoc     && make -C $CHPL_HOME test-venv" shape="box"];
  "sha256:1c4553ce1ec93d3cacf5ed11ff5b583c9e2d79f3f338177c6032739e4222e29d" [label="sha256:1c4553ce1ec93d3cacf5ed11ff5b583c9e2d79f3f338177c6032739e4222e29d" shape="plaintext"];
  "sha256:4954229d0e5f396f0781850dd377ecdc8abc208e1fb8740c3a6c75cbc4794510" -> "sha256:8996843b8e97c73844d9eb369462b54fe4a461fe52a447c073fe43c3b263c685" [label=""];
  "sha256:8996843b8e97c73844d9eb369462b54fe4a461fe52a447c073fe43c3b263c685" -> "sha256:b9c4df3c1fb77b93fa11a2663891fb8139b279454c308c0539ca9c5bfb51defe" [label=""];
  "sha256:b9c4df3c1fb77b93fa11a2663891fb8139b279454c308c0539ca9c5bfb51defe" -> "sha256:1c4553ce1ec93d3cacf5ed11ff5b583c9e2d79f3f338177c6032739e4222e29d" [label=""];
}

