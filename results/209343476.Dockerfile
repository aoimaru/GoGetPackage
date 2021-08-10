[app/sources/209343476.Dockerfile]
digraph {
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:5cce52af7b494baf48c6533c66833e684aa4cdfcf3e68783504bb7fb5f0cfb96" [label="/bin/sh -c set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ||         gpg --keyserver pgp.mit.edu --recv-keys \"$key\" ||         gpg --keyserver keyserver.pgp.com --recv-keys \"$key\" ;     done" shape="box"];
  "sha256:05e98226fe9cba262b7b95905cb387ba1c13d34c94abe0eecf30b98e72c6b17f" [label="/bin/sh -c ARCH= && dpkgArch=\"$(dpkg --print-architecture)\" &&     case \"${dpkgArch##*-}\" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo \"Unsupported architecture: ${dpkgArch}\"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO \"https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc\" &&     curl -SLO \"https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb\" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps" shape="box"];
  "sha256:5ce69041bb6ea1e2a546ad17da76f3bd6c31ee3e0189325f7798a6619dadc9c9" [label="local://context" shape="ellipse"];
  "sha256:20aa78e140218584a61a9f4f453af227adf63609fbf4f36ec5ae9d95193b05b9" [label="copy{src=/LICENSE, dest=/usr/share/chronograf/LICENSE}" shape="note"];
  "sha256:5e07e35577287c74798572ce22b5f2c29543f0d1252e15564b3cfa29a7a44dc0" [label="copy{src=/agpl-3.0.md, dest=/usr/share/chronograf/agpl-3.0.md}" shape="note"];
  "sha256:5d11017e4d11620487ad7f013256bf15867d1fd84a4a4054558546b8a30f120e" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:accb75cbc4e162344cf7cdb21c5261881bd9be875b291e7b654ce95e726c76b1" [label="sha256:accb75cbc4e162344cf7cdb21c5261881bd9be875b291e7b654ce95e726c76b1" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:5cce52af7b494baf48c6533c66833e684aa4cdfcf3e68783504bb7fb5f0cfb96" [label=""];
  "sha256:5cce52af7b494baf48c6533c66833e684aa4cdfcf3e68783504bb7fb5f0cfb96" -> "sha256:05e98226fe9cba262b7b95905cb387ba1c13d34c94abe0eecf30b98e72c6b17f" [label=""];
  "sha256:05e98226fe9cba262b7b95905cb387ba1c13d34c94abe0eecf30b98e72c6b17f" -> "sha256:20aa78e140218584a61a9f4f453af227adf63609fbf4f36ec5ae9d95193b05b9" [label=""];
  "sha256:5ce69041bb6ea1e2a546ad17da76f3bd6c31ee3e0189325f7798a6619dadc9c9" -> "sha256:20aa78e140218584a61a9f4f453af227adf63609fbf4f36ec5ae9d95193b05b9" [label=""];
  "sha256:20aa78e140218584a61a9f4f453af227adf63609fbf4f36ec5ae9d95193b05b9" -> "sha256:5e07e35577287c74798572ce22b5f2c29543f0d1252e15564b3cfa29a7a44dc0" [label=""];
  "sha256:5ce69041bb6ea1e2a546ad17da76f3bd6c31ee3e0189325f7798a6619dadc9c9" -> "sha256:5e07e35577287c74798572ce22b5f2c29543f0d1252e15564b3cfa29a7a44dc0" [label=""];
  "sha256:5e07e35577287c74798572ce22b5f2c29543f0d1252e15564b3cfa29a7a44dc0" -> "sha256:5d11017e4d11620487ad7f013256bf15867d1fd84a4a4054558546b8a30f120e" [label=""];
  "sha256:5ce69041bb6ea1e2a546ad17da76f3bd6c31ee3e0189325f7798a6619dadc9c9" -> "sha256:5d11017e4d11620487ad7f013256bf15867d1fd84a4a4054558546b8a30f120e" [label=""];
  "sha256:5d11017e4d11620487ad7f013256bf15867d1fd84a4a4054558546b8a30f120e" -> "sha256:accb75cbc4e162344cf7cdb21c5261881bd9be875b291e7b654ce95e726c76b1" [label=""];
}

