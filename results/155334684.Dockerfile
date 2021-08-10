[app/sources/155334684.Dockerfile]
digraph {
  "sha256:8b42c28ec6156b5823bc72abcbc27b8772e417a7261ba8be00093856c67d9a00" [label="docker-image://docker.io/nacyot/ruby-ruby:2.1.2" shape="ellipse"];
  "sha256:cf659fca800286c191925083eb066df61a956a525cad5ad0b0077d783dc3ba47" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:9f1799f37643f398f8fc20945a60fe860909507b1a223a651ffa14a069291fbf" [label="/bin/sh -c apt-get install -y nodejs npm" shape="box"];
  "sha256:d4cd2f61724e76642007ac6f11cf5ed3e5cec4a3e8ca8e984b46c2c2920b4011" [label="/bin/sh -c ln -s /usr/bin/nodejs /usr/bin/node" shape="box"];
  "sha256:7f87e3a701e1335f8ad17d23427b286d5ced7a82e392f88a48f28da536dd0c4e" [label="/bin/sh -c apt-get install -y libssl-dev libfontconfig1-dev" shape="box"];
  "sha256:1e8474fea5409bdf3d143e5f994f875fd529c39db599809362eef15c2052a54d" [label="/bin/sh -c npm install -g phantomjs" shape="box"];
  "sha256:3a054cdbe8e1d692544886d13e8959435cf97203a360e2a4128891879ea0ea95" [label="/bin/sh -c gem install opal" shape="box"];
  "sha256:13f2711d546bcef091561dba67fef9a34f880ec742ad832cfd5e61d58ae7f792" [label="mkdir{path=/source}" shape="note"];
  "sha256:c4684bae546f2e257b3444640021f190ce7886ce84efd916e3b54d111d43522f" [label="sha256:c4684bae546f2e257b3444640021f190ce7886ce84efd916e3b54d111d43522f" shape="plaintext"];
  "sha256:8b42c28ec6156b5823bc72abcbc27b8772e417a7261ba8be00093856c67d9a00" -> "sha256:cf659fca800286c191925083eb066df61a956a525cad5ad0b0077d783dc3ba47" [label=""];
  "sha256:cf659fca800286c191925083eb066df61a956a525cad5ad0b0077d783dc3ba47" -> "sha256:9f1799f37643f398f8fc20945a60fe860909507b1a223a651ffa14a069291fbf" [label=""];
  "sha256:9f1799f37643f398f8fc20945a60fe860909507b1a223a651ffa14a069291fbf" -> "sha256:d4cd2f61724e76642007ac6f11cf5ed3e5cec4a3e8ca8e984b46c2c2920b4011" [label=""];
  "sha256:d4cd2f61724e76642007ac6f11cf5ed3e5cec4a3e8ca8e984b46c2c2920b4011" -> "sha256:7f87e3a701e1335f8ad17d23427b286d5ced7a82e392f88a48f28da536dd0c4e" [label=""];
  "sha256:7f87e3a701e1335f8ad17d23427b286d5ced7a82e392f88a48f28da536dd0c4e" -> "sha256:1e8474fea5409bdf3d143e5f994f875fd529c39db599809362eef15c2052a54d" [label=""];
  "sha256:1e8474fea5409bdf3d143e5f994f875fd529c39db599809362eef15c2052a54d" -> "sha256:3a054cdbe8e1d692544886d13e8959435cf97203a360e2a4128891879ea0ea95" [label=""];
  "sha256:3a054cdbe8e1d692544886d13e8959435cf97203a360e2a4128891879ea0ea95" -> "sha256:13f2711d546bcef091561dba67fef9a34f880ec742ad832cfd5e61d58ae7f792" [label=""];
  "sha256:13f2711d546bcef091561dba67fef9a34f880ec742ad832cfd5e61d58ae7f792" -> "sha256:c4684bae546f2e257b3444640021f190ce7886ce84efd916e3b54d111d43522f" [label=""];
}

