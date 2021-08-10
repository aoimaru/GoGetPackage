[app/sources/146163079.Dockerfile]
digraph {
  "sha256:929816cbeb0c0bed70f8d5e06710d7709a4b2923a163b3a1d3f319e84e0b91a3" [label="docker-image://docker.io/nubs/arch-build:latest" shape="ellipse"];
  "sha256:fe30485c47e6dba5e9f64064f7ac122758d241a27f365decaf42a17963dfa33e" [label="local://context" shape="ellipse"];
  "sha256:31e4576935c41d21c64aff86d1c7d3e888cb56e78ecb3451f1e79c975c8f8ce3" [label="copy{src=/php/PKGBUILD, dest=/package/},copy{src=/php/*.patch, dest=/package/}" shape="note"];
  "sha256:d44044ef61df6840215400595396270c948e534aa3a50bba4ef57765b91f582e" [label="/bin/sh -c makepkg --force" shape="box"];
  "sha256:1eba5aca5e0fe3fa8e9bd0cdc2d5bc77fc589c29629e0a0f8102080d3bfdb3f0" [label="/bin/sh -c pacman --upgrade --noconfirm --noprogressbar php-*-x86_64.pkg.tar.xz" shape="box"];
  "sha256:c2346b0c9cb5951406cd8f69e531d4f7c2a62f1e6225f1b51662b786ede6d2c8" [label="copy{src=/php.ini, dest=/etc/php/php.ini}" shape="note"];
  "sha256:7390858d2ead104f467e863216456698ecf81ab1284bc12863775b0b50099867" [label="sha256:7390858d2ead104f467e863216456698ecf81ab1284bc12863775b0b50099867" shape="plaintext"];
  "sha256:929816cbeb0c0bed70f8d5e06710d7709a4b2923a163b3a1d3f319e84e0b91a3" -> "sha256:31e4576935c41d21c64aff86d1c7d3e888cb56e78ecb3451f1e79c975c8f8ce3" [label=""];
  "sha256:fe30485c47e6dba5e9f64064f7ac122758d241a27f365decaf42a17963dfa33e" -> "sha256:31e4576935c41d21c64aff86d1c7d3e888cb56e78ecb3451f1e79c975c8f8ce3" [label=""];
  "sha256:31e4576935c41d21c64aff86d1c7d3e888cb56e78ecb3451f1e79c975c8f8ce3" -> "sha256:d44044ef61df6840215400595396270c948e534aa3a50bba4ef57765b91f582e" [label=""];
  "sha256:d44044ef61df6840215400595396270c948e534aa3a50bba4ef57765b91f582e" -> "sha256:1eba5aca5e0fe3fa8e9bd0cdc2d5bc77fc589c29629e0a0f8102080d3bfdb3f0" [label=""];
  "sha256:1eba5aca5e0fe3fa8e9bd0cdc2d5bc77fc589c29629e0a0f8102080d3bfdb3f0" -> "sha256:c2346b0c9cb5951406cd8f69e531d4f7c2a62f1e6225f1b51662b786ede6d2c8" [label=""];
  "sha256:fe30485c47e6dba5e9f64064f7ac122758d241a27f365decaf42a17963dfa33e" -> "sha256:c2346b0c9cb5951406cd8f69e531d4f7c2a62f1e6225f1b51662b786ede6d2c8" [label=""];
  "sha256:c2346b0c9cb5951406cd8f69e531d4f7c2a62f1e6225f1b51662b786ede6d2c8" -> "sha256:7390858d2ead104f467e863216456698ecf81ab1284bc12863775b0b50099867" [label=""];
}

