[app/sources/367049838.Dockerfile]
digraph {
  "sha256:820e5572b9d6a041ef4c3209289c8a46bfdfcaa7f136a12c18ea42ca38c7938b" [label="local://context" shape="ellipse"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:7894cbbc8d9102447ad2a0fa4069135d1bab62ff491d67263e19e26e6ff31d29" [label="copy{src=/supervisord.conf, dest=/etc/supervisor/conf.d/supervisord.conf}" shape="note"];
  "sha256:c167421efa524ba66cd4cd36f92ce736f3822b5f23f00bf13c8036b31f15aa0c" [label="copy{src=/supervisor-3.3.0.tar.gz, dest=/data/}" shape="note"];
  "sha256:01286603cd7bb42db57f7cc0de978a2e16aac068834f86e4cbe9c28560050c44" [label="copy{src=/setuptools-0.6c11.tar.gz, dest=/data/}" shape="note"];
  "sha256:de5cf242dcf619faeef14728f49c597e8961ad1c5d7189d66f0fb84d9cf91267" [label="copy{src=/bird-authority.tar.gz, dest=/data/}" shape="note"];
  "sha256:45f9d40b97ad8af27d2bd67e0ae022e1b68c64add9d5b49ddfbd3344f3139f62" [label="copy{src=/bird-task-server.tar.gz, dest=/data/}" shape="note"];
  "sha256:6d38eb463c14b8d54d6b493f6c438203f4e88c41b99e63ebccf498ac64b6f0da" [label="copy{src=/bird-log-server.tar.gz, dest=/data/}" shape="note"];
  "sha256:0aec1ac1dab51bb9031219e716718d8eaddf64ba9a12500f812e1673f5fa7c06" [label="/bin/sh -c cd /data/ && tar zxf setuptools-0.6c11.tar.gz && cd setuptools-0.6c11/ && python setup.py build && python setup.py install && rm -f setuptools-0.6c11.tar.gz" shape="box"];
  "sha256:4a17ac6919c9bd3d13fbf69bee8117e568333a90cb694383120603bdb96a88c3" [label="/bin/sh -c cd /data/ && tar zxf supervisor-3.3.0.tar.gz && cd supervisor-3.3.0/ && python setup.py install && rm -f supervisor-3.3.0.tar.gz" shape="box"];
  "sha256:1959fb1c7c7e40477ff08aef3efca9cb681ce3ea83e37b0e4478b12378db1d02" [label="/bin/sh -c cd /data/ && tar zxf bird-authority.tar.gz && rm -f /data/bird-authority.tar.gz" shape="box"];
  "sha256:a3a97e27078d5c29756cae1d67b5532671c596daf7533c43818a83c77b324aa5" [label="/bin/sh -c cd /data/ && tar zxf bird-task-server.tar.gz && rm -f /data/bird-task-server.tar.gz" shape="box"];
  "sha256:c4cb3c7f0ace666a2ed8b3ed8fe129c4fe9ee3953046f3f8d30c3e1c380a6edf" [label="/bin/sh -c cd /data/ && tar zxf bird-log-server.tar.gz && rm -f /data/bird-log-server.tar.gz" shape="box"];
  "sha256:bd60c5b3f6a791ae67c60f1d6e2a4010a9b6152e6ce34255800f754ab0fb9d04" [label="sha256:bd60c5b3f6a791ae67c60f1d6e2a4010a9b6152e6ce34255800f754ab0fb9d04" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:7894cbbc8d9102447ad2a0fa4069135d1bab62ff491d67263e19e26e6ff31d29" [label=""];
  "sha256:820e5572b9d6a041ef4c3209289c8a46bfdfcaa7f136a12c18ea42ca38c7938b" -> "sha256:7894cbbc8d9102447ad2a0fa4069135d1bab62ff491d67263e19e26e6ff31d29" [label=""];
  "sha256:7894cbbc8d9102447ad2a0fa4069135d1bab62ff491d67263e19e26e6ff31d29" -> "sha256:c167421efa524ba66cd4cd36f92ce736f3822b5f23f00bf13c8036b31f15aa0c" [label=""];
  "sha256:820e5572b9d6a041ef4c3209289c8a46bfdfcaa7f136a12c18ea42ca38c7938b" -> "sha256:c167421efa524ba66cd4cd36f92ce736f3822b5f23f00bf13c8036b31f15aa0c" [label=""];
  "sha256:c167421efa524ba66cd4cd36f92ce736f3822b5f23f00bf13c8036b31f15aa0c" -> "sha256:01286603cd7bb42db57f7cc0de978a2e16aac068834f86e4cbe9c28560050c44" [label=""];
  "sha256:820e5572b9d6a041ef4c3209289c8a46bfdfcaa7f136a12c18ea42ca38c7938b" -> "sha256:01286603cd7bb42db57f7cc0de978a2e16aac068834f86e4cbe9c28560050c44" [label=""];
  "sha256:01286603cd7bb42db57f7cc0de978a2e16aac068834f86e4cbe9c28560050c44" -> "sha256:de5cf242dcf619faeef14728f49c597e8961ad1c5d7189d66f0fb84d9cf91267" [label=""];
  "sha256:820e5572b9d6a041ef4c3209289c8a46bfdfcaa7f136a12c18ea42ca38c7938b" -> "sha256:de5cf242dcf619faeef14728f49c597e8961ad1c5d7189d66f0fb84d9cf91267" [label=""];
  "sha256:de5cf242dcf619faeef14728f49c597e8961ad1c5d7189d66f0fb84d9cf91267" -> "sha256:45f9d40b97ad8af27d2bd67e0ae022e1b68c64add9d5b49ddfbd3344f3139f62" [label=""];
  "sha256:820e5572b9d6a041ef4c3209289c8a46bfdfcaa7f136a12c18ea42ca38c7938b" -> "sha256:45f9d40b97ad8af27d2bd67e0ae022e1b68c64add9d5b49ddfbd3344f3139f62" [label=""];
  "sha256:45f9d40b97ad8af27d2bd67e0ae022e1b68c64add9d5b49ddfbd3344f3139f62" -> "sha256:6d38eb463c14b8d54d6b493f6c438203f4e88c41b99e63ebccf498ac64b6f0da" [label=""];
  "sha256:820e5572b9d6a041ef4c3209289c8a46bfdfcaa7f136a12c18ea42ca38c7938b" -> "sha256:6d38eb463c14b8d54d6b493f6c438203f4e88c41b99e63ebccf498ac64b6f0da" [label=""];
  "sha256:6d38eb463c14b8d54d6b493f6c438203f4e88c41b99e63ebccf498ac64b6f0da" -> "sha256:0aec1ac1dab51bb9031219e716718d8eaddf64ba9a12500f812e1673f5fa7c06" [label=""];
  "sha256:0aec1ac1dab51bb9031219e716718d8eaddf64ba9a12500f812e1673f5fa7c06" -> "sha256:4a17ac6919c9bd3d13fbf69bee8117e568333a90cb694383120603bdb96a88c3" [label=""];
  "sha256:4a17ac6919c9bd3d13fbf69bee8117e568333a90cb694383120603bdb96a88c3" -> "sha256:1959fb1c7c7e40477ff08aef3efca9cb681ce3ea83e37b0e4478b12378db1d02" [label=""];
  "sha256:1959fb1c7c7e40477ff08aef3efca9cb681ce3ea83e37b0e4478b12378db1d02" -> "sha256:a3a97e27078d5c29756cae1d67b5532671c596daf7533c43818a83c77b324aa5" [label=""];
  "sha256:a3a97e27078d5c29756cae1d67b5532671c596daf7533c43818a83c77b324aa5" -> "sha256:c4cb3c7f0ace666a2ed8b3ed8fe129c4fe9ee3953046f3f8d30c3e1c380a6edf" [label=""];
  "sha256:c4cb3c7f0ace666a2ed8b3ed8fe129c4fe9ee3953046f3f8d30c3e1c380a6edf" -> "sha256:bd60c5b3f6a791ae67c60f1d6e2a4010a9b6152e6ce34255800f754ab0fb9d04" [label=""];
}

