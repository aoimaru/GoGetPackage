[app/sources/146163646.Dockerfile]
digraph {
  "sha256:937d59c42ceedd24c30df8072ab88bca7767d37a9b4e86a6a56b99f5e3b59afb" [label="local://context" shape="ellipse"];
  "sha256:929816cbeb0c0bed70f8d5e06710d7709a4b2923a163b3a1d3f319e84e0b91a3" [label="docker-image://docker.io/nubs/arch-build:latest" shape="ellipse"];
  "sha256:9b76ef3288f910f21ee4176f2a816e464aebf780e026e8a865e0b6b851c0df20" [label="copy{src=/php/PKGBUILD, dest=/package/},copy{src=/php/*.patch, dest=/package/}" shape="note"];
  "sha256:831b57b041e7c4330ac606702eb33bc02c94bcc27cb120151fbaef1c2d190ea0" [label="/bin/sh -c makepkg --force" shape="box"];
  "sha256:fdc741d25b3877f0dde2c09a1a7de3417b498214d47d7bccd9c6600b2df2681a" [label="/bin/sh -c pacman --upgrade --noconfirm --noprogressbar php-*-x86_64.pkg.tar.xz" shape="box"];
  "sha256:cd679e6d8ab4ceaa4c7e40b310a5a3e26cff7178dbc76af110837dc8f3825774" [label="copy{src=/php.ini, dest=/etc/php/php.ini}" shape="note"];
  "sha256:fb490b871e75928a08da461d23252c0da627443450ebf550a5570b4c87ee2278" [label="sha256:fb490b871e75928a08da461d23252c0da627443450ebf550a5570b4c87ee2278" shape="plaintext"];
  "sha256:929816cbeb0c0bed70f8d5e06710d7709a4b2923a163b3a1d3f319e84e0b91a3" -> "sha256:9b76ef3288f910f21ee4176f2a816e464aebf780e026e8a865e0b6b851c0df20" [label=""];
  "sha256:937d59c42ceedd24c30df8072ab88bca7767d37a9b4e86a6a56b99f5e3b59afb" -> "sha256:9b76ef3288f910f21ee4176f2a816e464aebf780e026e8a865e0b6b851c0df20" [label=""];
  "sha256:9b76ef3288f910f21ee4176f2a816e464aebf780e026e8a865e0b6b851c0df20" -> "sha256:831b57b041e7c4330ac606702eb33bc02c94bcc27cb120151fbaef1c2d190ea0" [label=""];
  "sha256:831b57b041e7c4330ac606702eb33bc02c94bcc27cb120151fbaef1c2d190ea0" -> "sha256:fdc741d25b3877f0dde2c09a1a7de3417b498214d47d7bccd9c6600b2df2681a" [label=""];
  "sha256:fdc741d25b3877f0dde2c09a1a7de3417b498214d47d7bccd9c6600b2df2681a" -> "sha256:cd679e6d8ab4ceaa4c7e40b310a5a3e26cff7178dbc76af110837dc8f3825774" [label=""];
  "sha256:937d59c42ceedd24c30df8072ab88bca7767d37a9b4e86a6a56b99f5e3b59afb" -> "sha256:cd679e6d8ab4ceaa4c7e40b310a5a3e26cff7178dbc76af110837dc8f3825774" [label=""];
  "sha256:cd679e6d8ab4ceaa4c7e40b310a5a3e26cff7178dbc76af110837dc8f3825774" -> "sha256:fb490b871e75928a08da461d23252c0da627443450ebf550a5570b4c87ee2278" [label=""];
}

