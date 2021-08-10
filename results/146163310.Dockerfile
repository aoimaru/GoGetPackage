[app/sources/146163310.Dockerfile]
digraph {
  "sha256:929816cbeb0c0bed70f8d5e06710d7709a4b2923a163b3a1d3f319e84e0b91a3" [label="docker-image://docker.io/nubs/arch-build:latest" shape="ellipse"];
  "sha256:10a2d5a5a0c67bb581efc8790cd350e2b5d565352e9c6454a01383551977f186" [label="local://context" shape="ellipse"];
  "sha256:8779c81b8ed6d43698012d8f0dd4b65a775ecc5cb269ef1942274deaddf56102" [label="copy{src=/php/PKGBUILD, dest=/package/},copy{src=/php/*.patch, dest=/package/}" shape="note"];
  "sha256:aad1b2185d005c52016ee870838a70a3fc013ab71a10a909e6990330a41aca7c" [label="/bin/sh -c makepkg --force" shape="box"];
  "sha256:54905a5692638887d7d09e3f016aa9f3ccf6af2ce46844b6587f411472392a82" [label="/bin/sh -c pacman --upgrade --noconfirm --noprogressbar php-*-x86_64.pkg.tar.xz" shape="box"];
  "sha256:04679b32fbe671b667a38a65990e9e8bc91ad68db7c4cbf5b825a0f1ac95a7a0" [label="copy{src=/php.ini, dest=/etc/php/php.ini}" shape="note"];
  "sha256:643b187904a980e9f29668f842310ae5e0a9c98ae07970f799f8972833ade0df" [label="sha256:643b187904a980e9f29668f842310ae5e0a9c98ae07970f799f8972833ade0df" shape="plaintext"];
  "sha256:929816cbeb0c0bed70f8d5e06710d7709a4b2923a163b3a1d3f319e84e0b91a3" -> "sha256:8779c81b8ed6d43698012d8f0dd4b65a775ecc5cb269ef1942274deaddf56102" [label=""];
  "sha256:10a2d5a5a0c67bb581efc8790cd350e2b5d565352e9c6454a01383551977f186" -> "sha256:8779c81b8ed6d43698012d8f0dd4b65a775ecc5cb269ef1942274deaddf56102" [label=""];
  "sha256:8779c81b8ed6d43698012d8f0dd4b65a775ecc5cb269ef1942274deaddf56102" -> "sha256:aad1b2185d005c52016ee870838a70a3fc013ab71a10a909e6990330a41aca7c" [label=""];
  "sha256:aad1b2185d005c52016ee870838a70a3fc013ab71a10a909e6990330a41aca7c" -> "sha256:54905a5692638887d7d09e3f016aa9f3ccf6af2ce46844b6587f411472392a82" [label=""];
  "sha256:54905a5692638887d7d09e3f016aa9f3ccf6af2ce46844b6587f411472392a82" -> "sha256:04679b32fbe671b667a38a65990e9e8bc91ad68db7c4cbf5b825a0f1ac95a7a0" [label=""];
  "sha256:10a2d5a5a0c67bb581efc8790cd350e2b5d565352e9c6454a01383551977f186" -> "sha256:04679b32fbe671b667a38a65990e9e8bc91ad68db7c4cbf5b825a0f1ac95a7a0" [label=""];
  "sha256:04679b32fbe671b667a38a65990e9e8bc91ad68db7c4cbf5b825a0f1ac95a7a0" -> "sha256:643b187904a980e9f29668f842310ae5e0a9c98ae07970f799f8972833ade0df" [label=""];
}

