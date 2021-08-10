[app/sources/314834019.Dockerfile]
digraph {
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" [label="docker-image://docker.io/library/ubuntu:bionic" shape="ellipse"];
  "sha256:bfaa0048c33cc56f6503038cbacd0ede87c5fb3caff736db3c8dca8988c771cd" [label="/bin/sh -c apt-get update  && apt-get dist-upgrade -y  && apt-get install -y locales sudo  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:8faaceecb589a74e2c8ca9eb89b0a7b4637a288c0579ead96ed01551d5111808" [label="/bin/sh -c locale-gen en_US.UTF-8  && update-locale LANG=en_US.UTF-8 LANGUAGE=en_US:en" shape="box"];
  "sha256:15e1893db9d92f913c9d5ddd20066b73a9a2dee57155583ad1458b4ad591be0a" [label="/bin/sh -c adduser --disabled-password --gecos '' docker  && adduser docker sudo  && echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers" shape="box"];
  "sha256:fa1b19fdc0e5bf5749b6a6b95049bdb6b4d8778f0c8d386c08b7096ad2116a6e" [label="/bin/sh -c apt-get update && apt-get install -y     wget bash bc gcc sed patch patchutils tar bzip2 gzip pigz perl gawk gperf zip unzip diffutils texinfo lzop python     g++ bsdmainutils parallel xfonts-utils xsltproc default-jre-headless     libc6-dev libncurses5-dev     u-boot-tools     xz-utils make file libxml-parser-perl     libjson-perl     golang-go     git openssh-client     --no-install-recommends  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:d2caba9ab8f6cee4e54b8d3cdb69e128b27d68049e48b268436634a5dc691737" [label="sha256:d2caba9ab8f6cee4e54b8d3cdb69e128b27d68049e48b268436634a5dc691737" shape="plaintext"];
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" -> "sha256:bfaa0048c33cc56f6503038cbacd0ede87c5fb3caff736db3c8dca8988c771cd" [label=""];
  "sha256:bfaa0048c33cc56f6503038cbacd0ede87c5fb3caff736db3c8dca8988c771cd" -> "sha256:8faaceecb589a74e2c8ca9eb89b0a7b4637a288c0579ead96ed01551d5111808" [label=""];
  "sha256:8faaceecb589a74e2c8ca9eb89b0a7b4637a288c0579ead96ed01551d5111808" -> "sha256:15e1893db9d92f913c9d5ddd20066b73a9a2dee57155583ad1458b4ad591be0a" [label=""];
  "sha256:15e1893db9d92f913c9d5ddd20066b73a9a2dee57155583ad1458b4ad591be0a" -> "sha256:fa1b19fdc0e5bf5749b6a6b95049bdb6b4d8778f0c8d386c08b7096ad2116a6e" [label=""];
  "sha256:fa1b19fdc0e5bf5749b6a6b95049bdb6b4d8778f0c8d386c08b7096ad2116a6e" -> "sha256:d2caba9ab8f6cee4e54b8d3cdb69e128b27d68049e48b268436634a5dc691737" [label=""];
}

