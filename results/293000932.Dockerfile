[app/sources/293000932.Dockerfile]
digraph {
  "sha256:04a465876384d495884b070fe3d9952ccfb68fb3224cbeb0566b6bfe4e54cae3" [label="docker-image://docker.io/library/guidolib:1.6.7" shape="ellipse"];
  "sha256:fade3bd02d17cac987b56c200a01f8d08f68302c55b35da8f662cf037a5d7b2b" [label="/bin/sh -c apt-get update -qq" shape="box"];
  "sha256:3b28eadd96005a5e77bd7afdf43568649e539f3e13c0a8de3e35fda4f2184267" [label="/bin/sh -c apt-get install -y libmicrohttpd-dev libpulse-dev" shape="box"];
  "sha256:37a3136f96b945f922d9bc159fae23f28bdce9fc3cab08625dec47a2a2199dc8" [label="/bin/sh -c apt-get install -y libqt5svg5-dev libqt5websockets5-dev libqt5sensors5-dev qtmultimedia5-dev qtdeclarative5-dev" shape="box"];
  "sha256:90edacb577d6b4d09c047d700d375d2c1cacf1ca95bac7bffb53ccd620bef276" [label="mkdir{path=/grame}" shape="note"];
  "sha256:ea7ac169cfb1587c08f1b146664a9c52c5f43a4fbf04de91ce1f852486c46d6e" [label="/bin/sh -c git clone --single-branch -b dev --depth 1 https://github.com/grame-cncm/inscore.git" shape="box"];
  "sha256:d8c15e16f1c6d0900eff4f0382d7946952091c3f1bb152fc0e3abc6d7eeb1f60" [label="mkdir{path=/grame/inscore/build}" shape="note"];
  "sha256:49b0309a00180b6ed04f04c876889990161e488205b91d26f67b8a932546a012" [label="/bin/sh -c git pull" shape="box"];
  "sha256:4a1a7ff8bae857aad30bc70392c625c701a80d5a483c2f96a26c71a284f11df2" [label="/bin/sh -c make -j 4" shape="box"];
  "sha256:5e9e0fb08de823efdd1e7b6f6fc729ed69c2dcf7a56db1f4556a31c51d67db89" [label="sha256:5e9e0fb08de823efdd1e7b6f6fc729ed69c2dcf7a56db1f4556a31c51d67db89" shape="plaintext"];
  "sha256:04a465876384d495884b070fe3d9952ccfb68fb3224cbeb0566b6bfe4e54cae3" -> "sha256:fade3bd02d17cac987b56c200a01f8d08f68302c55b35da8f662cf037a5d7b2b" [label=""];
  "sha256:fade3bd02d17cac987b56c200a01f8d08f68302c55b35da8f662cf037a5d7b2b" -> "sha256:3b28eadd96005a5e77bd7afdf43568649e539f3e13c0a8de3e35fda4f2184267" [label=""];
  "sha256:3b28eadd96005a5e77bd7afdf43568649e539f3e13c0a8de3e35fda4f2184267" -> "sha256:37a3136f96b945f922d9bc159fae23f28bdce9fc3cab08625dec47a2a2199dc8" [label=""];
  "sha256:37a3136f96b945f922d9bc159fae23f28bdce9fc3cab08625dec47a2a2199dc8" -> "sha256:90edacb577d6b4d09c047d700d375d2c1cacf1ca95bac7bffb53ccd620bef276" [label=""];
  "sha256:90edacb577d6b4d09c047d700d375d2c1cacf1ca95bac7bffb53ccd620bef276" -> "sha256:ea7ac169cfb1587c08f1b146664a9c52c5f43a4fbf04de91ce1f852486c46d6e" [label=""];
  "sha256:ea7ac169cfb1587c08f1b146664a9c52c5f43a4fbf04de91ce1f852486c46d6e" -> "sha256:d8c15e16f1c6d0900eff4f0382d7946952091c3f1bb152fc0e3abc6d7eeb1f60" [label=""];
  "sha256:d8c15e16f1c6d0900eff4f0382d7946952091c3f1bb152fc0e3abc6d7eeb1f60" -> "sha256:49b0309a00180b6ed04f04c876889990161e488205b91d26f67b8a932546a012" [label=""];
  "sha256:49b0309a00180b6ed04f04c876889990161e488205b91d26f67b8a932546a012" -> "sha256:4a1a7ff8bae857aad30bc70392c625c701a80d5a483c2f96a26c71a284f11df2" [label=""];
  "sha256:4a1a7ff8bae857aad30bc70392c625c701a80d5a483c2f96a26c71a284f11df2" -> "sha256:5e9e0fb08de823efdd1e7b6f6fc729ed69c2dcf7a56db1f4556a31c51d67db89" [label=""];
}

