[app/sources/146163124.Dockerfile]
digraph {
  "sha256:929816cbeb0c0bed70f8d5e06710d7709a4b2923a163b3a1d3f319e84e0b91a3" [label="docker-image://docker.io/nubs/arch-build:latest" shape="ellipse"];
  "sha256:95ec08f64d61a48efa3bb9cfdd357e746de735f0a4cce0af8cc51a0454ebeb1c" [label="local://context" shape="ellipse"];
  "sha256:443ae4eeec593182d86aa847a7431b31f9aca17560cb1f16a90b2de400e9b751" [label="copy{src=/php/PKGBUILD, dest=/package/},copy{src=/php/*.patch, dest=/package/}" shape="note"];
  "sha256:93ed343e8692984e429afcba06e2c540ba2cc45fa8af5ca285000813e6725a70" [label="/bin/sh -c makepkg --force" shape="box"];
  "sha256:d414eca0594de59c3b752dc61c740fc81c1c51271952e3a98750c5355b7e5858" [label="/bin/sh -c pacman --upgrade --noconfirm --noprogressbar php-*-x86_64.pkg.tar.xz" shape="box"];
  "sha256:f5fe1b52677dd8f1765be234c9daee25a06d03ce727a038e6d0bc470df0c436a" [label="copy{src=/php.ini, dest=/etc/php/php.ini}" shape="note"];
  "sha256:7e73ef7af0fe14052bf790c134eeef08713180f2acdb29b02111123514d7d54a" [label="sha256:7e73ef7af0fe14052bf790c134eeef08713180f2acdb29b02111123514d7d54a" shape="plaintext"];
  "sha256:929816cbeb0c0bed70f8d5e06710d7709a4b2923a163b3a1d3f319e84e0b91a3" -> "sha256:443ae4eeec593182d86aa847a7431b31f9aca17560cb1f16a90b2de400e9b751" [label=""];
  "sha256:95ec08f64d61a48efa3bb9cfdd357e746de735f0a4cce0af8cc51a0454ebeb1c" -> "sha256:443ae4eeec593182d86aa847a7431b31f9aca17560cb1f16a90b2de400e9b751" [label=""];
  "sha256:443ae4eeec593182d86aa847a7431b31f9aca17560cb1f16a90b2de400e9b751" -> "sha256:93ed343e8692984e429afcba06e2c540ba2cc45fa8af5ca285000813e6725a70" [label=""];
  "sha256:93ed343e8692984e429afcba06e2c540ba2cc45fa8af5ca285000813e6725a70" -> "sha256:d414eca0594de59c3b752dc61c740fc81c1c51271952e3a98750c5355b7e5858" [label=""];
  "sha256:d414eca0594de59c3b752dc61c740fc81c1c51271952e3a98750c5355b7e5858" -> "sha256:f5fe1b52677dd8f1765be234c9daee25a06d03ce727a038e6d0bc470df0c436a" [label=""];
  "sha256:95ec08f64d61a48efa3bb9cfdd357e746de735f0a4cce0af8cc51a0454ebeb1c" -> "sha256:f5fe1b52677dd8f1765be234c9daee25a06d03ce727a038e6d0bc470df0c436a" [label=""];
  "sha256:f5fe1b52677dd8f1765be234c9daee25a06d03ce727a038e6d0bc470df0c436a" -> "sha256:7e73ef7af0fe14052bf790c134eeef08713180f2acdb29b02111123514d7d54a" [label=""];
}

