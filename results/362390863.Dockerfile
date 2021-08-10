[app/sources/362390863.Dockerfile]
digraph {
  "sha256:8583fd75b5b0f038d5da8a4fb7aa92c5aea9c873ee3964189bcf106e23d8d118" [label="docker-image://docker.io/factual/docker-base:latest" shape="ellipse"];
  "sha256:f2f01db3e4b66a486abdb1d93fc57c0b1f66aa791b159294f469f7937f0b864b" [label="/bin/sh -c apt-get -y update && apt-get -y install bind9 git-core wget" shape="box"];
  "sha256:2888319a7e5911f38c1a9375d9b8cd0b16354ff35da3b9a133a124d9786e84c8" [label="/bin/sh -c rm -rf /etc/bind" shape="box"];
  "sha256:c1edb55b2c75636b82111d2da4e04f442f150558a81eef52b9b43dd1d32c98a4" [label="local://context" shape="ellipse"];
  "sha256:160381f65d0140858cc7eb6263edbfeea4084d108143aec514d908f761f8938f" [label="copy{src=/ssh_config, dest=/root/.ssh/config}" shape="note"];
  "sha256:68f228a138aa6b59e7e314b13c3a586510a13c386cfbb808f37460874c789744" [label="copy{src=/run_named.sh, dest=/etc/my_init.d/99_named}" shape="note"];
  "sha256:f920af97e0c58916b8d1f7705a44ebd54cf0fe509f454bd2d7cc46a7d16a4e97" [label="/bin/sh -c mkdir -p /var/run/named" shape="box"];
  "sha256:28a894842d88e6b697ac4d25169c8e89ed60d3c80cf3b917d0762c27584b46d2" [label="/bin/sh -c mkdir -p /var/log/named/" shape="box"];
  "sha256:281c361c29dc9de2e36958840337259a947f21902fb0c4808c43ad0b71abf197" [label="/bin/sh -c chown -R bind:bind /var/run/named" shape="box"];
  "sha256:f07fb58e6e5cd2597a30db028a2e2be62b79dae4d2d22e245568d313119f546d" [label="/bin/sh -c chown -R bind:bind /var/log/named" shape="box"];
  "sha256:b18cae0617df1b2b409f3e7459b5f6a0bc12eb8cb8ee55b0af508a414093c681" [label="copy{src=/ext_sync.sh, dest=/}" shape="note"];
  "sha256:512846fd8deecf9926df36c858033997fb9b9492328318be93a72e757caa5c9c" [label="sha256:512846fd8deecf9926df36c858033997fb9b9492328318be93a72e757caa5c9c" shape="plaintext"];
  "sha256:8583fd75b5b0f038d5da8a4fb7aa92c5aea9c873ee3964189bcf106e23d8d118" -> "sha256:f2f01db3e4b66a486abdb1d93fc57c0b1f66aa791b159294f469f7937f0b864b" [label=""];
  "sha256:f2f01db3e4b66a486abdb1d93fc57c0b1f66aa791b159294f469f7937f0b864b" -> "sha256:2888319a7e5911f38c1a9375d9b8cd0b16354ff35da3b9a133a124d9786e84c8" [label=""];
  "sha256:2888319a7e5911f38c1a9375d9b8cd0b16354ff35da3b9a133a124d9786e84c8" -> "sha256:160381f65d0140858cc7eb6263edbfeea4084d108143aec514d908f761f8938f" [label=""];
  "sha256:c1edb55b2c75636b82111d2da4e04f442f150558a81eef52b9b43dd1d32c98a4" -> "sha256:160381f65d0140858cc7eb6263edbfeea4084d108143aec514d908f761f8938f" [label=""];
  "sha256:160381f65d0140858cc7eb6263edbfeea4084d108143aec514d908f761f8938f" -> "sha256:68f228a138aa6b59e7e314b13c3a586510a13c386cfbb808f37460874c789744" [label=""];
  "sha256:c1edb55b2c75636b82111d2da4e04f442f150558a81eef52b9b43dd1d32c98a4" -> "sha256:68f228a138aa6b59e7e314b13c3a586510a13c386cfbb808f37460874c789744" [label=""];
  "sha256:68f228a138aa6b59e7e314b13c3a586510a13c386cfbb808f37460874c789744" -> "sha256:f920af97e0c58916b8d1f7705a44ebd54cf0fe509f454bd2d7cc46a7d16a4e97" [label=""];
  "sha256:f920af97e0c58916b8d1f7705a44ebd54cf0fe509f454bd2d7cc46a7d16a4e97" -> "sha256:28a894842d88e6b697ac4d25169c8e89ed60d3c80cf3b917d0762c27584b46d2" [label=""];
  "sha256:28a894842d88e6b697ac4d25169c8e89ed60d3c80cf3b917d0762c27584b46d2" -> "sha256:281c361c29dc9de2e36958840337259a947f21902fb0c4808c43ad0b71abf197" [label=""];
  "sha256:281c361c29dc9de2e36958840337259a947f21902fb0c4808c43ad0b71abf197" -> "sha256:f07fb58e6e5cd2597a30db028a2e2be62b79dae4d2d22e245568d313119f546d" [label=""];
  "sha256:f07fb58e6e5cd2597a30db028a2e2be62b79dae4d2d22e245568d313119f546d" -> "sha256:b18cae0617df1b2b409f3e7459b5f6a0bc12eb8cb8ee55b0af508a414093c681" [label=""];
  "sha256:c1edb55b2c75636b82111d2da4e04f442f150558a81eef52b9b43dd1d32c98a4" -> "sha256:b18cae0617df1b2b409f3e7459b5f6a0bc12eb8cb8ee55b0af508a414093c681" [label=""];
  "sha256:b18cae0617df1b2b409f3e7459b5f6a0bc12eb8cb8ee55b0af508a414093c681" -> "sha256:512846fd8deecf9926df36c858033997fb9b9492328318be93a72e757caa5c9c" [label=""];
}

