[app/sources/389292506.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:cca881f664bf2faf3bb80f68581d3ced566f35e8f0136b0bb2e4035383d3289d" [label="/bin/sh -c apt-get update &&     apt-get install -y ssh git build-essential ruby pkg-config autoconf libtool devscripts debhelper apt-utils liblog4cxx-dev libopencv-dev python python3-dev" shape="box"];
  "sha256:7b0bcb18133a369b3b50fe9395a12cefd27051454d7c7460a280a2030ca25811" [label="sha256:7b0bcb18133a369b3b50fe9395a12cefd27051454d7c7460a280a2030ca25811" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:cca881f664bf2faf3bb80f68581d3ced566f35e8f0136b0bb2e4035383d3289d" [label=""];
  "sha256:cca881f664bf2faf3bb80f68581d3ced566f35e8f0136b0bb2e4035383d3289d" -> "sha256:7b0bcb18133a369b3b50fe9395a12cefd27051454d7c7460a280a2030ca25811" [label=""];
}

