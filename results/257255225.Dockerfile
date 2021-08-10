[app/sources/257255225.Dockerfile]
digraph {
  "sha256:8bd4ccc4b80124d4cd998e329a63dd26deb3d9c3607ff9d29eee32183d8596e6" [label="docker-image://docker.io/dengdan/tensorflow-gpu:latest" shape="ellipse"];
  "sha256:7bc269187226ea4d1a21e3bd27ed784c6aa8abf81cc44eee531a1fb5192f2c8a" [label="/bin/sh -c apt-get update && apt-get install -y openssh-server" shape="box"];
  "sha256:c87ff8342620ad3951d09f07f8dd3d849d88b939496b41bfb1af5d115f86a8a1" [label="/bin/sh -c apt-get install -y tmux htop vim zsh git locales libcv-dev" shape="box"];
  "sha256:ce14d66b99d1ebcf66fa0446d31d98b5779e5e39df132db69cf5e2d80fbbeaf4" [label="/bin/sh -c pip install opencv-python matplotlib setproctitle" shape="box"];
  "sha256:e5c41c8d3bf347c95e2c86c7183abf04acac9c4bfcc9b45971a12308be59486c" [label="/bin/sh -c mkdir /var/run/sshd" shape="box"];
  "sha256:6c51b20ea821036ec452fd9b666983b54c722d6030e5cd4171de0c1024392ec9" [label="/bin/sh -c echo 'root:1' | chpasswd" shape="box"];
  "sha256:bfb64279d506a0b5bef511e4763344d9c19816706f16f8030e4c659aa7cc222c" [label="/bin/sh -c sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config" shape="box"];
  "sha256:79dabb7cf479215928e5dd1774f42d3088fd2632d9b7c5669c8dcc916dd8cb3b" [label="/bin/sh -c sed 's@session\\s*required\\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd" shape="box"];
  "sha256:7db44c416499462570df85b8c38c13794af4d7bb022541bfed84bc901679f35f" [label="/bin/sh -c echo \"export VISIBLE=now\" >> /etc/profile" shape="box"];
  "sha256:e1f6872d632cdc92b9b7e337c79c5e5e623721f3b958423e6540e68f0215b8f5" [label="/bin/sh -c echo \"alias p='python'\" >> /etc/profile" shape="box"];
  "sha256:df8af8c18f252d8020325c0eaa9970a3624d6888c25530d3011fb1520ba0c703" [label="/bin/sh -c echo \"alias n='nvidia-smi'\" >> /etc/profile" shape="box"];
  "sha256:561326325300e2f27e829e0fb5a68dd4c2e530e6e82c0c03a36197379d803e92" [label="/bin/sh -c echo \"alias wn='watch nvidia-smi'\" >> /etc/profile" shape="box"];
  "sha256:7a0e53018aa3be5a0aabf671af6f92a83aa6b0475bb488ad6a7748a7ccbffbbf" [label="sha256:7a0e53018aa3be5a0aabf671af6f92a83aa6b0475bb488ad6a7748a7ccbffbbf" shape="plaintext"];
  "sha256:8bd4ccc4b80124d4cd998e329a63dd26deb3d9c3607ff9d29eee32183d8596e6" -> "sha256:7bc269187226ea4d1a21e3bd27ed784c6aa8abf81cc44eee531a1fb5192f2c8a" [label=""];
  "sha256:7bc269187226ea4d1a21e3bd27ed784c6aa8abf81cc44eee531a1fb5192f2c8a" -> "sha256:c87ff8342620ad3951d09f07f8dd3d849d88b939496b41bfb1af5d115f86a8a1" [label=""];
  "sha256:c87ff8342620ad3951d09f07f8dd3d849d88b939496b41bfb1af5d115f86a8a1" -> "sha256:ce14d66b99d1ebcf66fa0446d31d98b5779e5e39df132db69cf5e2d80fbbeaf4" [label=""];
  "sha256:ce14d66b99d1ebcf66fa0446d31d98b5779e5e39df132db69cf5e2d80fbbeaf4" -> "sha256:e5c41c8d3bf347c95e2c86c7183abf04acac9c4bfcc9b45971a12308be59486c" [label=""];
  "sha256:e5c41c8d3bf347c95e2c86c7183abf04acac9c4bfcc9b45971a12308be59486c" -> "sha256:6c51b20ea821036ec452fd9b666983b54c722d6030e5cd4171de0c1024392ec9" [label=""];
  "sha256:6c51b20ea821036ec452fd9b666983b54c722d6030e5cd4171de0c1024392ec9" -> "sha256:bfb64279d506a0b5bef511e4763344d9c19816706f16f8030e4c659aa7cc222c" [label=""];
  "sha256:bfb64279d506a0b5bef511e4763344d9c19816706f16f8030e4c659aa7cc222c" -> "sha256:79dabb7cf479215928e5dd1774f42d3088fd2632d9b7c5669c8dcc916dd8cb3b" [label=""];
  "sha256:79dabb7cf479215928e5dd1774f42d3088fd2632d9b7c5669c8dcc916dd8cb3b" -> "sha256:7db44c416499462570df85b8c38c13794af4d7bb022541bfed84bc901679f35f" [label=""];
  "sha256:7db44c416499462570df85b8c38c13794af4d7bb022541bfed84bc901679f35f" -> "sha256:e1f6872d632cdc92b9b7e337c79c5e5e623721f3b958423e6540e68f0215b8f5" [label=""];
  "sha256:e1f6872d632cdc92b9b7e337c79c5e5e623721f3b958423e6540e68f0215b8f5" -> "sha256:df8af8c18f252d8020325c0eaa9970a3624d6888c25530d3011fb1520ba0c703" [label=""];
  "sha256:df8af8c18f252d8020325c0eaa9970a3624d6888c25530d3011fb1520ba0c703" -> "sha256:561326325300e2f27e829e0fb5a68dd4c2e530e6e82c0c03a36197379d803e92" [label=""];
  "sha256:561326325300e2f27e829e0fb5a68dd4c2e530e6e82c0c03a36197379d803e92" -> "sha256:7a0e53018aa3be5a0aabf671af6f92a83aa6b0475bb488ad6a7748a7ccbffbbf" [label=""];
}

