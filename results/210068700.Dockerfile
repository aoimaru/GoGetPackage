[app/sources/210068700.Dockerfile]
digraph {
  "sha256:d4b74724fd0026d1ca7e41a999d8754cc33cb92565d16ee7c085dd59e9a0380f" [label="docker-image://docker.io/tensorflow/tensorflow:1.2.0-devel-gpu-py3" shape="ellipse"];
  "sha256:e75d44dbcf007a7441fd804c2b393f0a0424be5df2e0fc0044164d96781b0261" [label="/bin/sh -c sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/' /etc/apt/sources.list" shape="box"];
  "sha256:c7a141b88f164fef3971b74532f1732b470d0a6950ad7e2bac1fc5253faa45bb" [label="local://context" shape="ellipse"];
  "sha256:9b9589a09b43dc0cb38a7047b7c452cdc0013940132c0fa2b86a794272eee9aa" [label="copy{src=/pip.conf, dest=/root/.pip/pip.conf}" shape="note"];
  "sha256:4380d779f88e752c0efc2382b29194268aded53bd664b707e400913244cf5bc2" [label="sha256:4380d779f88e752c0efc2382b29194268aded53bd664b707e400913244cf5bc2" shape="plaintext"];
  "sha256:d4b74724fd0026d1ca7e41a999d8754cc33cb92565d16ee7c085dd59e9a0380f" -> "sha256:e75d44dbcf007a7441fd804c2b393f0a0424be5df2e0fc0044164d96781b0261" [label=""];
  "sha256:e75d44dbcf007a7441fd804c2b393f0a0424be5df2e0fc0044164d96781b0261" -> "sha256:9b9589a09b43dc0cb38a7047b7c452cdc0013940132c0fa2b86a794272eee9aa" [label=""];
  "sha256:c7a141b88f164fef3971b74532f1732b470d0a6950ad7e2bac1fc5253faa45bb" -> "sha256:9b9589a09b43dc0cb38a7047b7c452cdc0013940132c0fa2b86a794272eee9aa" [label=""];
  "sha256:9b9589a09b43dc0cb38a7047b7c452cdc0013940132c0fa2b86a794272eee9aa" -> "sha256:4380d779f88e752c0efc2382b29194268aded53bd664b707e400913244cf5bc2" [label=""];
}

