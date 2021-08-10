[app/sources/252787596.Dockerfile]
digraph {
  "sha256:748e6469db2a8213bdbd503b59b5ab811713764704979861d3452a71b00eed76" [label="docker-image://docker.io/library/ubuntu:14.04.2@sha256:a1cec70421f71f00c8bdb0adf0226dc548ff5ba9699cbd5fa09acdb68df82a02" shape="ellipse"];
  "sha256:97e5f439f96d8b0a79acdfc41cda51f4d9f30efedc825e8ae9f7949b2cb9c5f4" [label="mkdir{path=/root}" shape="note"];
  "sha256:db7198fb6bc3ca1b5a67059f12b13e7fb3b647fc8f0bb7a3738ef33c6b753457" [label="/bin/sh -c apt-get -qqy update && DEBIAN_FRONTEND=noninteractive apt-get -y install vim git nodejs npm curl wget ssh rsync figlet xsel toilet pv tree screen sudo" shape="box"];
  "sha256:49c58f958859bab4da202b6325cc3fe3c4708c975395813d8d55d69a9527a32f" [label="/bin/sh -c ln -s /usr/bin/nodejs /usr/bin/node" shape="box"];
  "sha256:a1bde61f4c4b53fcaca7203b9c627c603817f1a597821fecec6934197240ba91" [label="/bin/sh -c git clone https://github.com/nathanleclaire/wetty.git && cd wetty && npm install" shape="box"];
  "sha256:94caa79bf7a350883338a46bfed33e5c2726d0a9c7f67fa4e701edc6aaa219c8" [label="/bin/sh -c sed 's@/bin/login@/bin/bash@' -i /root/wetty/app.js" shape="box"];
  "sha256:21d239b90353615845ffa240374e3be031929d0d77cfe1a4bc20b4dac6ca56c5" [label="/bin/sh -c echo 'test -f /tmp/bashrc && source /tmp/bashrc || true' >> /root/.bashrc" shape="box"];
  "sha256:41bd547097fc983c3ba44eb4573220fef4a99ccfba487fd4ee315ae877adeca8" [label="sha256:41bd547097fc983c3ba44eb4573220fef4a99ccfba487fd4ee315ae877adeca8" shape="plaintext"];
  "sha256:748e6469db2a8213bdbd503b59b5ab811713764704979861d3452a71b00eed76" -> "sha256:97e5f439f96d8b0a79acdfc41cda51f4d9f30efedc825e8ae9f7949b2cb9c5f4" [label=""];
  "sha256:97e5f439f96d8b0a79acdfc41cda51f4d9f30efedc825e8ae9f7949b2cb9c5f4" -> "sha256:db7198fb6bc3ca1b5a67059f12b13e7fb3b647fc8f0bb7a3738ef33c6b753457" [label=""];
  "sha256:db7198fb6bc3ca1b5a67059f12b13e7fb3b647fc8f0bb7a3738ef33c6b753457" -> "sha256:49c58f958859bab4da202b6325cc3fe3c4708c975395813d8d55d69a9527a32f" [label=""];
  "sha256:49c58f958859bab4da202b6325cc3fe3c4708c975395813d8d55d69a9527a32f" -> "sha256:a1bde61f4c4b53fcaca7203b9c627c603817f1a597821fecec6934197240ba91" [label=""];
  "sha256:a1bde61f4c4b53fcaca7203b9c627c603817f1a597821fecec6934197240ba91" -> "sha256:94caa79bf7a350883338a46bfed33e5c2726d0a9c7f67fa4e701edc6aaa219c8" [label=""];
  "sha256:94caa79bf7a350883338a46bfed33e5c2726d0a9c7f67fa4e701edc6aaa219c8" -> "sha256:21d239b90353615845ffa240374e3be031929d0d77cfe1a4bc20b4dac6ca56c5" [label=""];
  "sha256:21d239b90353615845ffa240374e3be031929d0d77cfe1a4bc20b4dac6ca56c5" -> "sha256:41bd547097fc983c3ba44eb4573220fef4a99ccfba487fd4ee315ae877adeca8" [label=""];
}

