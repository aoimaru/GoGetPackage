[app/sources/172524787.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:d133b6c1ce25e2edcb4165f619c702fd0d366c0edc545737a9ca62ced8a0ceca" [label="/bin/sh -c groupadd -r postgres && useradd -r -g postgres postgres" shape="box"];
  "sha256:9d990ace70af178746d52969d17ace948093704033d3a33b8a3977fa33412f59" [label="/bin/sh -c gpg --keyserver pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4" shape="box"];
  "sha256:2ae45faf5b89d69c3d6d07006c5f4d9d642bd1d35435f15fd0293209ee11895b" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* \t&& wget -O /usr/local/bin/gosu \"https://github.com/tianon/gosu/releases/download/1.2/gosu-$(dpkg --print-architecture)\" \t&& wget -O /usr/local/bin/gosu.asc \"https://github.com/tianon/gosu/releases/download/1.2/gosu-$(dpkg --print-architecture).asc\" \t&& gpg --verify /usr/local/bin/gosu.asc \t&& rm /usr/local/bin/gosu.asc \t&& chmod +x /usr/local/bin/gosu \t&& apt-get purge -y --auto-remove ca-certificates wget" shape="box"];
  "sha256:c9cd6e30290b3b08fc63919f7e8875fb74b51926aa119d7e26d5f4ca7397d115" [label="/bin/sh -c apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* \t&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8" shape="box"];
  "sha256:813c8ba6cac665bdd20e2e781cbb98187210d5b49696eb38cffb4cd0768494ff" [label="/bin/sh -c mkdir /docker-entrypoint-initdb.d" shape="box"];
  "sha256:d8cfb5c11623e94edd612c50d996f4449ff1e137c6d37b5e1d08e59b389dd39f" [label="/bin/sh -c apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8" shape="box"];
  "sha256:c598557e502d7fccdaf40dcb2af944c1dc81a69eb5ade69dd406130c2be0cf1b" [label="/bin/sh -c echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list" shape="box"];
  "sha256:e0981d81dd8c6fdad410b66b0f38b6dd5ed3f3029938e6d61223e144f07803f1" [label="/bin/sh -c apt-get update \t&& apt-get install -y postgresql-common \t&& sed -ri 's/#(create_main_cluster) .*$/\\1 = false/' /etc/postgresql-common/createcluster.conf \t&& apt-get install -y \t\tpostgresql-$PG_MAJOR=$PG_VERSION \t\tpostgresql-contrib-$PG_MAJOR=$PG_VERSION \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:25db0da76bab27f0b62207047cc9b4a22d1889096f4876235d70e7c874868c53" [label="/bin/sh -c mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql" shape="box"];
  "sha256:630780439a0073cb32aa64b40902896a542de607a4344fd147bcfd86d81a83c9" [label="local://context" shape="ellipse"];
  "sha256:03c2df3489643ac871931c71275db27bfeecfdc462111e0d27bdc5f0c6521a2e" [label="copy{src=/replicated/postgres/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:53f58554716be84da28d4e46d15edf29778393955fbd344da4931233c9b20bd4" [label="copy{src=/replicated/postgres/postgresql.conf, dest=/}" shape="note"];
  "sha256:98dba32d65de576fc310c87786de66a8f857fe5f7cfebb1e95764c0a96fa6faa" [label="sha256:98dba32d65de576fc310c87786de66a8f857fe5f7cfebb1e95764c0a96fa6faa" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:d133b6c1ce25e2edcb4165f619c702fd0d366c0edc545737a9ca62ced8a0ceca" [label=""];
  "sha256:d133b6c1ce25e2edcb4165f619c702fd0d366c0edc545737a9ca62ced8a0ceca" -> "sha256:9d990ace70af178746d52969d17ace948093704033d3a33b8a3977fa33412f59" [label=""];
  "sha256:9d990ace70af178746d52969d17ace948093704033d3a33b8a3977fa33412f59" -> "sha256:2ae45faf5b89d69c3d6d07006c5f4d9d642bd1d35435f15fd0293209ee11895b" [label=""];
  "sha256:2ae45faf5b89d69c3d6d07006c5f4d9d642bd1d35435f15fd0293209ee11895b" -> "sha256:c9cd6e30290b3b08fc63919f7e8875fb74b51926aa119d7e26d5f4ca7397d115" [label=""];
  "sha256:c9cd6e30290b3b08fc63919f7e8875fb74b51926aa119d7e26d5f4ca7397d115" -> "sha256:813c8ba6cac665bdd20e2e781cbb98187210d5b49696eb38cffb4cd0768494ff" [label=""];
  "sha256:813c8ba6cac665bdd20e2e781cbb98187210d5b49696eb38cffb4cd0768494ff" -> "sha256:d8cfb5c11623e94edd612c50d996f4449ff1e137c6d37b5e1d08e59b389dd39f" [label=""];
  "sha256:d8cfb5c11623e94edd612c50d996f4449ff1e137c6d37b5e1d08e59b389dd39f" -> "sha256:c598557e502d7fccdaf40dcb2af944c1dc81a69eb5ade69dd406130c2be0cf1b" [label=""];
  "sha256:c598557e502d7fccdaf40dcb2af944c1dc81a69eb5ade69dd406130c2be0cf1b" -> "sha256:e0981d81dd8c6fdad410b66b0f38b6dd5ed3f3029938e6d61223e144f07803f1" [label=""];
  "sha256:e0981d81dd8c6fdad410b66b0f38b6dd5ed3f3029938e6d61223e144f07803f1" -> "sha256:25db0da76bab27f0b62207047cc9b4a22d1889096f4876235d70e7c874868c53" [label=""];
  "sha256:25db0da76bab27f0b62207047cc9b4a22d1889096f4876235d70e7c874868c53" -> "sha256:03c2df3489643ac871931c71275db27bfeecfdc462111e0d27bdc5f0c6521a2e" [label=""];
  "sha256:630780439a0073cb32aa64b40902896a542de607a4344fd147bcfd86d81a83c9" -> "sha256:03c2df3489643ac871931c71275db27bfeecfdc462111e0d27bdc5f0c6521a2e" [label=""];
  "sha256:03c2df3489643ac871931c71275db27bfeecfdc462111e0d27bdc5f0c6521a2e" -> "sha256:53f58554716be84da28d4e46d15edf29778393955fbd344da4931233c9b20bd4" [label=""];
  "sha256:630780439a0073cb32aa64b40902896a542de607a4344fd147bcfd86d81a83c9" -> "sha256:53f58554716be84da28d4e46d15edf29778393955fbd344da4931233c9b20bd4" [label=""];
  "sha256:53f58554716be84da28d4e46d15edf29778393955fbd344da4931233c9b20bd4" -> "sha256:98dba32d65de576fc310c87786de66a8f857fe5f7cfebb1e95764c0a96fa6faa" [label=""];
}

