[app/sources/312021721.Dockerfile]
digraph {
  "sha256:dd205758b7fd92c0ea3ac4f003a616519068f374dfbbfcc617c24517ca6ca9ef" [label="docker-image://docker.io/library/bash:3.2" shape="ellipse"];
  "sha256:4043dfaf6c940e2fd49faa81b54c7c60d0112e39f0ce09e8f3045b8726bb7c06" [label="/bin/sh -c set -e;     apk --update add         git         outils-sha512     && rm -rf /var/lib/apt/lists/*     && rm /var/cache/apk/*" shape="box"];
  "sha256:3362ad06e4d571baebcdadd27f31de7c77204df72ca2a9514f77144ddfe41836" [label="/bin/sh -c set -e;     mkdir -p ~/stage     && wget \"https://storage.googleapis.com/shellcheck/shellcheck-${SHELLCHECK_VERSION}.linux.x86_64.tar.xz\"     && wget \"https://storage.googleapis.com/shellcheck/shellcheck-${SHELLCHECK_VERSION}.linux.x86_64.tar.xz.sha512sum\"     && sha512 -c shellcheck-${SHELLCHECK_VERSION}.linux.x86_64.tar.xz.sha512sum     && tar --xz -xvf shellcheck-\"${SHELLCHECK_VERSION}\".linux.x86_64.tar.xz     && cp shellcheck-\"${SHELLCHECK_VERSION}\"/shellcheck /usr/bin/     && shellcheck --version     && rm -rf ~/stage" shape="box"];
  "sha256:5dca15ae70767624faf04e08ee7f2ea7af80fcc92beab9eb78370f4183fc88f9" [label="mkdir{path=/usr/local/src/bash-commons}" shape="note"];
  "sha256:17ca0aa16253396cd009a3cfc0ba45270b1478c358d272328fde7dbe7ec8ef63" [label="local://context" shape="ellipse"];
  "sha256:d9f3ba1cda591abaf3d3588fe9a0cb2f125f8e9f76055455b3a8f2faa177c0b5" [label="copy{src=/.circleci, dest=/usr/local/src/bash-commons/.circleci/}" shape="note"];
  "sha256:4669acbc2f5484cf2d7f5d11b8a70ad86385951717a0f45f74c04396816ae2c7" [label="sha256:4669acbc2f5484cf2d7f5d11b8a70ad86385951717a0f45f74c04396816ae2c7" shape="plaintext"];
  "sha256:dd205758b7fd92c0ea3ac4f003a616519068f374dfbbfcc617c24517ca6ca9ef" -> "sha256:4043dfaf6c940e2fd49faa81b54c7c60d0112e39f0ce09e8f3045b8726bb7c06" [label=""];
  "sha256:4043dfaf6c940e2fd49faa81b54c7c60d0112e39f0ce09e8f3045b8726bb7c06" -> "sha256:3362ad06e4d571baebcdadd27f31de7c77204df72ca2a9514f77144ddfe41836" [label=""];
  "sha256:3362ad06e4d571baebcdadd27f31de7c77204df72ca2a9514f77144ddfe41836" -> "sha256:5dca15ae70767624faf04e08ee7f2ea7af80fcc92beab9eb78370f4183fc88f9" [label=""];
  "sha256:5dca15ae70767624faf04e08ee7f2ea7af80fcc92beab9eb78370f4183fc88f9" -> "sha256:d9f3ba1cda591abaf3d3588fe9a0cb2f125f8e9f76055455b3a8f2faa177c0b5" [label=""];
  "sha256:17ca0aa16253396cd009a3cfc0ba45270b1478c358d272328fde7dbe7ec8ef63" -> "sha256:d9f3ba1cda591abaf3d3588fe9a0cb2f125f8e9f76055455b3a8f2faa177c0b5" [label=""];
  "sha256:d9f3ba1cda591abaf3d3588fe9a0cb2f125f8e9f76055455b3a8f2faa177c0b5" -> "sha256:4669acbc2f5484cf2d7f5d11b8a70ad86385951717a0f45f74c04396816ae2c7" [label=""];
}

