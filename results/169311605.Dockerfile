[app/sources/169311605.Dockerfile]
digraph {
  "sha256:d7eb568049ad1157f0dc8c81103bf80591b1749bdb35bc0b23da8f14f3c16fab" [label="local://context" shape="ellipse"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:ad88c89ea378682125d639a782dc65b579d1b9c1bfdff48bd1b8f1ea6499f283" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get update     && apt-get install -y software-properties-common && apt-add-repository ppa:ansible/ansible     && apt-get update     && apt-get install -y ansible python python-simplejson python-setuptools     && easy_install pip" shape="box"];
  "sha256:a11c0f29848bd999dfb3c52309383088cf3a601afa2c415a4f341c70fe193046" [label="mkdir{path=/ansible}" shape="note"];
  "sha256:d4667b0bd89818a2a451db99e92276641fdc416625178c8c5c7a60091a180de7" [label="copy{src=/, dest=/ansible}" shape="note"];
  "sha256:d43ab7ebf550d3b3d836487310604ebf43e8d103a1dcb60e4b6f08382fb000d1" [label="sha256:d43ab7ebf550d3b3d836487310604ebf43e8d103a1dcb60e4b6f08382fb000d1" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:ad88c89ea378682125d639a782dc65b579d1b9c1bfdff48bd1b8f1ea6499f283" [label=""];
  "sha256:ad88c89ea378682125d639a782dc65b579d1b9c1bfdff48bd1b8f1ea6499f283" -> "sha256:a11c0f29848bd999dfb3c52309383088cf3a601afa2c415a4f341c70fe193046" [label=""];
  "sha256:a11c0f29848bd999dfb3c52309383088cf3a601afa2c415a4f341c70fe193046" -> "sha256:d4667b0bd89818a2a451db99e92276641fdc416625178c8c5c7a60091a180de7" [label=""];
  "sha256:d7eb568049ad1157f0dc8c81103bf80591b1749bdb35bc0b23da8f14f3c16fab" -> "sha256:d4667b0bd89818a2a451db99e92276641fdc416625178c8c5c7a60091a180de7" [label=""];
  "sha256:d4667b0bd89818a2a451db99e92276641fdc416625178c8c5c7a60091a180de7" -> "sha256:d43ab7ebf550d3b3d836487310604ebf43e8d103a1dcb60e4b6f08382fb000d1" [label=""];
}

