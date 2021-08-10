[app/sources/454964989.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:1ff55d4c09d09c0b674a1e2495a2c02d3063ba62d05702df4f03acd32e858515" [label="/bin/sh -c groupadd -r mysql && useradd -r -g mysql mysql" shape="box"];
  "sha256:4b432faef833a7eb87e5aeaece8a8704b95dc25e29cf4af2b7725d16e499809b" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:f7d9f3e79666bf8ce6aedf9e0698cb05c81a37fc659d33ae3f6c1b2ef0837a9c" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get install -y perl --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:f79a6ac96d5ecb58ac33bb121b4c37ab00fe776a5b49e0f67bf48de0c8255c38" [label="/bin/sh -c apt-key adv --keyserver keys.gnupg.net --recv-keys 8507EFA5" shape="box"];
  "sha256:c82bba4859e05192000d2197fd60bd7d7d79dfc219ffa3451b2ac92b58ccdf10" [label="/bin/sh -c echo \"deb http://repo.percona.com/apt trusty main\" > /etc/apt/sources.list.d/percona.list" shape="box"];
  "sha256:093ccb19722e8635b2ed99294d593349c52bdd263ae6d0c56440e3b63f8dbd4a" [label="/bin/sh -c echo \"deb-src http://repo.percona.com/apt trusty main\" >> /etc/apt/sources.list.d/percona.list" shape="box"];
  "sha256:30e74c471f8dc808ef3900125b9c3311f2973062e309c0c00e6931e32baf6039" [label="/bin/sh -c {                 echo percona-server-server-5.6 percona-server-server/data-dir select '';                 echo percona-server-server-5.6 percona-server-server/root_password password '';         } | debconf-set-selections         && apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y percona-xtradb-cluster-client-\"${MYSQL_VERSION}\"            percona-xtradb-cluster-common-\"${MYSQL_VERSION}\" percona-xtradb-cluster-server-\"${MYSQL_VERSION}\"         && rm -rf /var/lib/apt/lists/*         && rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql && chown -R mysql:mysql /var/lib/mysql" shape="box"];
  "sha256:3fe94d6e7ddb38d73dc254e8f7cdaf0689277ce3cd303c3102e206cb20a8509c" [label="local://context" shape="ellipse"];
  "sha256:4fe9b5af0506a132967defd9580a776b3ed34124c5bb2de3c1368c5b7bfbb198" [label="copy{src=/my.cnf, dest=/etc/mysql/my.cnf}" shape="note"];
  "sha256:170b3418b67c66b3d81163899af2621b380eaf1ba411bda20674cb7cbc1d3cf9" [label="copy{src=/cluster.cnf, dest=/etc/mysql/conf.d/cluster.cnf}" shape="note"];
  "sha256:1524960d0589bcb816b1cec39c3c66bd61566fa128325f8bf59a039d18e23817" [label="copy{src=/docker-entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:6c29d5442fcbbc6c04babbcfc8ddc2a372f6442abdd2929bc7b2300ac46699fc" [label="sha256:6c29d5442fcbbc6c04babbcfc8ddc2a372f6442abdd2929bc7b2300ac46699fc" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:1ff55d4c09d09c0b674a1e2495a2c02d3063ba62d05702df4f03acd32e858515" [label=""];
  "sha256:1ff55d4c09d09c0b674a1e2495a2c02d3063ba62d05702df4f03acd32e858515" -> "sha256:4b432faef833a7eb87e5aeaece8a8704b95dc25e29cf4af2b7725d16e499809b" [label=""];
  "sha256:4b432faef833a7eb87e5aeaece8a8704b95dc25e29cf4af2b7725d16e499809b" -> "sha256:f7d9f3e79666bf8ce6aedf9e0698cb05c81a37fc659d33ae3f6c1b2ef0837a9c" [label=""];
  "sha256:f7d9f3e79666bf8ce6aedf9e0698cb05c81a37fc659d33ae3f6c1b2ef0837a9c" -> "sha256:f79a6ac96d5ecb58ac33bb121b4c37ab00fe776a5b49e0f67bf48de0c8255c38" [label=""];
  "sha256:f79a6ac96d5ecb58ac33bb121b4c37ab00fe776a5b49e0f67bf48de0c8255c38" -> "sha256:c82bba4859e05192000d2197fd60bd7d7d79dfc219ffa3451b2ac92b58ccdf10" [label=""];
  "sha256:c82bba4859e05192000d2197fd60bd7d7d79dfc219ffa3451b2ac92b58ccdf10" -> "sha256:093ccb19722e8635b2ed99294d593349c52bdd263ae6d0c56440e3b63f8dbd4a" [label=""];
  "sha256:093ccb19722e8635b2ed99294d593349c52bdd263ae6d0c56440e3b63f8dbd4a" -> "sha256:30e74c471f8dc808ef3900125b9c3311f2973062e309c0c00e6931e32baf6039" [label=""];
  "sha256:30e74c471f8dc808ef3900125b9c3311f2973062e309c0c00e6931e32baf6039" -> "sha256:4fe9b5af0506a132967defd9580a776b3ed34124c5bb2de3c1368c5b7bfbb198" [label=""];
  "sha256:3fe94d6e7ddb38d73dc254e8f7cdaf0689277ce3cd303c3102e206cb20a8509c" -> "sha256:4fe9b5af0506a132967defd9580a776b3ed34124c5bb2de3c1368c5b7bfbb198" [label=""];
  "sha256:4fe9b5af0506a132967defd9580a776b3ed34124c5bb2de3c1368c5b7bfbb198" -> "sha256:170b3418b67c66b3d81163899af2621b380eaf1ba411bda20674cb7cbc1d3cf9" [label=""];
  "sha256:3fe94d6e7ddb38d73dc254e8f7cdaf0689277ce3cd303c3102e206cb20a8509c" -> "sha256:170b3418b67c66b3d81163899af2621b380eaf1ba411bda20674cb7cbc1d3cf9" [label=""];
  "sha256:170b3418b67c66b3d81163899af2621b380eaf1ba411bda20674cb7cbc1d3cf9" -> "sha256:1524960d0589bcb816b1cec39c3c66bd61566fa128325f8bf59a039d18e23817" [label=""];
  "sha256:3fe94d6e7ddb38d73dc254e8f7cdaf0689277ce3cd303c3102e206cb20a8509c" -> "sha256:1524960d0589bcb816b1cec39c3c66bd61566fa128325f8bf59a039d18e23817" [label=""];
  "sha256:1524960d0589bcb816b1cec39c3c66bd61566fa128325f8bf59a039d18e23817" -> "sha256:6c29d5442fcbbc6c04babbcfc8ddc2a372f6442abdd2929bc7b2300ac46699fc" [label=""];
}

