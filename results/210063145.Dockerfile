[app/sources/210063145.Dockerfile]
digraph {
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" [label="docker-image://docker.io/library/ubuntu:16.04@sha256:6a3ac136b6ca623d6a6fa20a7622f098b2fae1ac05f0114386ef439d8ca89a4a" shape="ellipse"];
  "sha256:1cb0e2119a802607e01ddb90de30f5f9c8258028210dc9d23c52bf8da0fdeaf0" [label="/bin/sh -c apt-get update -y  &&  apt-get install libxen-dev curl git build-essential -y &&  apt-get clean -y &&  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:f5f69abf2da09dfc0f395be5030f152d91c508ebb655cd10738b5ae69c7b9c8f" [label="/bin/sh -c cd /opt &&     git clone https://github.com/rumpkernel/rumprun" shape="box"];
  "sha256:26a92781ab8d9f4f154014d3b50a2f2ab8066e553f41c3d2b30548af90cbff3d" [label="/bin/sh -c cd /opt/rumprun && git checkout 16a7c6eb44523c60ea714a0ec2c7ea6ab3c8fb02" shape="box"];
  "sha256:43876f302657b392ab9380924ea70947a8d574fff85fa0c06c6b10b51761cd8e" [label="/bin/sh -c cd /opt/rumprun && git submodule update --init" shape="box"];
  "sha256:419d22a51a5eb3d0b034a5007b2b1aca031604920896eddc45c2eacd46c070ce" [label="mkdir{path=/opt/code}" shape="note"];
  "sha256:f8c0bacb90945ca18441580166304517bb290d6e909f658877c80e2c8a0bfdff" [label="sha256:f8c0bacb90945ca18441580166304517bb290d6e909f658877c80e2c8a0bfdff" shape="plaintext"];
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" -> "sha256:1cb0e2119a802607e01ddb90de30f5f9c8258028210dc9d23c52bf8da0fdeaf0" [label=""];
  "sha256:1cb0e2119a802607e01ddb90de30f5f9c8258028210dc9d23c52bf8da0fdeaf0" -> "sha256:f5f69abf2da09dfc0f395be5030f152d91c508ebb655cd10738b5ae69c7b9c8f" [label=""];
  "sha256:f5f69abf2da09dfc0f395be5030f152d91c508ebb655cd10738b5ae69c7b9c8f" -> "sha256:26a92781ab8d9f4f154014d3b50a2f2ab8066e553f41c3d2b30548af90cbff3d" [label=""];
  "sha256:26a92781ab8d9f4f154014d3b50a2f2ab8066e553f41c3d2b30548af90cbff3d" -> "sha256:43876f302657b392ab9380924ea70947a8d574fff85fa0c06c6b10b51761cd8e" [label=""];
  "sha256:43876f302657b392ab9380924ea70947a8d574fff85fa0c06c6b10b51761cd8e" -> "sha256:419d22a51a5eb3d0b034a5007b2b1aca031604920896eddc45c2eacd46c070ce" [label=""];
  "sha256:419d22a51a5eb3d0b034a5007b2b1aca031604920896eddc45c2eacd46c070ce" -> "sha256:f8c0bacb90945ca18441580166304517bb290d6e909f658877c80e2c8a0bfdff" [label=""];
}

