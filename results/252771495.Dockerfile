[app/sources/252771495.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:d8a2ec7cc51f11e7c3ba85921166084a92403365a5e42000f214f8d83651bf4c" [label="local://context" shape="ellipse"];
  "sha256:94ec59aaeffbea2d9d0e79c3eb88927d4dc1d1f1e3441f610aaae7a9e1d0c3a2" [label="copy{src=/repo/hdp.repo, dest=/etc/yum.repos.d/HDP.repo}" shape="note"];
  "sha256:69b1f51f77609b837799d42192acdc6bf2ed5169743c88b1de84ed06bdb4da4e" [label="copy{src=/repo/hdp-utils.repo, dest=/etc/yum.repos.d/HDP-utils.repo}" shape="note"];
  "sha256:222974a79e718767583184d3998611cf14bc73afb5b9e2d1071d62ed5638550d" [label="/bin/sh -c yum install -y java-1.8.0 hive which" shape="box"];
  "sha256:f926d4ef9f2f1c45fb3766b88458e27ecb05cb7c1126d35833080908f691555b" [label="sha256:f926d4ef9f2f1c45fb3766b88458e27ecb05cb7c1126d35833080908f691555b" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:94ec59aaeffbea2d9d0e79c3eb88927d4dc1d1f1e3441f610aaae7a9e1d0c3a2" [label=""];
  "sha256:d8a2ec7cc51f11e7c3ba85921166084a92403365a5e42000f214f8d83651bf4c" -> "sha256:94ec59aaeffbea2d9d0e79c3eb88927d4dc1d1f1e3441f610aaae7a9e1d0c3a2" [label=""];
  "sha256:94ec59aaeffbea2d9d0e79c3eb88927d4dc1d1f1e3441f610aaae7a9e1d0c3a2" -> "sha256:69b1f51f77609b837799d42192acdc6bf2ed5169743c88b1de84ed06bdb4da4e" [label=""];
  "sha256:d8a2ec7cc51f11e7c3ba85921166084a92403365a5e42000f214f8d83651bf4c" -> "sha256:69b1f51f77609b837799d42192acdc6bf2ed5169743c88b1de84ed06bdb4da4e" [label=""];
  "sha256:69b1f51f77609b837799d42192acdc6bf2ed5169743c88b1de84ed06bdb4da4e" -> "sha256:222974a79e718767583184d3998611cf14bc73afb5b9e2d1071d62ed5638550d" [label=""];
  "sha256:222974a79e718767583184d3998611cf14bc73afb5b9e2d1071d62ed5638550d" -> "sha256:f926d4ef9f2f1c45fb3766b88458e27ecb05cb7c1126d35833080908f691555b" [label=""];
}

