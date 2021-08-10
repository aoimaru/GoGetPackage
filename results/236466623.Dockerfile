[app/sources/236466623.Dockerfile]
digraph {
  "sha256:c5183aa4873b88078bc664ba6c8ca1e6ba7e43b63a8ff7174bed0ee8d08f134d" [label="docker-image://docker.io/library/ubuntu:18.04@sha256:7bd7a9ca99f868bf69c4b6212f64f2af8e243f97ba13abb3e641e03a7ceb59e8" shape="ellipse"];
  "sha256:2cca1251635bc97d42c2d648e863ae9faa4ccf693415c33f00493713bdb269cd" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends     ca-certificates     cmake     gcc     libc6-dev     make     pkg-config     git     automake     libtool     m4     autoconf     make     file     binutils" shape="box"];
  "sha256:dada5a994ce35fb7ddb4658bd067bf70d4eadc96f02f4d9a8c3e901b4551b065" [label="local://context" shape="ellipse"];
  "sha256:0e83fd6623840e94ec68351efc72001646ec9a0cf1ee182ffc515ba2a08a987d" [label="copy{src=/xargo.sh, dest=/}" shape="note"];
  "sha256:03865471b0b4ff7498391b479a89258e7f0e66e7bb328e0454fdf948850ed6f8" [label="/bin/sh -c bash /xargo.sh" shape="box"];
  "sha256:7a0d8c74733429cdb295ea95f2f50ea43aa230f035a83a22a63da1473e438502" [label="/bin/sh -c dpkg --add-architecture i386 && apt-get update &&     apt-get install -y --no-install-recommends         wine-stable         wine64         wine32         libz-mingw-w64-dev" shape="box"];
  "sha256:469c78ed7366890f4e82cbaece56ea7fab729b48832d67961149661c2a518883" [label="/bin/sh -c apt-get install -y --no-install-recommends g++-mingw-w64-x86-64" shape="box"];
  "sha256:b13a51d6f935f4a1b74fc3ff845436e577870590b069176b295d09df003d06f7" [label="/bin/sh -c mkdir -p /usr/lib/binfmt-support/ &&     rm -f /usr/lib/binfmt-support/run-detectors /usr/bin/run-detectors &&     ln -s /usr/bin/wine /usr/lib/binfmt-support/run-detectors &&     ln -s /usr/bin/wine /usr/bin/run-detectors" shape="box"];
  "sha256:b382901a055af432708babb7b4e4284fe0c46b290dede5d6ddfd7ca4a78ee90e" [label="copy{src=/windows-entry.sh, dest=/}" shape="note"];
  "sha256:c57b8896ae06e00b24e90d70766bef39142da6377e75c4ff8497a4377ac54490" [label="sha256:c57b8896ae06e00b24e90d70766bef39142da6377e75c4ff8497a4377ac54490" shape="plaintext"];
  "sha256:c5183aa4873b88078bc664ba6c8ca1e6ba7e43b63a8ff7174bed0ee8d08f134d" -> "sha256:2cca1251635bc97d42c2d648e863ae9faa4ccf693415c33f00493713bdb269cd" [label=""];
  "sha256:2cca1251635bc97d42c2d648e863ae9faa4ccf693415c33f00493713bdb269cd" -> "sha256:0e83fd6623840e94ec68351efc72001646ec9a0cf1ee182ffc515ba2a08a987d" [label=""];
  "sha256:dada5a994ce35fb7ddb4658bd067bf70d4eadc96f02f4d9a8c3e901b4551b065" -> "sha256:0e83fd6623840e94ec68351efc72001646ec9a0cf1ee182ffc515ba2a08a987d" [label=""];
  "sha256:0e83fd6623840e94ec68351efc72001646ec9a0cf1ee182ffc515ba2a08a987d" -> "sha256:03865471b0b4ff7498391b479a89258e7f0e66e7bb328e0454fdf948850ed6f8" [label=""];
  "sha256:03865471b0b4ff7498391b479a89258e7f0e66e7bb328e0454fdf948850ed6f8" -> "sha256:7a0d8c74733429cdb295ea95f2f50ea43aa230f035a83a22a63da1473e438502" [label=""];
  "sha256:7a0d8c74733429cdb295ea95f2f50ea43aa230f035a83a22a63da1473e438502" -> "sha256:469c78ed7366890f4e82cbaece56ea7fab729b48832d67961149661c2a518883" [label=""];
  "sha256:469c78ed7366890f4e82cbaece56ea7fab729b48832d67961149661c2a518883" -> "sha256:b13a51d6f935f4a1b74fc3ff845436e577870590b069176b295d09df003d06f7" [label=""];
  "sha256:b13a51d6f935f4a1b74fc3ff845436e577870590b069176b295d09df003d06f7" -> "sha256:b382901a055af432708babb7b4e4284fe0c46b290dede5d6ddfd7ca4a78ee90e" [label=""];
  "sha256:dada5a994ce35fb7ddb4658bd067bf70d4eadc96f02f4d9a8c3e901b4551b065" -> "sha256:b382901a055af432708babb7b4e4284fe0c46b290dede5d6ddfd7ca4a78ee90e" [label=""];
  "sha256:b382901a055af432708babb7b4e4284fe0c46b290dede5d6ddfd7ca4a78ee90e" -> "sha256:c57b8896ae06e00b24e90d70766bef39142da6377e75c4ff8497a4377ac54490" [label=""];
}

