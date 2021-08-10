[app/sources/207379666.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:a40a1e196b551c520b9ec14b31f1423db69e3668d763600cdacc9ed026a3f11e" [label="/bin/sh -c apt-get update  && apt-get dist-upgrade -y  && apt-get install -y locales sudo  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:90eaec8a332a90b6f60c0cc3b16085ee542d182d79722da83131a466d06f8dd6" [label="/bin/sh -c echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen  && locale-gen en_US.UTF-8  && update-locale LANG=en_US.UTF-8 LANGUAGE=en_US:en" shape="box"];
  "sha256:abbbf46266566be181f8f615aedc1df74900dc6844d909f15fcfb1701255f4b8" [label="/bin/sh -c adduser --disabled-password --gecos '' docker  && adduser docker sudo  && echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers" shape="box"];
  "sha256:aa06627848994c59944206cbdad5fd018af5d0dfa75ebfb3620c4bf9bcab74c5" [label="/bin/sh -c apt-get update && apt-get install -y     wget bash bc gcc sed patch patchutils tar bzip2 gzip perl gawk gperf zip unzip diffutils texinfo lzop python python3     g++ xfonts-utils xfonts-utils xfonts-utils xsltproc default-jre-headless     libc6-dev libncurses5-dev     u-boot-tools     xz-utils make file libxml-parser-perl     libjson-perl     golang-go     git openssh-client     --no-install-recommends  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:f2e527f70c8b467d61a59cbf438dbc4ed4ac6657206a0142c5d498f55e7c9663" [label="sha256:f2e527f70c8b467d61a59cbf438dbc4ed4ac6657206a0142c5d498f55e7c9663" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:a40a1e196b551c520b9ec14b31f1423db69e3668d763600cdacc9ed026a3f11e" [label=""];
  "sha256:a40a1e196b551c520b9ec14b31f1423db69e3668d763600cdacc9ed026a3f11e" -> "sha256:90eaec8a332a90b6f60c0cc3b16085ee542d182d79722da83131a466d06f8dd6" [label=""];
  "sha256:90eaec8a332a90b6f60c0cc3b16085ee542d182d79722da83131a466d06f8dd6" -> "sha256:abbbf46266566be181f8f615aedc1df74900dc6844d909f15fcfb1701255f4b8" [label=""];
  "sha256:abbbf46266566be181f8f615aedc1df74900dc6844d909f15fcfb1701255f4b8" -> "sha256:aa06627848994c59944206cbdad5fd018af5d0dfa75ebfb3620c4bf9bcab74c5" [label=""];
  "sha256:aa06627848994c59944206cbdad5fd018af5d0dfa75ebfb3620c4bf9bcab74c5" -> "sha256:f2e527f70c8b467d61a59cbf438dbc4ed4ac6657206a0142c5d498f55e7c9663" [label=""];
}

