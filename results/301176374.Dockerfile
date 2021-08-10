[app/sources/301176374.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:18c96e9494f0800bfc3b22bb4449a328b675b92e28dcc89d8f73f40ad619d964" [label="/bin/sh -c dpkg --add-architecture i386" shape="box"];
  "sha256:a740dd921e9c085623894e56b99bef619ff7c332690cad8fbb6ab01b86f0e90a" [label="/bin/sh -c apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y dist-upgrade && \tDEBIAN_FRONTEND=noninteractive apt-get install -y git dialog lsb-release binutils wget ca-certificates device-tree-compiler \tpv bc lzop zip binfmt-support build-essential ccache debootstrap ntpdate gawk gcc-arm-linux-gnueabihf \tqemu-user-static u-boot-tools uuid-dev zlib1g-dev unzip libusb-1.0-0-dev parted pkg-config libncurses5-dev whiptail \tdebian-keyring debian-archive-keyring f2fs-tools libfile-fcntllock-perl rsync libssl-dev nfs-kernel-server btrfs-tools \tncurses-term p7zip-full kmod dosfstools libc6-dev-armhf-cross fakeroot xxd \tcurl patchutils python liblz4-tool libpython2.7-dev linux-base swig libpython-dev \tsystemd-container udev g++-5-arm-linux-gnueabihf lib32stdc++6 cpio tzdata psmisc acl \tlibc6-i386 lib32ncurses5 lib32tinfo5 locales ncurses-base zlib1g:i386 pixz bison libbison-dev flex libfl-dev" shape="box"];
  "sha256:1facbcdda397f4404abf080c97d532c70fd09cac46bb0062fa9176d352a7e0a3" [label="/bin/sh -c locale-gen en_US.UTF-8" shape="box"];
  "sha256:66eea8bf7bc4aeaefd558c467f77da2c36dadaad778f90a9c4e11ce6bebf057e" [label="mkdir{path=/root/armbian}" shape="note"];
  "sha256:c4a8de61e20436a6871e99ab4c1e256c0805cd6e2490fc58c15341f5bb4d487a" [label="sha256:c4a8de61e20436a6871e99ab4c1e256c0805cd6e2490fc58c15341f5bb4d487a" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:18c96e9494f0800bfc3b22bb4449a328b675b92e28dcc89d8f73f40ad619d964" [label=""];
  "sha256:18c96e9494f0800bfc3b22bb4449a328b675b92e28dcc89d8f73f40ad619d964" -> "sha256:a740dd921e9c085623894e56b99bef619ff7c332690cad8fbb6ab01b86f0e90a" [label=""];
  "sha256:a740dd921e9c085623894e56b99bef619ff7c332690cad8fbb6ab01b86f0e90a" -> "sha256:1facbcdda397f4404abf080c97d532c70fd09cac46bb0062fa9176d352a7e0a3" [label=""];
  "sha256:1facbcdda397f4404abf080c97d532c70fd09cac46bb0062fa9176d352a7e0a3" -> "sha256:66eea8bf7bc4aeaefd558c467f77da2c36dadaad778f90a9c4e11ce6bebf057e" [label=""];
  "sha256:66eea8bf7bc4aeaefd558c467f77da2c36dadaad778f90a9c4e11ce6bebf057e" -> "sha256:c4a8de61e20436a6871e99ab4c1e256c0805cd6e2490fc58c15341f5bb4d487a" [label=""];
}

