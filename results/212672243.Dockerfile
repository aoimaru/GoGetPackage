[app/sources/212672243.Dockerfile]
digraph {
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" [label="docker-image://docker.io/library/ubuntu:16.04@sha256:6a3ac136b6ca623d6a6fa20a7622f098b2fae1ac05f0114386ef439d8ca89a4a" shape="ellipse"];
  "sha256:9f215957b6cf16486c2253e9719a33838ab03a2926bb8607607720b69f357da8" [label="/bin/sh -c apt-get update && apt-get install -y     locales     openssh-server     sudo" shape="box"];
  "sha256:25ebf12eb1cacaea191a4e2ceaa20effe54fd11ba4ad30cdfc21f04984141677" [label="/bin/sh -c locale-gen en_US.UTF-8" shape="box"];
  "sha256:5cb33ba048c61261a55a44551a85b9594ffb3edada46ca9289053f0fa04959d1" [label="/bin/sh -c if ! getent passwd vagrant; then useradd -d /home/vagrant -m -s /bin/bash vagrant; fi     && echo 'vagrant ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers     && mkdir -p /etc/sudoers.d     && echo 'vagrant ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers.d/vagrant     && chmod 0440 /etc/sudoers.d/vagrant" shape="box"];
  "sha256:b0195f41971c1f23179480818d7f1c7aab1391ef89f21a64585d8c191b940528" [label="/bin/sh -c mkdir -p /home/vagrant/.ssh     && chmod 0700 /home/vagrant/.ssh     && wget --no-check-certificate       https://raw.github.com/hashicorp/vagrant/master/keys/vagrant.pub       -O /home/vagrant/.ssh/authorized_keys     && chmod 0600 /home/vagrant/.ssh/authorized_keys     && chown -R vagrant /home/vagrant/.ssh" shape="box"];
  "sha256:de4e753f227e29732cea7fd63fbd09e28a80da18491301c758b4ae88cb6946e2" [label="/bin/sh -c mkdir -p /run/sshd" shape="box"];
  "sha256:c533b0f674c8d054acb6ac696e5defe5990614d16f6792a9f82a50564880e869" [label="sha256:c533b0f674c8d054acb6ac696e5defe5990614d16f6792a9f82a50564880e869" shape="plaintext"];
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" -> "sha256:9f215957b6cf16486c2253e9719a33838ab03a2926bb8607607720b69f357da8" [label=""];
  "sha256:9f215957b6cf16486c2253e9719a33838ab03a2926bb8607607720b69f357da8" -> "sha256:25ebf12eb1cacaea191a4e2ceaa20effe54fd11ba4ad30cdfc21f04984141677" [label=""];
  "sha256:25ebf12eb1cacaea191a4e2ceaa20effe54fd11ba4ad30cdfc21f04984141677" -> "sha256:5cb33ba048c61261a55a44551a85b9594ffb3edada46ca9289053f0fa04959d1" [label=""];
  "sha256:5cb33ba048c61261a55a44551a85b9594ffb3edada46ca9289053f0fa04959d1" -> "sha256:b0195f41971c1f23179480818d7f1c7aab1391ef89f21a64585d8c191b940528" [label=""];
  "sha256:b0195f41971c1f23179480818d7f1c7aab1391ef89f21a64585d8c191b940528" -> "sha256:de4e753f227e29732cea7fd63fbd09e28a80da18491301c758b4ae88cb6946e2" [label=""];
  "sha256:de4e753f227e29732cea7fd63fbd09e28a80da18491301c758b4ae88cb6946e2" -> "sha256:c533b0f674c8d054acb6ac696e5defe5990614d16f6792a9f82a50564880e869" [label=""];
}

