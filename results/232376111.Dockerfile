[app/sources/232376111.Dockerfile]
digraph {
  "sha256:a2ee2b563f72d08a80b1057cce0fd71ae31a2514b78648a1c446c823bc6dc736" [label="docker-image://docker.io/library/debian:stable" shape="ellipse"];
  "sha256:a4b96aaa0ba071341c7052d0c46ac03e9ed350f640895a6c820e44fc7e366875" [label="/bin/sh -c sed -i 's#deb http://deb.debian.org/debian stable main#deb http://deb.debian.org/debian stable main contrib#g' /etc/apt/sources.list" shape="box"];
  "sha256:a046341b72c0da7930fb1f8e50b177bdee7eada80e8ab83fc5bdfbd01d6d1999" [label="/bin/sh -c sed -i 's#deb http://deb.debian.org/debian stable-updates main#deb http://deb.debian.org/debian stable-updates main contrib#g' /etc/apt/sources.list" shape="box"];
  "sha256:d2d3cf9b8e5a154c8f220a21030ad329785f7df795111575cd6a333aadc2cb2c" [label="/bin/sh -c apt-get update -q && apt-get install -qy      build-essential      bzip2      chrpath      cpio      default-jre      diffstat      gawk      gcc-multilib      git-core      iputils-ping      iproute      libpython-dev      libsdl1.2-dev      locales      ovmf      procps      python      python3      python3-pexpect      qemu      socat      texinfo      unzip      wget      xterm      xz-utils" shape="box"];
  "sha256:090869875cc7f2a5882df4ebfb5b89e54649a5ffd249e4a3411f97c6460b4ccb" [label="/bin/sh -c groupadd -g $gid bitbake" shape="box"];
  "sha256:e62b05f2c4e37c5121ab39a05b04f02e33f11a5eb1a9b6fd4dde8cb50a172b92" [label="/bin/sh -c useradd -m -u $uid -g $gid bitbake" shape="box"];
  "sha256:64cb2b0c5c7fa8f81adccd0e2dd65019a2b7a2482db9156182ff0869d29453b4" [label="/bin/sh -c echo \"en_US.UTF-8 UTF-8\" > /etc/locale.gen && locale-gen" shape="box"];
  "sha256:c3d4cdecaca0d3475242fdc2503a2c518e9d923cb1dddb6f9d1771b8ef485858" [label="sha256:c3d4cdecaca0d3475242fdc2503a2c518e9d923cb1dddb6f9d1771b8ef485858" shape="plaintext"];
  "sha256:a2ee2b563f72d08a80b1057cce0fd71ae31a2514b78648a1c446c823bc6dc736" -> "sha256:a4b96aaa0ba071341c7052d0c46ac03e9ed350f640895a6c820e44fc7e366875" [label=""];
  "sha256:a4b96aaa0ba071341c7052d0c46ac03e9ed350f640895a6c820e44fc7e366875" -> "sha256:a046341b72c0da7930fb1f8e50b177bdee7eada80e8ab83fc5bdfbd01d6d1999" [label=""];
  "sha256:a046341b72c0da7930fb1f8e50b177bdee7eada80e8ab83fc5bdfbd01d6d1999" -> "sha256:d2d3cf9b8e5a154c8f220a21030ad329785f7df795111575cd6a333aadc2cb2c" [label=""];
  "sha256:d2d3cf9b8e5a154c8f220a21030ad329785f7df795111575cd6a333aadc2cb2c" -> "sha256:090869875cc7f2a5882df4ebfb5b89e54649a5ffd249e4a3411f97c6460b4ccb" [label=""];
  "sha256:090869875cc7f2a5882df4ebfb5b89e54649a5ffd249e4a3411f97c6460b4ccb" -> "sha256:e62b05f2c4e37c5121ab39a05b04f02e33f11a5eb1a9b6fd4dde8cb50a172b92" [label=""];
  "sha256:e62b05f2c4e37c5121ab39a05b04f02e33f11a5eb1a9b6fd4dde8cb50a172b92" -> "sha256:64cb2b0c5c7fa8f81adccd0e2dd65019a2b7a2482db9156182ff0869d29453b4" [label=""];
  "sha256:64cb2b0c5c7fa8f81adccd0e2dd65019a2b7a2482db9156182ff0869d29453b4" -> "sha256:c3d4cdecaca0d3475242fdc2503a2c518e9d923cb1dddb6f9d1771b8ef485858" [label=""];
}

