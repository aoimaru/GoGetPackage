[app/sources/296453253.Dockerfile]
digraph {
  "sha256:09e1af8b145c34bcb7a41d2d9ef688c8cfc4e0d1b6afdf23712856269464b96a" [label="docker-image://daocloud.io/library/centos:7.2.1511@sha256:4516078f48ca34907ed8f874005473059dc29d46745d139c7cea85e3d474f4fb" shape="ellipse"];
  "sha256:41eeaf2a6e6674f4568dce3c16a7e41fcb8c125e7f57948f0318681e7be0a8ef" [label="/bin/sh -c yum install -y epel-release &&\trpm -ivh https://kojipkgs.fedoraproject.org/packages/http-parser/2.7.1/3.el7/x86_64/http-parser-2.7.1-3.el7.x86_64.rpm &&\tyum -y install nodejs openssl &&\tnpm set registry https://registry.npm.taobao.org &&\tnpm set disturl https://npm.taobao.org/dist &&\tnpm cache clean &&\tyum clean all" shape="box"];
  "sha256:b1e8234e316d89765ff4b150d28ac285c5e9f6291f9c9f8bdf221e8eaaf77694" [label="/bin/sh -c npm install -g ganache-cli" shape="box"];
  "sha256:2e7c9631de612bb6fc87dab48c009625ea1d6ee3620d1eb13bfde4994815b586" [label="local://context" shape="ellipse"];
  "sha256:781e5f424872aa57ae3a03fecb9e678d7245298315e582f946abe3f3e6bb67bc" [label="copy{src=/docker-entrypoint.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:9e1870a0cfa36a12c5017efe1365d067410f200a1364fdcf74a0e7ddd1090dc5" [label="sha256:9e1870a0cfa36a12c5017efe1365d067410f200a1364fdcf74a0e7ddd1090dc5" shape="plaintext"];
  "sha256:09e1af8b145c34bcb7a41d2d9ef688c8cfc4e0d1b6afdf23712856269464b96a" -> "sha256:41eeaf2a6e6674f4568dce3c16a7e41fcb8c125e7f57948f0318681e7be0a8ef" [label=""];
  "sha256:41eeaf2a6e6674f4568dce3c16a7e41fcb8c125e7f57948f0318681e7be0a8ef" -> "sha256:b1e8234e316d89765ff4b150d28ac285c5e9f6291f9c9f8bdf221e8eaaf77694" [label=""];
  "sha256:b1e8234e316d89765ff4b150d28ac285c5e9f6291f9c9f8bdf221e8eaaf77694" -> "sha256:781e5f424872aa57ae3a03fecb9e678d7245298315e582f946abe3f3e6bb67bc" [label=""];
  "sha256:2e7c9631de612bb6fc87dab48c009625ea1d6ee3620d1eb13bfde4994815b586" -> "sha256:781e5f424872aa57ae3a03fecb9e678d7245298315e582f946abe3f3e6bb67bc" [label=""];
  "sha256:781e5f424872aa57ae3a03fecb9e678d7245298315e582f946abe3f3e6bb67bc" -> "sha256:9e1870a0cfa36a12c5017efe1365d067410f200a1364fdcf74a0e7ddd1090dc5" [label=""];
}

