[app/sources/146163030.Dockerfile]
digraph {
  "sha256:929816cbeb0c0bed70f8d5e06710d7709a4b2923a163b3a1d3f319e84e0b91a3" [label="docker-image://docker.io/nubs/arch-build:latest" shape="ellipse"];
  "sha256:e654a65b9be6338310805d859e27b3352942e74d6c15bd8641ce6a3737a89b86" [label="local://context" shape="ellipse"];
  "sha256:0d202eaab04d6a8290bc94e24286f402202a826a3d1768e9ce1d3ec380012c10" [label="copy{src=/php/PKGBUILD, dest=/package/},copy{src=/php/*.patch, dest=/package/}" shape="note"];
  "sha256:d5cdc09f09f2e6137202a0973a499de0100fc97716a134a43d2ddf28a3134f2f" [label="/bin/sh -c makepkg --force" shape="box"];
  "sha256:2a54016adc0c437693740777217078ce5d5545f7a3d9d1e9703a4dbd71dddd78" [label="/bin/sh -c pacman --upgrade --noconfirm --noprogressbar php-*-x86_64.pkg.tar.xz" shape="box"];
  "sha256:cb5323727d9cec8d84dee8cf47e515561e1220f0578f9dc349e4bbf3a9393783" [label="copy{src=/php.ini, dest=/etc/php/php.ini}" shape="note"];
  "sha256:9c96ae75a3044ae088aae6009df032d657b57995021a6f5268fcbe4991c848c0" [label="sha256:9c96ae75a3044ae088aae6009df032d657b57995021a6f5268fcbe4991c848c0" shape="plaintext"];
  "sha256:929816cbeb0c0bed70f8d5e06710d7709a4b2923a163b3a1d3f319e84e0b91a3" -> "sha256:0d202eaab04d6a8290bc94e24286f402202a826a3d1768e9ce1d3ec380012c10" [label=""];
  "sha256:e654a65b9be6338310805d859e27b3352942e74d6c15bd8641ce6a3737a89b86" -> "sha256:0d202eaab04d6a8290bc94e24286f402202a826a3d1768e9ce1d3ec380012c10" [label=""];
  "sha256:0d202eaab04d6a8290bc94e24286f402202a826a3d1768e9ce1d3ec380012c10" -> "sha256:d5cdc09f09f2e6137202a0973a499de0100fc97716a134a43d2ddf28a3134f2f" [label=""];
  "sha256:d5cdc09f09f2e6137202a0973a499de0100fc97716a134a43d2ddf28a3134f2f" -> "sha256:2a54016adc0c437693740777217078ce5d5545f7a3d9d1e9703a4dbd71dddd78" [label=""];
  "sha256:2a54016adc0c437693740777217078ce5d5545f7a3d9d1e9703a4dbd71dddd78" -> "sha256:cb5323727d9cec8d84dee8cf47e515561e1220f0578f9dc349e4bbf3a9393783" [label=""];
  "sha256:e654a65b9be6338310805d859e27b3352942e74d6c15bd8641ce6a3737a89b86" -> "sha256:cb5323727d9cec8d84dee8cf47e515561e1220f0578f9dc349e4bbf3a9393783" [label=""];
  "sha256:cb5323727d9cec8d84dee8cf47e515561e1220f0578f9dc349e4bbf3a9393783" -> "sha256:9c96ae75a3044ae088aae6009df032d657b57995021a6f5268fcbe4991c848c0" [label=""];
}

