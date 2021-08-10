[app/sources/278652426.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:0bfa98a5faee2ac8fb3cc3776e8d00c0215436c8c10e4c60629a3089af456a02" [label="/bin/sh -c echo 'deb <mirror> <version> main restricted universe multiverse\\ndeb <mirror> <version>-updates main restricted universe multiverse\\ndeb <mirror> <version>-backports main restricted universe multiverse\\ndeb <mirror> <version>-security main restricted universe multiverse\\n'> /etc/apt/sources.list" shape="box"];
  "sha256:c4c032a76037de927a8de75a6a7c62c1cc83e208e5388035982c0dc8394a1643" [label="/bin/sh -c sed -ie 's|<mirror>|http://mirrors.tuna.tsinghua.edu.cn/ubuntu/|' /etc/apt/sources.list" shape="box"];
  "sha256:34e019da8f0428aac8ef77cf0095e8e9fa769f532f1ea39620a942cc91a409ab" [label="/bin/sh -c sed -ie 's|<version>|xenial|' /etc/apt/sources.list" shape="box"];
  "sha256:895536c340a66fea2e273c52be0598a170f01f00c81624c9c89d7fb8e598904a" [label="/bin/sh -c apt-get update && apt-get upgrade -y" shape="box"];
  "sha256:de214cfd3cdb68b91a62640856469bab2257f575a8bc0d6ea7b39bde64008025" [label="/bin/sh -c apt-get install -y --no-install-recommends         curl         unzip         git         make         cmake-curses-gui         python         python-pip         python-setuptools         clang-format-5.0         graphviz         g++-arm-linux-gnueabi         gcc-arm-linux-gnueabi" shape="box"];
  "sha256:89e53b22d47c75e41a0b5cef9ee5edc0eba89b3416538bedec354225e50d78e7" [label="/bin/sh -c apt-get autoremove -y && apt-get clean" shape="box"];
  "sha256:460698f572646de7ff140f8aa9b70ca8b0570ff3bf7acbadd3205fb498325a42" [label="/bin/sh -c ln -s clang-format-5.0 /usr/bin/clang-format" shape="box"];
  "sha256:125fda8f967289c3f5b60c86436cb66ccce3c2ca9ba5df91bcb6014fc810fadb" [label="/bin/sh -c pip install -i https://pypi.tuna.tsinghua.edu.cn/simple --upgrade pip" shape="box"];
  "sha256:faec240dc824aa924343a98adab6e907fa3f9a368b791ddf8f788216b22fee95" [label="/bin/sh -c pip install -i https://pypi.tuna.tsinghua.edu.cn/simple wheel" shape="box"];
  "sha256:4beec2d06541b1c1ff07824f32b88458efc30efb9b12fb300e3738c7b6af2b61" [label="/bin/sh -c pip install -i https://pypi.tuna.tsinghua.edu.cn/simple pre-commit" shape="box"];
  "sha256:3578cbae7815e8a7074bfb7a647f6d220e1268045bd2bb5bbd94c171ecd8daf0" [label="/bin/sh -c cd /tmp && curl -O https://dl.google.com/android/repository/android-ndk-r17c-linux-x86_64.zip" shape="box"];
  "sha256:92868bd904f7c25bfaa105f20dabcb9596bc46b401929b0f721398bd8b1a140e" [label="/bin/sh -c curl -O https://mms-res.cdn.bcebos.com/cmake-3.10.3-Linux-x86_64.tar.gz &&         tar xzf cmake-3.10.3-Linux-x86_64.tar.gz &&         mv cmake-3.10.3-Linux-x86_64 /opt/cmake-3.10 &&         mv /usr/bin/cmake /usr/bin/cmake.bak && ln -s /opt/cmake-3.10/bin/cmake /usr/bin/cmake &&         mv /usr/bin/ccmake /usr/bin/ccmake.bak && ln -s /opt/cmake-3.10/bin/ccmake /usr/bin/ccmake" shape="box"];
  "sha256:43a2e3232e1f00be412501f3680cb44acd33ddfb9f226b8553cfebe044a9fd35" [label="/bin/sh -c cd /opt && unzip /tmp/android-ndk-r17c-linux-x86_64.zip" shape="box"];
  "sha256:5fbfe454a5e651c503aed633c93cd67a1a93be953b535b2b8676b39f6508c0de" [label="sha256:5fbfe454a5e651c503aed633c93cd67a1a93be953b535b2b8676b39f6508c0de" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:0bfa98a5faee2ac8fb3cc3776e8d00c0215436c8c10e4c60629a3089af456a02" [label=""];
  "sha256:0bfa98a5faee2ac8fb3cc3776e8d00c0215436c8c10e4c60629a3089af456a02" -> "sha256:c4c032a76037de927a8de75a6a7c62c1cc83e208e5388035982c0dc8394a1643" [label=""];
  "sha256:c4c032a76037de927a8de75a6a7c62c1cc83e208e5388035982c0dc8394a1643" -> "sha256:34e019da8f0428aac8ef77cf0095e8e9fa769f532f1ea39620a942cc91a409ab" [label=""];
  "sha256:34e019da8f0428aac8ef77cf0095e8e9fa769f532f1ea39620a942cc91a409ab" -> "sha256:895536c340a66fea2e273c52be0598a170f01f00c81624c9c89d7fb8e598904a" [label=""];
  "sha256:895536c340a66fea2e273c52be0598a170f01f00c81624c9c89d7fb8e598904a" -> "sha256:de214cfd3cdb68b91a62640856469bab2257f575a8bc0d6ea7b39bde64008025" [label=""];
  "sha256:de214cfd3cdb68b91a62640856469bab2257f575a8bc0d6ea7b39bde64008025" -> "sha256:89e53b22d47c75e41a0b5cef9ee5edc0eba89b3416538bedec354225e50d78e7" [label=""];
  "sha256:89e53b22d47c75e41a0b5cef9ee5edc0eba89b3416538bedec354225e50d78e7" -> "sha256:460698f572646de7ff140f8aa9b70ca8b0570ff3bf7acbadd3205fb498325a42" [label=""];
  "sha256:460698f572646de7ff140f8aa9b70ca8b0570ff3bf7acbadd3205fb498325a42" -> "sha256:125fda8f967289c3f5b60c86436cb66ccce3c2ca9ba5df91bcb6014fc810fadb" [label=""];
  "sha256:125fda8f967289c3f5b60c86436cb66ccce3c2ca9ba5df91bcb6014fc810fadb" -> "sha256:faec240dc824aa924343a98adab6e907fa3f9a368b791ddf8f788216b22fee95" [label=""];
  "sha256:faec240dc824aa924343a98adab6e907fa3f9a368b791ddf8f788216b22fee95" -> "sha256:4beec2d06541b1c1ff07824f32b88458efc30efb9b12fb300e3738c7b6af2b61" [label=""];
  "sha256:4beec2d06541b1c1ff07824f32b88458efc30efb9b12fb300e3738c7b6af2b61" -> "sha256:3578cbae7815e8a7074bfb7a647f6d220e1268045bd2bb5bbd94c171ecd8daf0" [label=""];
  "sha256:3578cbae7815e8a7074bfb7a647f6d220e1268045bd2bb5bbd94c171ecd8daf0" -> "sha256:92868bd904f7c25bfaa105f20dabcb9596bc46b401929b0f721398bd8b1a140e" [label=""];
  "sha256:92868bd904f7c25bfaa105f20dabcb9596bc46b401929b0f721398bd8b1a140e" -> "sha256:43a2e3232e1f00be412501f3680cb44acd33ddfb9f226b8553cfebe044a9fd35" [label=""];
  "sha256:43a2e3232e1f00be412501f3680cb44acd33ddfb9f226b8553cfebe044a9fd35" -> "sha256:5fbfe454a5e651c503aed633c93cd67a1a93be953b535b2b8676b39f6508c0de" [label=""];
}

