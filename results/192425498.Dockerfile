[app/sources/192425498.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:fda0b7571dfd0b0df23fd1eef663880305a1776b37b7bbd1a5b156bcc637aac2" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends build-essential libffi-dev     libssl-dev python-dev python-minimal python-pip python-setuptools     python-virtualenv &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:798f0bd5a9562ce367672d74d078316455528906afec455c1dac75dde3a51fd9" [label="/bin/sh -c pip install --upgrade pip setuptools &&     pip install enum34 ipaddress wheel &&     pip install ansible ansible-lint" shape="box"];
  "sha256:4cc2ee8153fcd1359ae9b29f80fa39bad3f320e96feaf05f3746d7bc87781938" [label="local://context" shape="ellipse"];
  "sha256:f1c3faf92383960b11ac247b7b6b2c8dbb5c068edd0c3e68634ff776372e115e" [label="copy{src=/.ansible-lint, dest=/}" shape="note"];
  "sha256:c402a6867051e65f28810c66700ee8224bcc495f7fd36c91fa350b668b73e13f" [label="sha256:c402a6867051e65f28810c66700ee8224bcc495f7fd36c91fa350b668b73e13f" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:fda0b7571dfd0b0df23fd1eef663880305a1776b37b7bbd1a5b156bcc637aac2" [label=""];
  "sha256:fda0b7571dfd0b0df23fd1eef663880305a1776b37b7bbd1a5b156bcc637aac2" -> "sha256:798f0bd5a9562ce367672d74d078316455528906afec455c1dac75dde3a51fd9" [label=""];
  "sha256:798f0bd5a9562ce367672d74d078316455528906afec455c1dac75dde3a51fd9" -> "sha256:f1c3faf92383960b11ac247b7b6b2c8dbb5c068edd0c3e68634ff776372e115e" [label=""];
  "sha256:4cc2ee8153fcd1359ae9b29f80fa39bad3f320e96feaf05f3746d7bc87781938" -> "sha256:f1c3faf92383960b11ac247b7b6b2c8dbb5c068edd0c3e68634ff776372e115e" [label=""];
  "sha256:f1c3faf92383960b11ac247b7b6b2c8dbb5c068edd0c3e68634ff776372e115e" -> "sha256:c402a6867051e65f28810c66700ee8224bcc495f7fd36c91fa350b668b73e13f" [label=""];
}

