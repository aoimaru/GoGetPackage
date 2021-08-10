[app/sources/199108076.Dockerfile]
digraph {
  "sha256:f9f81eeae58e0aaa73d81c1544ee46b99ca870031a3202e0311fed46cc89a35b" [label="docker-image://launcher.gcr.io/google/ubuntu16_04@sha256:281e570b1c254121ef9db4698554084a809d120aebfe14486c1014d0b6d4d3f5" shape="ellipse"];
  "sha256:e662e79244c6134cfea330102e4a60d35c71c50bcf7bfc0c0b2684b743d21cb5" [label="/bin/sh -c apt-get -y update &&     apt-get -y install         apt-transport-https         ca-certificates         curl         make         software-properties-common &&     curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - &&     apt-key fingerprint 0EBFCD88 &&     add-apt-repository        \"deb [arch=amd64] https://download.docker.com/linux/ubuntu        xenial        edge\" &&     apt-get -y update &&     apt-get -y install docker-ce=5:18.09.6~3-0~ubuntu-xenial" shape="box"];
  "sha256:a1615ba048cd443dc35d89168a2c1e48a611094dd0a2c05c91f021afdb2ed2d5" [label="sha256:a1615ba048cd443dc35d89168a2c1e48a611094dd0a2c05c91f021afdb2ed2d5" shape="plaintext"];
  "sha256:f9f81eeae58e0aaa73d81c1544ee46b99ca870031a3202e0311fed46cc89a35b" -> "sha256:e662e79244c6134cfea330102e4a60d35c71c50bcf7bfc0c0b2684b743d21cb5" [label=""];
  "sha256:e662e79244c6134cfea330102e4a60d35c71c50bcf7bfc0c0b2684b743d21cb5" -> "sha256:a1615ba048cd443dc35d89168a2c1e48a611094dd0a2c05c91f021afdb2ed2d5" [label=""];
}

