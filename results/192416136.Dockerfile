[app/sources/192416136.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:fda0b7571dfd0b0df23fd1eef663880305a1776b37b7bbd1a5b156bcc637aac2" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends build-essential libffi-dev     libssl-dev python-dev python-minimal python-pip python-setuptools     python-virtualenv &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:798f0bd5a9562ce367672d74d078316455528906afec455c1dac75dde3a51fd9" [label="/bin/sh -c pip install --upgrade pip setuptools &&     pip install enum34 ipaddress wheel &&     pip install ansible ansible-lint" shape="box"];
  "sha256:fa59d369b3f6fd90370ea5a4333bb155995a239f2a789bbfd958b2ea73e01a46" [label="local://context" shape="ellipse"];
  "sha256:4cfa4a392870ac917d9ef2a9fe3de7906d32ae8ed7895d15e39f045aef6889a0" [label="copy{src=/.ansible-lint, dest=/}" shape="note"];
  "sha256:518673bb79bf2ad76ac13efe624df78cf25623ccf991a292c4325f1547feff2d" [label="sha256:518673bb79bf2ad76ac13efe624df78cf25623ccf991a292c4325f1547feff2d" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:fda0b7571dfd0b0df23fd1eef663880305a1776b37b7bbd1a5b156bcc637aac2" [label=""];
  "sha256:fda0b7571dfd0b0df23fd1eef663880305a1776b37b7bbd1a5b156bcc637aac2" -> "sha256:798f0bd5a9562ce367672d74d078316455528906afec455c1dac75dde3a51fd9" [label=""];
  "sha256:798f0bd5a9562ce367672d74d078316455528906afec455c1dac75dde3a51fd9" -> "sha256:4cfa4a392870ac917d9ef2a9fe3de7906d32ae8ed7895d15e39f045aef6889a0" [label=""];
  "sha256:fa59d369b3f6fd90370ea5a4333bb155995a239f2a789bbfd958b2ea73e01a46" -> "sha256:4cfa4a392870ac917d9ef2a9fe3de7906d32ae8ed7895d15e39f045aef6889a0" [label=""];
  "sha256:4cfa4a392870ac917d9ef2a9fe3de7906d32ae8ed7895d15e39f045aef6889a0" -> "sha256:518673bb79bf2ad76ac13efe624df78cf25623ccf991a292c4325f1547feff2d" [label=""];
}

