[app/sources/169179875.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:e1ce4191e9e3074856f75f04335ade9cc50138197102d2481660b108695c2ce9" [label="/bin/sh -c apt-get update &&   apt-get install --assume-yes --no-install-recommends     apt-transport-https     ca-certificates     curl" shape="box"];
  "sha256:1df6fe775f95c73a221e8df07e3448b22df09f16143b2399cda737296dfc5797" [label="/bin/sh -c printf 'deb https://packagecloud.io/varnishcache/varnish5/ubuntu/ trusty main\\n' >/etc/apt/sources.list.d/varnish.list &&   curl -L https://packagecloud.io/varnishcache/varnish5/gpgkey | apt-key add - &&   apt-get update &&   apt-get install --assume-yes --no-install-recommends     varnish=5.2.1-*" shape="box"];
  "sha256:e4a035f8f9904b861fee9a9d7113ed6a158a8e24e0646611fea3cb21ab4ec5b8" [label="local://context" shape="ellipse"];
  "sha256:8bfff2c8bc3f701efe9d20a64a00c53971b0738bcbe37b93fa05658eac94d1c2" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:49d399cb81a77e405239200b748badecb0e26e576e3c2ce84eb10529be52cd24" [label="sha256:49d399cb81a77e405239200b748badecb0e26e576e3c2ce84eb10529be52cd24" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:e1ce4191e9e3074856f75f04335ade9cc50138197102d2481660b108695c2ce9" [label=""];
  "sha256:e1ce4191e9e3074856f75f04335ade9cc50138197102d2481660b108695c2ce9" -> "sha256:1df6fe775f95c73a221e8df07e3448b22df09f16143b2399cda737296dfc5797" [label=""];
  "sha256:1df6fe775f95c73a221e8df07e3448b22df09f16143b2399cda737296dfc5797" -> "sha256:8bfff2c8bc3f701efe9d20a64a00c53971b0738bcbe37b93fa05658eac94d1c2" [label=""];
  "sha256:e4a035f8f9904b861fee9a9d7113ed6a158a8e24e0646611fea3cb21ab4ec5b8" -> "sha256:8bfff2c8bc3f701efe9d20a64a00c53971b0738bcbe37b93fa05658eac94d1c2" [label=""];
  "sha256:8bfff2c8bc3f701efe9d20a64a00c53971b0738bcbe37b93fa05658eac94d1c2" -> "sha256:49d399cb81a77e405239200b748badecb0e26e576e3c2ce84eb10529be52cd24" [label=""];
}

