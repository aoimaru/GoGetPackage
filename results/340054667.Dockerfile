[app/sources/340054667.Dockerfile]
digraph {
  "sha256:d512fbb8ada5adddf38da963160ede4e76aa66a0a5498ca5a01bd345de7a3abf" [label="docker-image://docker.io/library/debian:wheezy" shape="ellipse"];
  "sha256:62d987280bfaeca66f5960b984644ec2be327821b090cde0ab4b827fa98ea1d9" [label="/bin/sh -c apt-get update  && apt-get install -y wget  && wget -qO - http://download.opensuse.org/repositories/home:emby/Debian_7.0/Release.key | apt-key add -  && echo 'deb http://download.opensuse.org/repositories/home:/emby/Debian_7.0/ /' >> /etc/apt/sources.list.d/emby-server.list  && apt-get update  && apt-get upgrade -y  && apt-get install -y     git     adduser     sudo     build-essential     libgdiplus     curl     devscripts     equivs     git-buildpackage     git     lsb-release     make     openssh-client     pristine-tar     rsync     wget     mono-xbuild     mono-devel     libmediainfo0     po-debconf     libsqlite3-dev     debhelper     libmono-cil-dev     cli-common-dev \tlibembymagickwand-6.q8-2     sqlite3" shape="box"];
  "sha256:a9aa93b661200d00b98f597cba76434b93e7c7bf6352873d922ca3c4b83b24bd" [label="local://context" shape="ellipse"];
  "sha256:3c7eb472b16767053df1556fff3fc3fb1141b29c6168002bed3675574c25e9c7" [label="copy{src=/entrypoint.sh, dest=/sbin/entrypoint.sh}" shape="note"];
  "sha256:74c2b139351004563d3c852f429561955638520af1e09c4d33d1ba00a7b759d4" [label="copy{src=/debfiles, dest=/var/cache/buildarea/debfiles}" shape="note"];
  "sha256:f51b3d565ad5198982f978e45a4ab8d53cb8c94c99d67ef83717d20fe0ed8980" [label="copy{src=/scripts, dest=/var/cache/scripts}" shape="note"];
  "sha256:b884fec068ba1be7bcdef34a51e2ba92cc00cebcd71ce5da1e44e4fe5e9f74e0" [label="sha256:b884fec068ba1be7bcdef34a51e2ba92cc00cebcd71ce5da1e44e4fe5e9f74e0" shape="plaintext"];
  "sha256:d512fbb8ada5adddf38da963160ede4e76aa66a0a5498ca5a01bd345de7a3abf" -> "sha256:62d987280bfaeca66f5960b984644ec2be327821b090cde0ab4b827fa98ea1d9" [label=""];
  "sha256:62d987280bfaeca66f5960b984644ec2be327821b090cde0ab4b827fa98ea1d9" -> "sha256:3c7eb472b16767053df1556fff3fc3fb1141b29c6168002bed3675574c25e9c7" [label=""];
  "sha256:a9aa93b661200d00b98f597cba76434b93e7c7bf6352873d922ca3c4b83b24bd" -> "sha256:3c7eb472b16767053df1556fff3fc3fb1141b29c6168002bed3675574c25e9c7" [label=""];
  "sha256:3c7eb472b16767053df1556fff3fc3fb1141b29c6168002bed3675574c25e9c7" -> "sha256:74c2b139351004563d3c852f429561955638520af1e09c4d33d1ba00a7b759d4" [label=""];
  "sha256:a9aa93b661200d00b98f597cba76434b93e7c7bf6352873d922ca3c4b83b24bd" -> "sha256:74c2b139351004563d3c852f429561955638520af1e09c4d33d1ba00a7b759d4" [label=""];
  "sha256:74c2b139351004563d3c852f429561955638520af1e09c4d33d1ba00a7b759d4" -> "sha256:f51b3d565ad5198982f978e45a4ab8d53cb8c94c99d67ef83717d20fe0ed8980" [label=""];
  "sha256:a9aa93b661200d00b98f597cba76434b93e7c7bf6352873d922ca3c4b83b24bd" -> "sha256:f51b3d565ad5198982f978e45a4ab8d53cb8c94c99d67ef83717d20fe0ed8980" [label=""];
  "sha256:f51b3d565ad5198982f978e45a4ab8d53cb8c94c99d67ef83717d20fe0ed8980" -> "sha256:b884fec068ba1be7bcdef34a51e2ba92cc00cebcd71ce5da1e44e4fe5e9f74e0" [label=""];
}

