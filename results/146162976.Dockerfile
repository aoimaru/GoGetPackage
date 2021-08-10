[app/sources/146162976.Dockerfile]
digraph {
  "sha256:929816cbeb0c0bed70f8d5e06710d7709a4b2923a163b3a1d3f319e84e0b91a3" [label="docker-image://docker.io/nubs/arch-build:latest" shape="ellipse"];
  "sha256:1dc4742549e0630eeca1258cb866f9c075f019d99c52ad82a4c2b7f4d236f65a" [label="local://context" shape="ellipse"];
  "sha256:8f7e670dc662330fefca2c5ce080a122157a4332d72fea96264bb1ff43c3e19f" [label="copy{src=/php/PKGBUILD, dest=/package/},copy{src=/php/*.patch, dest=/package/}" shape="note"];
  "sha256:2005840d46415be5d2d4893a936b51dbf3b2b88cb66e18087492a9beef9cc394" [label="/bin/sh -c makepkg --force" shape="box"];
  "sha256:2302dbd0d8dbfdc08e21d9b7b6fdcead31361475d0e8cbf69facc392216e8c14" [label="/bin/sh -c pacman --upgrade --noconfirm --noprogressbar php-*-x86_64.pkg.tar.xz" shape="box"];
  "sha256:8d0b8975dc998e23b011e2e84e49b149a662a32775659264dfe26a2f6fca7ca2" [label="copy{src=/php.ini, dest=/etc/php/php.ini}" shape="note"];
  "sha256:0774d636d8e4f02691931f1213d5740add8d85fa1b9b89d9baa232c674108a16" [label="sha256:0774d636d8e4f02691931f1213d5740add8d85fa1b9b89d9baa232c674108a16" shape="plaintext"];
  "sha256:929816cbeb0c0bed70f8d5e06710d7709a4b2923a163b3a1d3f319e84e0b91a3" -> "sha256:8f7e670dc662330fefca2c5ce080a122157a4332d72fea96264bb1ff43c3e19f" [label=""];
  "sha256:1dc4742549e0630eeca1258cb866f9c075f019d99c52ad82a4c2b7f4d236f65a" -> "sha256:8f7e670dc662330fefca2c5ce080a122157a4332d72fea96264bb1ff43c3e19f" [label=""];
  "sha256:8f7e670dc662330fefca2c5ce080a122157a4332d72fea96264bb1ff43c3e19f" -> "sha256:2005840d46415be5d2d4893a936b51dbf3b2b88cb66e18087492a9beef9cc394" [label=""];
  "sha256:2005840d46415be5d2d4893a936b51dbf3b2b88cb66e18087492a9beef9cc394" -> "sha256:2302dbd0d8dbfdc08e21d9b7b6fdcead31361475d0e8cbf69facc392216e8c14" [label=""];
  "sha256:2302dbd0d8dbfdc08e21d9b7b6fdcead31361475d0e8cbf69facc392216e8c14" -> "sha256:8d0b8975dc998e23b011e2e84e49b149a662a32775659264dfe26a2f6fca7ca2" [label=""];
  "sha256:1dc4742549e0630eeca1258cb866f9c075f019d99c52ad82a4c2b7f4d236f65a" -> "sha256:8d0b8975dc998e23b011e2e84e49b149a662a32775659264dfe26a2f6fca7ca2" [label=""];
  "sha256:8d0b8975dc998e23b011e2e84e49b149a662a32775659264dfe26a2f6fca7ca2" -> "sha256:0774d636d8e4f02691931f1213d5740add8d85fa1b9b89d9baa232c674108a16" [label=""];
}

