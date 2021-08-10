[app/sources/248384367.Dockerfile]
digraph {
  "sha256:136c0acc70723d7bd3a830da8eac684cdda5be91279caa590d04e0e22c19d79b" [label="local://context" shape="ellipse"];
  "sha256:193c72072e4c5c753f80c97f826dc5c00d495032e2c198fb71ae167ac5712bb0" [label="docker-image://docker.io/tensorflow/tensorflow:1.3.0-gpu" shape="ellipse"];
  "sha256:79a738fa6917a351f739e87387cd5d965704c23fac3e0fad4a51a68f94a1580a" [label="/bin/sh -c apt update && apt install -yqq --no-install-recommends         wget         jq \t\tcurl \t\tgit && \tapt-get clean &&     rm -rf /var/lib/apt/lists/* &&     git clone https://github.com/tensorflow/models.git /models" shape="box"];
  "sha256:a5d0fca501c593f2e939b69c6ecba1072ed4a41b0f05a5bbef1c74eff4a48dc5" [label="/bin/sh -c add-apt-repository -y ppa:openjdk-r/ppa &&     apt-get update &&     apt-get install -y openjdk-8-jdk openjdk-8-jre-headless &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:e3085c2fefd28325b06411ad2e7727c55c5ba28f14d6621c6f8893289da93a2d" [label="/bin/sh -c echo \"build --spawn_strategy=standalone --genrule_strategy=standalone\"     >>/root/.bazelrc" shape="box"];
  "sha256:9dc09a67c8bc02b173d31397d97e4d468ab24729e45b0ee29b69c2b200a04963" [label="copy{src=/bin/bazel, dest=/bin/bazel}" shape="note"];
  "sha256:691a09f7734ea7fbc0eef32a0f4a84890351c8d7f25cc7fc77c38d62f0e89072" [label="copy{src=/bin/bazel-real, dest=/bin/bazel-real}" shape="note"];
  "sha256:50a5dc559c99f94256fc67a09a57cada944b369cb7a00afc15f2331df728c764" [label="copy{src=/download.sh, dest=/download.sh}" shape="note"];
  "sha256:bbb5cca6780a330e9a93543b12489bbecf6f5fc74bb9b623599de17e954cc99c" [label="copy{src=/worker.sh, dest=/worker.sh}" shape="note"];
  "sha256:6f0a05cdb65ecf39fbac1f77a146dc5c641f34ebae50be6ad4056df1ef6e9810" [label="copy{src=/ps.sh, dest=/ps.sh}" shape="note"];
  "sha256:b72b556bbfe8a56ad8669715a67d91fdef1955387d5e5fe215538b33917b476f" [label="copy{src=/eval.sh, dest=/eval.sh}" shape="note"];
  "sha256:ecaf119af2b26b415f13c895f6ca5d568e490318a82228e21f7fe658a8d1a2e6" [label="sha256:ecaf119af2b26b415f13c895f6ca5d568e490318a82228e21f7fe658a8d1a2e6" shape="plaintext"];
  "sha256:193c72072e4c5c753f80c97f826dc5c00d495032e2c198fb71ae167ac5712bb0" -> "sha256:79a738fa6917a351f739e87387cd5d965704c23fac3e0fad4a51a68f94a1580a" [label=""];
  "sha256:79a738fa6917a351f739e87387cd5d965704c23fac3e0fad4a51a68f94a1580a" -> "sha256:a5d0fca501c593f2e939b69c6ecba1072ed4a41b0f05a5bbef1c74eff4a48dc5" [label=""];
  "sha256:a5d0fca501c593f2e939b69c6ecba1072ed4a41b0f05a5bbef1c74eff4a48dc5" -> "sha256:e3085c2fefd28325b06411ad2e7727c55c5ba28f14d6621c6f8893289da93a2d" [label=""];
  "sha256:e3085c2fefd28325b06411ad2e7727c55c5ba28f14d6621c6f8893289da93a2d" -> "sha256:9dc09a67c8bc02b173d31397d97e4d468ab24729e45b0ee29b69c2b200a04963" [label=""];
  "sha256:136c0acc70723d7bd3a830da8eac684cdda5be91279caa590d04e0e22c19d79b" -> "sha256:9dc09a67c8bc02b173d31397d97e4d468ab24729e45b0ee29b69c2b200a04963" [label=""];
  "sha256:9dc09a67c8bc02b173d31397d97e4d468ab24729e45b0ee29b69c2b200a04963" -> "sha256:691a09f7734ea7fbc0eef32a0f4a84890351c8d7f25cc7fc77c38d62f0e89072" [label=""];
  "sha256:136c0acc70723d7bd3a830da8eac684cdda5be91279caa590d04e0e22c19d79b" -> "sha256:691a09f7734ea7fbc0eef32a0f4a84890351c8d7f25cc7fc77c38d62f0e89072" [label=""];
  "sha256:691a09f7734ea7fbc0eef32a0f4a84890351c8d7f25cc7fc77c38d62f0e89072" -> "sha256:50a5dc559c99f94256fc67a09a57cada944b369cb7a00afc15f2331df728c764" [label=""];
  "sha256:136c0acc70723d7bd3a830da8eac684cdda5be91279caa590d04e0e22c19d79b" -> "sha256:50a5dc559c99f94256fc67a09a57cada944b369cb7a00afc15f2331df728c764" [label=""];
  "sha256:50a5dc559c99f94256fc67a09a57cada944b369cb7a00afc15f2331df728c764" -> "sha256:bbb5cca6780a330e9a93543b12489bbecf6f5fc74bb9b623599de17e954cc99c" [label=""];
  "sha256:136c0acc70723d7bd3a830da8eac684cdda5be91279caa590d04e0e22c19d79b" -> "sha256:bbb5cca6780a330e9a93543b12489bbecf6f5fc74bb9b623599de17e954cc99c" [label=""];
  "sha256:bbb5cca6780a330e9a93543b12489bbecf6f5fc74bb9b623599de17e954cc99c" -> "sha256:6f0a05cdb65ecf39fbac1f77a146dc5c641f34ebae50be6ad4056df1ef6e9810" [label=""];
  "sha256:136c0acc70723d7bd3a830da8eac684cdda5be91279caa590d04e0e22c19d79b" -> "sha256:6f0a05cdb65ecf39fbac1f77a146dc5c641f34ebae50be6ad4056df1ef6e9810" [label=""];
  "sha256:6f0a05cdb65ecf39fbac1f77a146dc5c641f34ebae50be6ad4056df1ef6e9810" -> "sha256:b72b556bbfe8a56ad8669715a67d91fdef1955387d5e5fe215538b33917b476f" [label=""];
  "sha256:136c0acc70723d7bd3a830da8eac684cdda5be91279caa590d04e0e22c19d79b" -> "sha256:b72b556bbfe8a56ad8669715a67d91fdef1955387d5e5fe215538b33917b476f" [label=""];
  "sha256:b72b556bbfe8a56ad8669715a67d91fdef1955387d5e5fe215538b33917b476f" -> "sha256:ecaf119af2b26b415f13c895f6ca5d568e490318a82228e21f7fe658a8d1a2e6" [label=""];
}

