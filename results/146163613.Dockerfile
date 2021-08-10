[app/sources/146163613.Dockerfile]
digraph {
  "sha256:929816cbeb0c0bed70f8d5e06710d7709a4b2923a163b3a1d3f319e84e0b91a3" [label="docker-image://docker.io/nubs/arch-build:latest" shape="ellipse"];
  "sha256:6f13384ad6d24c48b3895471e2cd5fa5c162a5a1c9e9a08ecbcc24a846dfbaa8" [label="local://context" shape="ellipse"];
  "sha256:071ffdc11d0e9dd193de32bb6e7e9b667b922b26312bfe4e726b7be31e71c045" [label="copy{src=/php/PKGBUILD, dest=/package/},copy{src=/php/*.patch, dest=/package/}" shape="note"];
  "sha256:a5a429aee336f5a8cbd34abbfb7c182cfdc9d50e86b6700cd32bed2e573d12ce" [label="/bin/sh -c makepkg --force" shape="box"];
  "sha256:43b74ba90fc3abbcaf49398cc69fe18100c5ae509c0a4f25a0f3daad890f1293" [label="/bin/sh -c pacman --upgrade --noconfirm --noprogressbar php-*-x86_64.pkg.tar.xz" shape="box"];
  "sha256:5c6264904dea6e61b6a7ed5912a1630722d1999c5788362f2caa49f893ec2313" [label="copy{src=/php.ini, dest=/etc/php/php.ini}" shape="note"];
  "sha256:d25922a1217cbe12358ae7d207c34b445930a15ac6b3b01a8118c2852183e7da" [label="sha256:d25922a1217cbe12358ae7d207c34b445930a15ac6b3b01a8118c2852183e7da" shape="plaintext"];
  "sha256:929816cbeb0c0bed70f8d5e06710d7709a4b2923a163b3a1d3f319e84e0b91a3" -> "sha256:071ffdc11d0e9dd193de32bb6e7e9b667b922b26312bfe4e726b7be31e71c045" [label=""];
  "sha256:6f13384ad6d24c48b3895471e2cd5fa5c162a5a1c9e9a08ecbcc24a846dfbaa8" -> "sha256:071ffdc11d0e9dd193de32bb6e7e9b667b922b26312bfe4e726b7be31e71c045" [label=""];
  "sha256:071ffdc11d0e9dd193de32bb6e7e9b667b922b26312bfe4e726b7be31e71c045" -> "sha256:a5a429aee336f5a8cbd34abbfb7c182cfdc9d50e86b6700cd32bed2e573d12ce" [label=""];
  "sha256:a5a429aee336f5a8cbd34abbfb7c182cfdc9d50e86b6700cd32bed2e573d12ce" -> "sha256:43b74ba90fc3abbcaf49398cc69fe18100c5ae509c0a4f25a0f3daad890f1293" [label=""];
  "sha256:43b74ba90fc3abbcaf49398cc69fe18100c5ae509c0a4f25a0f3daad890f1293" -> "sha256:5c6264904dea6e61b6a7ed5912a1630722d1999c5788362f2caa49f893ec2313" [label=""];
  "sha256:6f13384ad6d24c48b3895471e2cd5fa5c162a5a1c9e9a08ecbcc24a846dfbaa8" -> "sha256:5c6264904dea6e61b6a7ed5912a1630722d1999c5788362f2caa49f893ec2313" [label=""];
  "sha256:5c6264904dea6e61b6a7ed5912a1630722d1999c5788362f2caa49f893ec2313" -> "sha256:d25922a1217cbe12358ae7d207c34b445930a15ac6b3b01a8118c2852183e7da" [label=""];
}

