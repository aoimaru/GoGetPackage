[app/sources/257703038.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:980c2866004b298ea7423225b250050f9042116bd146924cb946dd606c3c95dc" [label="/bin/sh -c apt-get update  && apt-get dist-upgrade -y  && apt-get install -y locales sudo  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:9cbef172df88c7f0ee7ad3cbcfb98ef6688621b626dfe616d9752c79bbff77b7" [label="/bin/sh -c locale-gen en_US.UTF-8  && update-locale LANG=en_US.UTF-8 LANGUAGE=en_US:en" shape="box"];
  "sha256:642dec4fe70a332435ac4649040a08f4b8532c52a049f2dea78d9e86d8900b3e" [label="/bin/sh -c adduser --disabled-password --gecos '' docker  && adduser docker sudo  && echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers" shape="box"];
  "sha256:ee4be1ed94d48d03c09a30356f7a2c2d6fae1e4de2137e0cbd6a81bf56f798ef" [label="/bin/sh -c apt-get update && apt-get install -y     wget bash bc gcc sed patch patchutils tar bzip2 gzip perl gawk gperf zip unzip diffutils texinfo lzop python     g++ xfonts-utils xfonts-utils xfonts-utils xsltproc default-jre-headless     libc6-dev libncurses5-dev     u-boot-tools     xz-utils make file libxml-parser-perl     libjson-perl     golang-go     git openssh-client     --no-install-recommends  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:8bf9e5ee3c80b953fb9c18d81ece1be0d45467c3e3e729ccc582bd14726e558d" [label="sha256:8bf9e5ee3c80b953fb9c18d81ece1be0d45467c3e3e729ccc582bd14726e558d" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:980c2866004b298ea7423225b250050f9042116bd146924cb946dd606c3c95dc" [label=""];
  "sha256:980c2866004b298ea7423225b250050f9042116bd146924cb946dd606c3c95dc" -> "sha256:9cbef172df88c7f0ee7ad3cbcfb98ef6688621b626dfe616d9752c79bbff77b7" [label=""];
  "sha256:9cbef172df88c7f0ee7ad3cbcfb98ef6688621b626dfe616d9752c79bbff77b7" -> "sha256:642dec4fe70a332435ac4649040a08f4b8532c52a049f2dea78d9e86d8900b3e" [label=""];
  "sha256:642dec4fe70a332435ac4649040a08f4b8532c52a049f2dea78d9e86d8900b3e" -> "sha256:ee4be1ed94d48d03c09a30356f7a2c2d6fae1e4de2137e0cbd6a81bf56f798ef" [label=""];
  "sha256:ee4be1ed94d48d03c09a30356f7a2c2d6fae1e4de2137e0cbd6a81bf56f798ef" -> "sha256:8bf9e5ee3c80b953fb9c18d81ece1be0d45467c3e3e729ccc582bd14726e558d" [label=""];
}

