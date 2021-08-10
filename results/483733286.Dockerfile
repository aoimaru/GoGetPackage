[app/sources/483733286.Dockerfile]
digraph {
  "sha256:76f193efbed970a9125b2204ecc7e3cca6ed16c42c9439b637832bcd0f2cbb5b" [label="local://context" shape="ellipse"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:78acab553ca23b1248d98940016f8c518a25d8a76033764fe2eb41ce349ae519" [label="/bin/sh -c yum -y update && yum clean all" shape="box"];
  "sha256:ad51feb984a711ac3dc5e820709ce8c9ffda81eaf9d14272b38ba479ba2f34ce" [label="/bin/sh -c yum -y install pwgen wget logrotate rabbitmq-server && yum clean all" shape="box"];
  "sha256:7c050c49e3b82509555e68007e0f237c4c218850a3c2869342cdfb978b124009" [label="/bin/sh -c /usr/lib/rabbitmq/bin/rabbitmq-plugins enable rabbitmq_management" shape="box"];
  "sha256:9c5b7ac969d0555c8c48948d0804945467e4f79f862b2dde9d9e116183e08b35" [label="copy{src=/run-rabbitmq-server.sh, dest=/run-rabbitmq-server.sh}" shape="note"];
  "sha256:10846ff65bae063c25b9e0a3caa0ca99e2e6c7098f4d75b9ba148d44555a2ef0" [label="/bin/sh -c chmod 750 ./run-rabbitmq-server.sh" shape="box"];
  "sha256:a50b9004f167e5da614e5e12340d803053dbc3b0a5012b9b17a6f21330656777" [label="sha256:a50b9004f167e5da614e5e12340d803053dbc3b0a5012b9b17a6f21330656777" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:78acab553ca23b1248d98940016f8c518a25d8a76033764fe2eb41ce349ae519" [label=""];
  "sha256:78acab553ca23b1248d98940016f8c518a25d8a76033764fe2eb41ce349ae519" -> "sha256:ad51feb984a711ac3dc5e820709ce8c9ffda81eaf9d14272b38ba479ba2f34ce" [label=""];
  "sha256:ad51feb984a711ac3dc5e820709ce8c9ffda81eaf9d14272b38ba479ba2f34ce" -> "sha256:7c050c49e3b82509555e68007e0f237c4c218850a3c2869342cdfb978b124009" [label=""];
  "sha256:7c050c49e3b82509555e68007e0f237c4c218850a3c2869342cdfb978b124009" -> "sha256:9c5b7ac969d0555c8c48948d0804945467e4f79f862b2dde9d9e116183e08b35" [label=""];
  "sha256:76f193efbed970a9125b2204ecc7e3cca6ed16c42c9439b637832bcd0f2cbb5b" -> "sha256:9c5b7ac969d0555c8c48948d0804945467e4f79f862b2dde9d9e116183e08b35" [label=""];
  "sha256:9c5b7ac969d0555c8c48948d0804945467e4f79f862b2dde9d9e116183e08b35" -> "sha256:10846ff65bae063c25b9e0a3caa0ca99e2e6c7098f4d75b9ba148d44555a2ef0" [label=""];
  "sha256:10846ff65bae063c25b9e0a3caa0ca99e2e6c7098f4d75b9ba148d44555a2ef0" -> "sha256:a50b9004f167e5da614e5e12340d803053dbc3b0a5012b9b17a6f21330656777" [label=""];
}

