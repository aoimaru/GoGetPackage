[app/sources/302813793.Dockerfile]
digraph {
  "sha256:4717eb240fd757944b48f36740d44b96bd2a8a81ca250e6bcf631f8700988a83" [label="docker-image://docker.io/library/fedora:28" shape="ellipse"];
  "sha256:50379abab9291fc8235319552bb720de93bb467102a2463e7df3cb1a04304075" [label="/bin/sh -c yum install -y bzip2 qemu-img && dnf clean all && mkdir -p /disk" shape="box"];
  "sha256:91771803d34af4b92b60de0efc79be0da69de661a63efb193988484ad8240820" [label="local://context" shape="ellipse"];
  "sha256:c2ada7bfd4565d110062011bdfaff6217fbf85a9751d9f45d02e2c866e76103a" [label="copy{src=/entry-point.sh, dest=/}" shape="note"];
  "sha256:adcc5d573cecb34f9102439eda2f3a809dd6d2797567e07c2fb43dcd71803891" [label="sha256:adcc5d573cecb34f9102439eda2f3a809dd6d2797567e07c2fb43dcd71803891" shape="plaintext"];
  "sha256:4717eb240fd757944b48f36740d44b96bd2a8a81ca250e6bcf631f8700988a83" -> "sha256:50379abab9291fc8235319552bb720de93bb467102a2463e7df3cb1a04304075" [label=""];
  "sha256:50379abab9291fc8235319552bb720de93bb467102a2463e7df3cb1a04304075" -> "sha256:c2ada7bfd4565d110062011bdfaff6217fbf85a9751d9f45d02e2c866e76103a" [label=""];
  "sha256:91771803d34af4b92b60de0efc79be0da69de661a63efb193988484ad8240820" -> "sha256:c2ada7bfd4565d110062011bdfaff6217fbf85a9751d9f45d02e2c866e76103a" [label=""];
  "sha256:c2ada7bfd4565d110062011bdfaff6217fbf85a9751d9f45d02e2c866e76103a" -> "sha256:adcc5d573cecb34f9102439eda2f3a809dd6d2797567e07c2fb43dcd71803891" [label=""];
}

