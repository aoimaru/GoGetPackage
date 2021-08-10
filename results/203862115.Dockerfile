[app/sources/203862115.Dockerfile]
digraph {
  "sha256:2c13a60162907574852963997ba23911204e046f863480dcbd1d303615eb4394" [label="docker-image://docker.io/library/centos:6" shape="ellipse"];
  "sha256:633cc57f35ec66146559cd90fa57f62a5d596321eab5d74b48a86fd5d188d88c" [label="/bin/sh -c yum install -y wget sudo net-tools" shape="box"];
  "sha256:4a4e5944d23cbd769cac31b8fefd64d02a0cd96009078fe78853c0fb857ea9d9" [label="/bin/sh -c wget -nv ${AMBARI_REPO_URL} -O /etc/yum.repos.d/ambari.repo" shape="box"];
  "sha256:8ed1237053683c0f35c9b07ed9dc38ce315ba27f2a6965b0a636afd086fc8010" [label="/bin/sh -c yum install -y ambari-server postgresql-jdbc" shape="box"];
  "sha256:6f6f1a984fd9a83eee84082ba66da67b9c2ca86d9d648a99f3bd6ec8fdac9a26" [label="/bin/sh -c ambari-server setup --database=postgres --databasehost=postgres.dev --databaseport=5432 --databasename=ambari --postgresschema=ambari  --databaseusername=ambari --databasepassword=dev --silent" shape="box"];
  "sha256:2cf0f3823e3698fc1fa260bbaa58d54bab35b54c4772eae84eab2a6debf09b68" [label="/bin/sh -c ambari-server setup --jdbc-db postgres --jdbc-driver=/usr/share/java/postgresql-jdbc.jar" shape="box"];
  "sha256:284ca15c4c71d826daf779881a5c87d8cc918646a8ff75593003a0d335f4f0d7" [label="local://context" shape="ellipse"];
  "sha256:5545a6941cdddd0cf4be1097bfd9f9043f49c6fa015e5265b0c6e07b13418612" [label="copy{src=/scripts/start.sh, dest=/start.sh}" shape="note"];
  "sha256:f5aaec7c6be19f4badb971541d38f76f0bc8f12f19b7e8f311214d159d5acfef" [label="sha256:f5aaec7c6be19f4badb971541d38f76f0bc8f12f19b7e8f311214d159d5acfef" shape="plaintext"];
  "sha256:2c13a60162907574852963997ba23911204e046f863480dcbd1d303615eb4394" -> "sha256:633cc57f35ec66146559cd90fa57f62a5d596321eab5d74b48a86fd5d188d88c" [label=""];
  "sha256:633cc57f35ec66146559cd90fa57f62a5d596321eab5d74b48a86fd5d188d88c" -> "sha256:4a4e5944d23cbd769cac31b8fefd64d02a0cd96009078fe78853c0fb857ea9d9" [label=""];
  "sha256:4a4e5944d23cbd769cac31b8fefd64d02a0cd96009078fe78853c0fb857ea9d9" -> "sha256:8ed1237053683c0f35c9b07ed9dc38ce315ba27f2a6965b0a636afd086fc8010" [label=""];
  "sha256:8ed1237053683c0f35c9b07ed9dc38ce315ba27f2a6965b0a636afd086fc8010" -> "sha256:6f6f1a984fd9a83eee84082ba66da67b9c2ca86d9d648a99f3bd6ec8fdac9a26" [label=""];
  "sha256:6f6f1a984fd9a83eee84082ba66da67b9c2ca86d9d648a99f3bd6ec8fdac9a26" -> "sha256:2cf0f3823e3698fc1fa260bbaa58d54bab35b54c4772eae84eab2a6debf09b68" [label=""];
  "sha256:2cf0f3823e3698fc1fa260bbaa58d54bab35b54c4772eae84eab2a6debf09b68" -> "sha256:5545a6941cdddd0cf4be1097bfd9f9043f49c6fa015e5265b0c6e07b13418612" [label=""];
  "sha256:284ca15c4c71d826daf779881a5c87d8cc918646a8ff75593003a0d335f4f0d7" -> "sha256:5545a6941cdddd0cf4be1097bfd9f9043f49c6fa015e5265b0c6e07b13418612" [label=""];
  "sha256:5545a6941cdddd0cf4be1097bfd9f9043f49c6fa015e5265b0c6e07b13418612" -> "sha256:f5aaec7c6be19f4badb971541d38f76f0bc8f12f19b7e8f311214d159d5acfef" [label=""];
}

