[app/sources/268113504.Dockerfile]
digraph {
  "sha256:e3eac61b1ae53453dafd5610079251769593ff5f99ac9b461c40fc85a66c8a1d" [label="local://context" shape="ellipse"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:879111b71b98097e84bcadd1c07625df3f57ba7246bfa8c21f98abf04cda9953" [label="/bin/sh -c apt-get update -y && apt-get install -y         git         wget         unzip         python3.5         python3-pip         python-setuptools         python3-venv         ruby         ruby-dev         rubygems         gcc         make" shape="box"];
  "sha256:57831bfadd11a68c3ae546a7cac3dd0afb5962099fc5cbb986dc25420e2af1d4" [label="/bin/sh -c gem install --no-ri --no-rdoc rake fpm" shape="box"];
  "sha256:5193991c32cf8abc87596af4dff8a2895bad8cf5302a4283fb7e9ba9fcd8cd54" [label="mkdir{path=/root}" shape="note"];
  "sha256:721256cbb68686bc256d0ffb829640dd7dac5c9c4e025e63a4869de230db2698" [label="copy{src=/, dest=/root}" shape="note"];
  "sha256:fb036e76979ddd0e7ed657b2d6d209300ddf8dc0916bf588bc4f5c352032c43c" [label="sha256:fb036e76979ddd0e7ed657b2d6d209300ddf8dc0916bf588bc4f5c352032c43c" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:879111b71b98097e84bcadd1c07625df3f57ba7246bfa8c21f98abf04cda9953" [label=""];
  "sha256:879111b71b98097e84bcadd1c07625df3f57ba7246bfa8c21f98abf04cda9953" -> "sha256:57831bfadd11a68c3ae546a7cac3dd0afb5962099fc5cbb986dc25420e2af1d4" [label=""];
  "sha256:57831bfadd11a68c3ae546a7cac3dd0afb5962099fc5cbb986dc25420e2af1d4" -> "sha256:5193991c32cf8abc87596af4dff8a2895bad8cf5302a4283fb7e9ba9fcd8cd54" [label=""];
  "sha256:5193991c32cf8abc87596af4dff8a2895bad8cf5302a4283fb7e9ba9fcd8cd54" -> "sha256:721256cbb68686bc256d0ffb829640dd7dac5c9c4e025e63a4869de230db2698" [label=""];
  "sha256:e3eac61b1ae53453dafd5610079251769593ff5f99ac9b461c40fc85a66c8a1d" -> "sha256:721256cbb68686bc256d0ffb829640dd7dac5c9c4e025e63a4869de230db2698" [label=""];
  "sha256:721256cbb68686bc256d0ffb829640dd7dac5c9c4e025e63a4869de230db2698" -> "sha256:fb036e76979ddd0e7ed657b2d6d209300ddf8dc0916bf588bc4f5c352032c43c" [label=""];
}

