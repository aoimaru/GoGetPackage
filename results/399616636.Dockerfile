[app/sources/399616636.Dockerfile]
digraph {
  "sha256:539680138299151bc5c88eebbabdf3860de54121c76ba4e7fcaec0fc5dcfd699" [label="docker-image://docker.io/library/fedora:27" shape="ellipse"];
  "sha256:29fae64a3b9c6221af53f189fa6759ab0bd74d378dcb0ef37b1dcd0f07810ce8" [label="/bin/sh -c dnf -y install                            'dnf-command(builddep)'            git-annex                          python2-devel                      python-mock                        python-nose                        python-blessings                   python-pep8                        python-setuptools                  python-bugzilla                    python2-rpm                        python3-mock                       python3-nose                       python3-blessings                  python3-pep8            \t   rsync                              createrepo_c" shape="box"];
  "sha256:f0e16395b4eb8d5c81b1c955f8a811a31d79327c84f3ff0bc7a8d92ae44ec785" [label="/bin/sh -c useradd sandbox" shape="box"];
  "sha256:fb0b4de419904960af630b9279805df2d978fad8e6860429e514930ff63dee1d" [label="/bin/sh -c git config --system user.email \"sandbox@example.com\"" shape="box"];
  "sha256:988bf1e19b8d712360c0eb2ac3762170a5b9e06cfc6c60b822979633760c4262" [label="/bin/sh -c git config --system user.name  \"sandbox\"" shape="box"];
  "sha256:333592298fb6af9422a4027614fb7e9efbda556b859690b8dce98249ec4ccf3b" [label="local://context" shape="ellipse"];
  "sha256:b0059d53eed6d542d98f3597bef27345d85adb1bfc602a0a4214a8726bd920de" [label="copy{src=/tito.spec, dest=/tmp/tito.spec}" shape="note"];
  "sha256:d8e681dbf8a962c5ac8df69ad9b262544bef1bb1f69b44f8e6fab23f321ba290" [label="/bin/sh -c dnf -y builddep /tmp/tito.spec" shape="box"];
  "sha256:9c2141fce80f0e92d562001ba1f376e96765fa91977a53f5fe6c98a45d7ca2ff" [label="/bin/sh -c dnf clean all" shape="box"];
  "sha256:64d134008f6c1505b76b3672ba67f40673f7426a796678482601f03170979a6f" [label="mkdir{path=/home/sandbox}" shape="note"];
  "sha256:d6882a926a856758687935e657f657918d423082e86715791452630ec1fa7f0f" [label="sha256:d6882a926a856758687935e657f657918d423082e86715791452630ec1fa7f0f" shape="plaintext"];
  "sha256:539680138299151bc5c88eebbabdf3860de54121c76ba4e7fcaec0fc5dcfd699" -> "sha256:29fae64a3b9c6221af53f189fa6759ab0bd74d378dcb0ef37b1dcd0f07810ce8" [label=""];
  "sha256:29fae64a3b9c6221af53f189fa6759ab0bd74d378dcb0ef37b1dcd0f07810ce8" -> "sha256:f0e16395b4eb8d5c81b1c955f8a811a31d79327c84f3ff0bc7a8d92ae44ec785" [label=""];
  "sha256:f0e16395b4eb8d5c81b1c955f8a811a31d79327c84f3ff0bc7a8d92ae44ec785" -> "sha256:fb0b4de419904960af630b9279805df2d978fad8e6860429e514930ff63dee1d" [label=""];
  "sha256:fb0b4de419904960af630b9279805df2d978fad8e6860429e514930ff63dee1d" -> "sha256:988bf1e19b8d712360c0eb2ac3762170a5b9e06cfc6c60b822979633760c4262" [label=""];
  "sha256:988bf1e19b8d712360c0eb2ac3762170a5b9e06cfc6c60b822979633760c4262" -> "sha256:b0059d53eed6d542d98f3597bef27345d85adb1bfc602a0a4214a8726bd920de" [label=""];
  "sha256:333592298fb6af9422a4027614fb7e9efbda556b859690b8dce98249ec4ccf3b" -> "sha256:b0059d53eed6d542d98f3597bef27345d85adb1bfc602a0a4214a8726bd920de" [label=""];
  "sha256:b0059d53eed6d542d98f3597bef27345d85adb1bfc602a0a4214a8726bd920de" -> "sha256:d8e681dbf8a962c5ac8df69ad9b262544bef1bb1f69b44f8e6fab23f321ba290" [label=""];
  "sha256:d8e681dbf8a962c5ac8df69ad9b262544bef1bb1f69b44f8e6fab23f321ba290" -> "sha256:9c2141fce80f0e92d562001ba1f376e96765fa91977a53f5fe6c98a45d7ca2ff" [label=""];
  "sha256:9c2141fce80f0e92d562001ba1f376e96765fa91977a53f5fe6c98a45d7ca2ff" -> "sha256:64d134008f6c1505b76b3672ba67f40673f7426a796678482601f03170979a6f" [label=""];
  "sha256:64d134008f6c1505b76b3672ba67f40673f7426a796678482601f03170979a6f" -> "sha256:d6882a926a856758687935e657f657918d423082e86715791452630ec1fa7f0f" [label=""];
}

