[app/sources/252767123.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:96e73833e5fd6d49208d707aa2a1177aa6089085bb9bbe69faf4b503ee128e45" [label="/bin/sh -c apt-get update && apt-get install -y --force-yes curl apt-transport-https lsb-release build-essential python-all" shape="box"];
  "sha256:5dab7ea9da22c3d4c9ee86b377105e6309e92cb94f368bb462ebab9502a5595c" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup | bash -" shape="box"];
  "sha256:7cac9c187332bad9c3c08b908d8671f2689ad3c2a5d8645e563bdb5ecf12b66f" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:94e5ebd01b2327e9bbea15ebda57836fbb84c7e7a4be699e813b7ef320286481" [label="/bin/sh -c apt-get install nodejs -y --force-yes" shape="box"];
  "sha256:ea7e8e7aea2084df452e739002772a14ad7771690f906a3d7b80d95b44b80281" [label="/bin/sh -c npm install -g node-gyp && npm cache clear" shape="box"];
  "sha256:2c52989682242f4e7594bba9e9ac36b44ef2c5d76e6f2fae5a55f8fbc9d92b06" [label="/bin/sh -c node-gyp configure || echo \"\"" shape="box"];
  "sha256:4be86e7e4619beafb729ae9788e387513babe657077bd7bb331e824e156c3f12" [label="local://context" shape="ellipse"];
  "sha256:4c1be616d2e8c48ee73f7ea91af62ae0739c2d0c11c559f2a2f43a7fe8e7e708" [label="copy{src=/, dest=/src}" shape="note"];
  "sha256:3bfa68c947ff31d052af015a65dd65d400aeb21d8c7ac21a60a8f8bd99578f13" [label="/bin/sh -c cd /src; npm install" shape="box"];
  "sha256:0a778665adf5664da2ef54fac7a404b22a8640ea761519974802d87c2e99fa08" [label="sha256:0a778665adf5664da2ef54fac7a404b22a8640ea761519974802d87c2e99fa08" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:96e73833e5fd6d49208d707aa2a1177aa6089085bb9bbe69faf4b503ee128e45" [label=""];
  "sha256:96e73833e5fd6d49208d707aa2a1177aa6089085bb9bbe69faf4b503ee128e45" -> "sha256:5dab7ea9da22c3d4c9ee86b377105e6309e92cb94f368bb462ebab9502a5595c" [label=""];
  "sha256:5dab7ea9da22c3d4c9ee86b377105e6309e92cb94f368bb462ebab9502a5595c" -> "sha256:7cac9c187332bad9c3c08b908d8671f2689ad3c2a5d8645e563bdb5ecf12b66f" [label=""];
  "sha256:7cac9c187332bad9c3c08b908d8671f2689ad3c2a5d8645e563bdb5ecf12b66f" -> "sha256:94e5ebd01b2327e9bbea15ebda57836fbb84c7e7a4be699e813b7ef320286481" [label=""];
  "sha256:94e5ebd01b2327e9bbea15ebda57836fbb84c7e7a4be699e813b7ef320286481" -> "sha256:ea7e8e7aea2084df452e739002772a14ad7771690f906a3d7b80d95b44b80281" [label=""];
  "sha256:ea7e8e7aea2084df452e739002772a14ad7771690f906a3d7b80d95b44b80281" -> "sha256:2c52989682242f4e7594bba9e9ac36b44ef2c5d76e6f2fae5a55f8fbc9d92b06" [label=""];
  "sha256:2c52989682242f4e7594bba9e9ac36b44ef2c5d76e6f2fae5a55f8fbc9d92b06" -> "sha256:4c1be616d2e8c48ee73f7ea91af62ae0739c2d0c11c559f2a2f43a7fe8e7e708" [label=""];
  "sha256:4be86e7e4619beafb729ae9788e387513babe657077bd7bb331e824e156c3f12" -> "sha256:4c1be616d2e8c48ee73f7ea91af62ae0739c2d0c11c559f2a2f43a7fe8e7e708" [label=""];
  "sha256:4c1be616d2e8c48ee73f7ea91af62ae0739c2d0c11c559f2a2f43a7fe8e7e708" -> "sha256:3bfa68c947ff31d052af015a65dd65d400aeb21d8c7ac21a60a8f8bd99578f13" [label=""];
  "sha256:3bfa68c947ff31d052af015a65dd65d400aeb21d8c7ac21a60a8f8bd99578f13" -> "sha256:0a778665adf5664da2ef54fac7a404b22a8640ea761519974802d87c2e99fa08" [label=""];
}

