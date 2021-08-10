[app/sources/394822114.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:2ba4c6ee7491bc3ad1f5a2a60cfa09b85b10e1e78f421b042d6dea78f540067e" [label="/bin/sh -c sed -i 's/archive.ubuntu/mirrors.aliyun/g' /etc/apt/sources.list && apt-get update" shape="box"];
  "sha256:ae85eb57218dc8333af83719112d0668ba840c08392a9ea36e49039f1663c875" [label="/bin/sh -c apt-get install -y curl telnet git m4 texinfo libbz2-dev libcurl4-openssl-dev libexpat-dev libncurses-dev zlib1g-dev" shape="box"];
  "sha256:556d5ad10762e367f1e4143a934beb709667f155f69d39ee3ac6115025c74f8c" [label="/bin/sh -c apt-get install -y vim-nox locales xfonts-utils fontconfig tmux openssh-server screen" shape="box"];
  "sha256:2bdc276c6ca91dc7d1cb5b036be5de5d54a0788aba449aad6cb64163b8e6bc74" [label="local://context" shape="ellipse"];
  "sha256:083533392c7e463fea420b49526638f10bbc1bd1b1295e75e0092522ab91dd24" [label="copy{src=/.tmux.conf, dest=/root/}" shape="note"];
  "sha256:cb03d9d1233d7a3eaef9bf9eaaf866677789038720ca5f0d33e2ef9e3bfccb3a" [label="copy{src=/.bashrc, dest=/root/}" shape="note"];
  "sha256:3b34810dc0669d860cf3d7fc5606959880a0a15e01bfabaca73cdb5e36998f83" [label="copy{src=/.vimrc, dest=/root/}" shape="note"];
  "sha256:b986e5b54be3c921d09ecd71ae36c33b118703a79fe3103f74980acd5368e30f" [label="copy{src=/freem, dest=/bin/}" shape="note"];
  "sha256:fbd55cefddf01ba392cf22e89df60025385dcd80ae622f0477272435dc786c97" [label="copy{src=/xdev, dest=/bin/}" shape="note"];
  "sha256:ce6f7acb64722b6409b57f90546ad73b3416c22e2225ac5fe0a6c6eeb65e43ce" [label="copy{src=/e, dest=/bin/}" shape="note"];
  "sha256:c0c589c69feb2b463cad4f703a67fe2a788126eadc449249eef702f2180f1016" [label="/bin/sh -c chmod +x /bin/e /bin/xdev /bin/freem" shape="box"];
  "sha256:4ff951da0a51e5fa5143e7925159f17071d4f7dd661a5846b76820d595dc82d2" [label="/bin/sh -c echo \"en_US.UTF-8 UTF-8\" > /etc/locale.gen && locale-gen \"en_US.UTF-8\"" shape="box"];
  "sha256:e1ace5a72dbbfa661ed2b15f08e8693abf20ded2cae5f808cef729c21f4df262" [label="/bin/sh -c mkdir /root/.ssh" shape="box"];
  "sha256:c590abcabc20f03ba5d76fed63de4530aa2c3309db6b7bdb63caa3c323ea1431" [label="sha256:c590abcabc20f03ba5d76fed63de4530aa2c3309db6b7bdb63caa3c323ea1431" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:2ba4c6ee7491bc3ad1f5a2a60cfa09b85b10e1e78f421b042d6dea78f540067e" [label=""];
  "sha256:2ba4c6ee7491bc3ad1f5a2a60cfa09b85b10e1e78f421b042d6dea78f540067e" -> "sha256:ae85eb57218dc8333af83719112d0668ba840c08392a9ea36e49039f1663c875" [label=""];
  "sha256:ae85eb57218dc8333af83719112d0668ba840c08392a9ea36e49039f1663c875" -> "sha256:556d5ad10762e367f1e4143a934beb709667f155f69d39ee3ac6115025c74f8c" [label=""];
  "sha256:556d5ad10762e367f1e4143a934beb709667f155f69d39ee3ac6115025c74f8c" -> "sha256:083533392c7e463fea420b49526638f10bbc1bd1b1295e75e0092522ab91dd24" [label=""];
  "sha256:2bdc276c6ca91dc7d1cb5b036be5de5d54a0788aba449aad6cb64163b8e6bc74" -> "sha256:083533392c7e463fea420b49526638f10bbc1bd1b1295e75e0092522ab91dd24" [label=""];
  "sha256:083533392c7e463fea420b49526638f10bbc1bd1b1295e75e0092522ab91dd24" -> "sha256:cb03d9d1233d7a3eaef9bf9eaaf866677789038720ca5f0d33e2ef9e3bfccb3a" [label=""];
  "sha256:2bdc276c6ca91dc7d1cb5b036be5de5d54a0788aba449aad6cb64163b8e6bc74" -> "sha256:cb03d9d1233d7a3eaef9bf9eaaf866677789038720ca5f0d33e2ef9e3bfccb3a" [label=""];
  "sha256:cb03d9d1233d7a3eaef9bf9eaaf866677789038720ca5f0d33e2ef9e3bfccb3a" -> "sha256:3b34810dc0669d860cf3d7fc5606959880a0a15e01bfabaca73cdb5e36998f83" [label=""];
  "sha256:2bdc276c6ca91dc7d1cb5b036be5de5d54a0788aba449aad6cb64163b8e6bc74" -> "sha256:3b34810dc0669d860cf3d7fc5606959880a0a15e01bfabaca73cdb5e36998f83" [label=""];
  "sha256:3b34810dc0669d860cf3d7fc5606959880a0a15e01bfabaca73cdb5e36998f83" -> "sha256:b986e5b54be3c921d09ecd71ae36c33b118703a79fe3103f74980acd5368e30f" [label=""];
  "sha256:2bdc276c6ca91dc7d1cb5b036be5de5d54a0788aba449aad6cb64163b8e6bc74" -> "sha256:b986e5b54be3c921d09ecd71ae36c33b118703a79fe3103f74980acd5368e30f" [label=""];
  "sha256:b986e5b54be3c921d09ecd71ae36c33b118703a79fe3103f74980acd5368e30f" -> "sha256:fbd55cefddf01ba392cf22e89df60025385dcd80ae622f0477272435dc786c97" [label=""];
  "sha256:2bdc276c6ca91dc7d1cb5b036be5de5d54a0788aba449aad6cb64163b8e6bc74" -> "sha256:fbd55cefddf01ba392cf22e89df60025385dcd80ae622f0477272435dc786c97" [label=""];
  "sha256:fbd55cefddf01ba392cf22e89df60025385dcd80ae622f0477272435dc786c97" -> "sha256:ce6f7acb64722b6409b57f90546ad73b3416c22e2225ac5fe0a6c6eeb65e43ce" [label=""];
  "sha256:2bdc276c6ca91dc7d1cb5b036be5de5d54a0788aba449aad6cb64163b8e6bc74" -> "sha256:ce6f7acb64722b6409b57f90546ad73b3416c22e2225ac5fe0a6c6eeb65e43ce" [label=""];
  "sha256:ce6f7acb64722b6409b57f90546ad73b3416c22e2225ac5fe0a6c6eeb65e43ce" -> "sha256:c0c589c69feb2b463cad4f703a67fe2a788126eadc449249eef702f2180f1016" [label=""];
  "sha256:c0c589c69feb2b463cad4f703a67fe2a788126eadc449249eef702f2180f1016" -> "sha256:4ff951da0a51e5fa5143e7925159f17071d4f7dd661a5846b76820d595dc82d2" [label=""];
  "sha256:4ff951da0a51e5fa5143e7925159f17071d4f7dd661a5846b76820d595dc82d2" -> "sha256:e1ace5a72dbbfa661ed2b15f08e8693abf20ded2cae5f808cef729c21f4df262" [label=""];
  "sha256:e1ace5a72dbbfa661ed2b15f08e8693abf20ded2cae5f808cef729c21f4df262" -> "sha256:c590abcabc20f03ba5d76fed63de4530aa2c3309db6b7bdb63caa3c323ea1431" [label=""];
}

