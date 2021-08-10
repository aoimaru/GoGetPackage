[app/sources/272426928.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:5963e596c66fac988d9dcfe2d964a97f48fc6dd8168d5172b41eb6ff80a95748" [label="/bin/sh -c apt update && apt install -y   g++   cmake   curl   libhdf5-dev" shape="box"];
  "sha256:c27a0dcf4db3202c8b8f445da1b5da45c46eca92f03f0e5e0b888b49e9cd5514" [label="/bin/sh -c apt install -y   libncurses5-dev   openssl   liblzma-dev   libbz2-dev   bzip2   libcurl4-openssl-dev   libssl-dev" shape="box"];
  "sha256:90492cb8994d67ad79afdf39952215545699f3900925ce3e632e682320933e3e" [label="/bin/sh -c mv /usr/include/hdf5/serial/* /usr/include/" shape="box"];
  "sha256:4c2aaedf1b96f4cc80e1f10411ccecc1f2ace45517d0aaf918f0cf732b163af5" [label="/bin/sh -c curl -L -o kallisto-0.43.1.tar.gz   https://github.com/pachterlab/kallisto/archive/v0.43.1.tar.gz &&   tar -xzf kallisto-0.43.1.tar.gz &&   cd kallisto-0.43.1/ &&   mkdir build &&   cd build &&   cmake .. &&   make &&   make install &&   cd / &&   rm -r kallisto-0.43.1 &&   rm kallisto-0.43.1.tar.gz" shape="box"];
  "sha256:417aed5dd9f918d98d9e5745cc4491e926cb1b2bd6305fa09e485c6064809116" [label="mkdir{path=/usr/local/samtools}" shape="note"];
  "sha256:5466d1989018e1772bd430a70dfb76d546b4e49424733f28534d23638dc9daaa" [label="https://github.com/samtools/samtools/releases/download/1.6/samtools-1.6.tar.bz2" shape="ellipse"];
  "sha256:89931120f8be9a5bcf9c1a08afd30167922244981edcc6cacd0ac1aed42a78e0" [label="copy{src=/samtools-1.6.tar.bz2, dest=/usr/local/samtools/}" shape="note"];
  "sha256:599d91d9904e05d21feaea2d05b22eef5d8a71d0a2f6b551c3b8acc8c65fc587" [label="/bin/sh -c tar -xvf samtools-1.6.tar.bz2 &&     rm samtools-1.6.tar.bz2 &&     cd samtools-1.6 &&     ./configure --prefix=/usr &&     make &&     make install" shape="box"];
  "sha256:db9bdb8a558083f8ff08e6050aeeba11b8fb20c4713eed8f403ad907777536fd" [label="sha256:db9bdb8a558083f8ff08e6050aeeba11b8fb20c4713eed8f403ad907777536fd" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:5963e596c66fac988d9dcfe2d964a97f48fc6dd8168d5172b41eb6ff80a95748" [label=""];
  "sha256:5963e596c66fac988d9dcfe2d964a97f48fc6dd8168d5172b41eb6ff80a95748" -> "sha256:c27a0dcf4db3202c8b8f445da1b5da45c46eca92f03f0e5e0b888b49e9cd5514" [label=""];
  "sha256:c27a0dcf4db3202c8b8f445da1b5da45c46eca92f03f0e5e0b888b49e9cd5514" -> "sha256:90492cb8994d67ad79afdf39952215545699f3900925ce3e632e682320933e3e" [label=""];
  "sha256:90492cb8994d67ad79afdf39952215545699f3900925ce3e632e682320933e3e" -> "sha256:4c2aaedf1b96f4cc80e1f10411ccecc1f2ace45517d0aaf918f0cf732b163af5" [label=""];
  "sha256:4c2aaedf1b96f4cc80e1f10411ccecc1f2ace45517d0aaf918f0cf732b163af5" -> "sha256:417aed5dd9f918d98d9e5745cc4491e926cb1b2bd6305fa09e485c6064809116" [label=""];
  "sha256:417aed5dd9f918d98d9e5745cc4491e926cb1b2bd6305fa09e485c6064809116" -> "sha256:89931120f8be9a5bcf9c1a08afd30167922244981edcc6cacd0ac1aed42a78e0" [label=""];
  "sha256:5466d1989018e1772bd430a70dfb76d546b4e49424733f28534d23638dc9daaa" -> "sha256:89931120f8be9a5bcf9c1a08afd30167922244981edcc6cacd0ac1aed42a78e0" [label=""];
  "sha256:89931120f8be9a5bcf9c1a08afd30167922244981edcc6cacd0ac1aed42a78e0" -> "sha256:599d91d9904e05d21feaea2d05b22eef5d8a71d0a2f6b551c3b8acc8c65fc587" [label=""];
  "sha256:599d91d9904e05d21feaea2d05b22eef5d8a71d0a2f6b551c3b8acc8c65fc587" -> "sha256:db9bdb8a558083f8ff08e6050aeeba11b8fb20c4713eed8f403ad907777536fd" [label=""];
}

