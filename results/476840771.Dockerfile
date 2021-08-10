[app/sources/476840771.Dockerfile]
digraph {
  "sha256:c7d8c10870d808d47d5d3b82b90b576c30a65cd1f197d621eb43f2cdc481340b" [label="local://context" shape="ellipse"];
  "sha256:71c97c01ee1c0631eaa923c8bd157d71478aba175d3427771811bc9fad5c368a" [label="docker-image://docker.io/nvidia/cuda:8.0-cudnn6-devel-ubuntu14.04" shape="ellipse"];
  "sha256:924b1aac860df14997382296541f90ae9b6485dce1a7ad192a8eb9946ce084fe" [label="/bin/sh -c cp -P /usr/include/cudnn.h /usr/local/cuda/include" shape="box"];
  "sha256:9e5e0f917ba2c742c9323a54de768195d3214fa99f3e3846674525bf24ff9a2d" [label="/bin/sh -c cp -P /usr/lib/x86_64-linux-gnu/libcudnn* /usr/local/cuda/lib64" shape="box"];
  "sha256:f6fd18da6deb9c694baa408109a6ece03f34b4e4ca6b4229f6f907dc38db225d" [label="copy{src=/install/*.sh, dest=/install/}" shape="note"];
  "sha256:f1b0888ce1445a2dd8291c16e7aa9da0af0cdc647b1fec46d07b4543863d948e" [label="/bin/sh -c /install/install_bootstrap_deb_packages.sh" shape="box"];
  "sha256:ee53345ec66b0c56e9f2912177590d093c8857b6a7902fb05a3132c4acff52b0" [label="/bin/sh -c add-apt-repository -y ppa:openjdk-r/ppa &&     add-apt-repository -y ppa:george-edison55/cmake-3.x" shape="box"];
  "sha256:46ccb78177ee4915f225f529149b0d3350f777ed01a178001e96b2523f59a6bb" [label="/bin/sh -c /install/install_deb_packages.sh" shape="box"];
  "sha256:83454fd9f3687c2c0a404bf45f181105900fff0381be42e6c4492a68dfa3160f" [label="/bin/sh -c /install/install_pip_packages.sh" shape="box"];
  "sha256:a99c374cbb451e23ae3f19be5a3dcfa0f3f6f26261f671d040a58bd50807c228" [label="/bin/sh -c /install/install_bazel.sh" shape="box"];
  "sha256:3b50e3a19c7804852ca6969304bcf80735bf6b10ca9ba7cc7384b021c37140cf" [label="/bin/sh -c /install/install_golang.sh" shape="box"];
  "sha256:b8111156204870a29fa4ec046be22c44e3f0462da670a05672e792bdd6690f64" [label="copy{src=/install/.bazelrc, dest=/etc/bazel.bazelrc}" shape="note"];
  "sha256:ccfb534fd0036019299a0d4e7b74dbac80829a60aa336c0ab856f5020c72a866" [label="sha256:ccfb534fd0036019299a0d4e7b74dbac80829a60aa336c0ab856f5020c72a866" shape="plaintext"];
  "sha256:71c97c01ee1c0631eaa923c8bd157d71478aba175d3427771811bc9fad5c368a" -> "sha256:924b1aac860df14997382296541f90ae9b6485dce1a7ad192a8eb9946ce084fe" [label=""];
  "sha256:924b1aac860df14997382296541f90ae9b6485dce1a7ad192a8eb9946ce084fe" -> "sha256:9e5e0f917ba2c742c9323a54de768195d3214fa99f3e3846674525bf24ff9a2d" [label=""];
  "sha256:9e5e0f917ba2c742c9323a54de768195d3214fa99f3e3846674525bf24ff9a2d" -> "sha256:f6fd18da6deb9c694baa408109a6ece03f34b4e4ca6b4229f6f907dc38db225d" [label=""];
  "sha256:c7d8c10870d808d47d5d3b82b90b576c30a65cd1f197d621eb43f2cdc481340b" -> "sha256:f6fd18da6deb9c694baa408109a6ece03f34b4e4ca6b4229f6f907dc38db225d" [label=""];
  "sha256:f6fd18da6deb9c694baa408109a6ece03f34b4e4ca6b4229f6f907dc38db225d" -> "sha256:f1b0888ce1445a2dd8291c16e7aa9da0af0cdc647b1fec46d07b4543863d948e" [label=""];
  "sha256:f1b0888ce1445a2dd8291c16e7aa9da0af0cdc647b1fec46d07b4543863d948e" -> "sha256:ee53345ec66b0c56e9f2912177590d093c8857b6a7902fb05a3132c4acff52b0" [label=""];
  "sha256:ee53345ec66b0c56e9f2912177590d093c8857b6a7902fb05a3132c4acff52b0" -> "sha256:46ccb78177ee4915f225f529149b0d3350f777ed01a178001e96b2523f59a6bb" [label=""];
  "sha256:46ccb78177ee4915f225f529149b0d3350f777ed01a178001e96b2523f59a6bb" -> "sha256:83454fd9f3687c2c0a404bf45f181105900fff0381be42e6c4492a68dfa3160f" [label=""];
  "sha256:83454fd9f3687c2c0a404bf45f181105900fff0381be42e6c4492a68dfa3160f" -> "sha256:a99c374cbb451e23ae3f19be5a3dcfa0f3f6f26261f671d040a58bd50807c228" [label=""];
  "sha256:a99c374cbb451e23ae3f19be5a3dcfa0f3f6f26261f671d040a58bd50807c228" -> "sha256:3b50e3a19c7804852ca6969304bcf80735bf6b10ca9ba7cc7384b021c37140cf" [label=""];
  "sha256:3b50e3a19c7804852ca6969304bcf80735bf6b10ca9ba7cc7384b021c37140cf" -> "sha256:b8111156204870a29fa4ec046be22c44e3f0462da670a05672e792bdd6690f64" [label=""];
  "sha256:c7d8c10870d808d47d5d3b82b90b576c30a65cd1f197d621eb43f2cdc481340b" -> "sha256:b8111156204870a29fa4ec046be22c44e3f0462da670a05672e792bdd6690f64" [label=""];
  "sha256:b8111156204870a29fa4ec046be22c44e3f0462da670a05672e792bdd6690f64" -> "sha256:ccfb534fd0036019299a0d4e7b74dbac80829a60aa336c0ab856f5020c72a866" [label=""];
}

