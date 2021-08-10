[app/sources/459834296.Dockerfile]
digraph {
  "sha256:17ee79e4093a406984f49ed3810028c03f6bc1ec8f375a15ee99696b42445dfb" [label="docker-image://docker.io/library/ubuntu:14.04.1" shape="ellipse"];
  "sha256:206d205be464539072fea1e71a30a97334d9dafa7d299382c2033bd2cec2a210" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:c3ee916cd28cd6168a0b6a910811ec32e7172100c7490718c2722347c7d490c6" [label="/bin/sh -c apt-get install --assume-yes apt-transport-https curl" shape="box"];
  "sha256:1c1145971c81d71c32e27a4a8b257876a058696237da608a300343b1609e1e11" [label="/bin/sh -c curl https://repo.varnish-cache.org/ubuntu/GPG-key.txt | apt-key add -" shape="box"];
  "sha256:02c553409cf4955b66b33702331bab1f71867d81e543338d6f55c62fb7e08e44" [label="/bin/sh -c echo \"deb https://repo.varnish-cache.org/ubuntu/ trusty varnish-4.0\" >> /etc/apt/sources.list.d/varnish-cache.list" shape="box"];
  "sha256:1a2573d9425fd327bc055298cf7e4cb447958a9afc5fc3ea713a606b4b38ffff" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:6f6ec862c9c9e4d3aca8a72ed49b3bcfae0c689557d8873d281dda27cbb93d85" [label="/bin/sh -c apt-get install --assume-yes varnish=4.0.2-1~trusty" shape="box"];
  "sha256:fa572e859907381db2f161afad7c94d47c216a37c908116597e60c3d7239205b" [label="local://context" shape="ellipse"];
  "sha256:2430022ba323c9cfb3442eb5ad2985637b042e164b74172a88b0114304e5cac8" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:24de97bb4b240a16703439acd71568f7819e40960d992b3519d50e67f28d4a7a" [label="sha256:24de97bb4b240a16703439acd71568f7819e40960d992b3519d50e67f28d4a7a" shape="plaintext"];
  "sha256:17ee79e4093a406984f49ed3810028c03f6bc1ec8f375a15ee99696b42445dfb" -> "sha256:206d205be464539072fea1e71a30a97334d9dafa7d299382c2033bd2cec2a210" [label=""];
  "sha256:206d205be464539072fea1e71a30a97334d9dafa7d299382c2033bd2cec2a210" -> "sha256:c3ee916cd28cd6168a0b6a910811ec32e7172100c7490718c2722347c7d490c6" [label=""];
  "sha256:c3ee916cd28cd6168a0b6a910811ec32e7172100c7490718c2722347c7d490c6" -> "sha256:1c1145971c81d71c32e27a4a8b257876a058696237da608a300343b1609e1e11" [label=""];
  "sha256:1c1145971c81d71c32e27a4a8b257876a058696237da608a300343b1609e1e11" -> "sha256:02c553409cf4955b66b33702331bab1f71867d81e543338d6f55c62fb7e08e44" [label=""];
  "sha256:02c553409cf4955b66b33702331bab1f71867d81e543338d6f55c62fb7e08e44" -> "sha256:1a2573d9425fd327bc055298cf7e4cb447958a9afc5fc3ea713a606b4b38ffff" [label=""];
  "sha256:1a2573d9425fd327bc055298cf7e4cb447958a9afc5fc3ea713a606b4b38ffff" -> "sha256:6f6ec862c9c9e4d3aca8a72ed49b3bcfae0c689557d8873d281dda27cbb93d85" [label=""];
  "sha256:6f6ec862c9c9e4d3aca8a72ed49b3bcfae0c689557d8873d281dda27cbb93d85" -> "sha256:2430022ba323c9cfb3442eb5ad2985637b042e164b74172a88b0114304e5cac8" [label=""];
  "sha256:fa572e859907381db2f161afad7c94d47c216a37c908116597e60c3d7239205b" -> "sha256:2430022ba323c9cfb3442eb5ad2985637b042e164b74172a88b0114304e5cac8" [label=""];
  "sha256:2430022ba323c9cfb3442eb5ad2985637b042e164b74172a88b0114304e5cac8" -> "sha256:24de97bb4b240a16703439acd71568f7819e40960d992b3519d50e67f28d4a7a" [label=""];
}

