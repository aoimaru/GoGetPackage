[app/sources/199090064.Dockerfile]
digraph {
  "sha256:3177e862179282dd337a9f96139a193514dfa4a23feb48f3f304c05f24e64598" [label="docker-image://docker.io/centos/systemd:latest" shape="ellipse"];
  "sha256:8778b634b90db0b00790142ab8ace83217db1caf4705321c07a83752f6432755" [label="/bin/sh -c yum update -y &&     yum upgrade -y &&     yum install -y epel-release &&     yum install -y         bind-utils         perl-Digest-SHA         python-pip         rsyslog         sudo         vim         wget &&         yum clean all && rm -rf /var/cache/yum" shape="box"];
  "sha256:fc4f5298cc53b05371367e112ea8ed770b122c8314bd6c5e68c02aa04a327f66" [label="/bin/sh -c wget -O jq https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64 &&     chmod +x ./jq &&     cp jq /usr/bin" shape="box"];
  "sha256:71833ff7126419bc50f5eac75afea9cd0fca46129e1562cffefcaa1ff1c547bd" [label="/bin/sh -c pip install --upgrade pip &&     pip install --upgrade setuptools &&     pip install awscli --upgrade" shape="box"];
  "sha256:6e3dfafc36105100f5e86542cdabe8818e0a774dda3525949882220fd3d549e9" [label="/bin/sh -c yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo &&     yum -y install docker-ce &&     yum clean all" shape="box"];
  "sha256:7e7b0c87ae0d148c0e08e6f041dded70c802762cbf989b1a345f90dcccfb7536" [label="sha256:7e7b0c87ae0d148c0e08e6f041dded70c802762cbf989b1a345f90dcccfb7536" shape="plaintext"];
  "sha256:3177e862179282dd337a9f96139a193514dfa4a23feb48f3f304c05f24e64598" -> "sha256:8778b634b90db0b00790142ab8ace83217db1caf4705321c07a83752f6432755" [label=""];
  "sha256:8778b634b90db0b00790142ab8ace83217db1caf4705321c07a83752f6432755" -> "sha256:fc4f5298cc53b05371367e112ea8ed770b122c8314bd6c5e68c02aa04a327f66" [label=""];
  "sha256:fc4f5298cc53b05371367e112ea8ed770b122c8314bd6c5e68c02aa04a327f66" -> "sha256:71833ff7126419bc50f5eac75afea9cd0fca46129e1562cffefcaa1ff1c547bd" [label=""];
  "sha256:71833ff7126419bc50f5eac75afea9cd0fca46129e1562cffefcaa1ff1c547bd" -> "sha256:6e3dfafc36105100f5e86542cdabe8818e0a774dda3525949882220fd3d549e9" [label=""];
  "sha256:6e3dfafc36105100f5e86542cdabe8818e0a774dda3525949882220fd3d549e9" -> "sha256:7e7b0c87ae0d148c0e08e6f041dded70c802762cbf989b1a345f90dcccfb7536" [label=""];
}

