[app/sources/318148144.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:d7d35b8a9cfcbf1a500b4499dbb9087b3a003e28d5b513a6890369fd59326b56" [label="local://context" shape="ellipse"];
  "sha256:a368c263890a71ccd6f011206eed3a635dc1f3e347dfe7292d064b5b64c22b44" [label="copy{src=/apt.conf, dest=/etc/apt/}" shape="note"];
  "sha256:d050603a820bbd43d734288885bc30f2106b81089237af37c88d088883d88918" [label="/bin/sh -c apt-get -y update && \t    apt-get install -y \t\tautoconf \t\tbuild-essential \t\tgit \t\tpython \t\tzlib1g-dev \t\tlibglib2.0-dev \t\tlibpixman-1-dev \t\tpkg-config \t\tsudo \t\tbsdmainutils" shape="box"];
  "sha256:097e65babf94fe984557c360479461dfc321a8a41d20b60fdb93bd44587aaf82" [label="/bin/sh -c useradd --create-home -d /home/sof -u $UID -G sudo sof && echo \"sof:test0000\" | chpasswd && adduser sof sudo" shape="box"];
  "sha256:cf5f50591739f63bc66ad8d4930aae69c1617607b0d4d89a5e4cd9f0947aad63" [label="/bin/sh -c cd /home/sof && git clone https://github.com/thesofproject/qemu.git && \tcd qemu && git checkout sof-stable && \tsed -i 's#git://git.qemu.org#https://github.com/qemu#g' .gitmodules && \tsed -i 's#git://git.qemu-project.org#https://github.com/qemu#g' .gitmodules && \t./configure --prefix=`pwd`/ --target-list=xtensa-softmmu --enable-coroutine-pool && \tmake" shape="box"];
  "sha256:8fd8504520e7656dcd32a543f64b7d34e11b0839d4b3e59047c5f01a0313a470" [label="/bin/sh -c mkdir -p /home/sof/sof.git" shape="box"];
  "sha256:301041f83d6ccd3eb436e8d51262a922b7af4ce7f6704c60cf7ec9cc8b67c9e1" [label="mkdir{path=/home/sof/qemu}" shape="note"];
  "sha256:741ea510ab8b9db49c6043872c2601dbc9ba2087d0e10d81922fd6cf97a0339c" [label="sha256:741ea510ab8b9db49c6043872c2601dbc9ba2087d0e10d81922fd6cf97a0339c" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:a368c263890a71ccd6f011206eed3a635dc1f3e347dfe7292d064b5b64c22b44" [label=""];
  "sha256:d7d35b8a9cfcbf1a500b4499dbb9087b3a003e28d5b513a6890369fd59326b56" -> "sha256:a368c263890a71ccd6f011206eed3a635dc1f3e347dfe7292d064b5b64c22b44" [label=""];
  "sha256:a368c263890a71ccd6f011206eed3a635dc1f3e347dfe7292d064b5b64c22b44" -> "sha256:d050603a820bbd43d734288885bc30f2106b81089237af37c88d088883d88918" [label=""];
  "sha256:d050603a820bbd43d734288885bc30f2106b81089237af37c88d088883d88918" -> "sha256:097e65babf94fe984557c360479461dfc321a8a41d20b60fdb93bd44587aaf82" [label=""];
  "sha256:097e65babf94fe984557c360479461dfc321a8a41d20b60fdb93bd44587aaf82" -> "sha256:cf5f50591739f63bc66ad8d4930aae69c1617607b0d4d89a5e4cd9f0947aad63" [label=""];
  "sha256:cf5f50591739f63bc66ad8d4930aae69c1617607b0d4d89a5e4cd9f0947aad63" -> "sha256:8fd8504520e7656dcd32a543f64b7d34e11b0839d4b3e59047c5f01a0313a470" [label=""];
  "sha256:8fd8504520e7656dcd32a543f64b7d34e11b0839d4b3e59047c5f01a0313a470" -> "sha256:301041f83d6ccd3eb436e8d51262a922b7af4ce7f6704c60cf7ec9cc8b67c9e1" [label=""];
  "sha256:301041f83d6ccd3eb436e8d51262a922b7af4ce7f6704c60cf7ec9cc8b67c9e1" -> "sha256:741ea510ab8b9db49c6043872c2601dbc9ba2087d0e10d81922fd6cf97a0339c" [label=""];
}

