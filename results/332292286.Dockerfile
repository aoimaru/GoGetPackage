[app/sources/332292286.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:bfc433820e98ea487d9a7bc8d91223017644603266708b0932b1228d5c991f8d" [label="/bin/sh -c apt-get update && apt-get install -y wget sudo curl" shape="box"];
  "sha256:71716ecac8097e466a03a93f3f7a0f41e5ed533ed7cd5fd71e5bb2e99ad72e23" [label="/bin/sh -c wget https://github.com/EOSIO/eosio.cdt/releases/download/v1.5.0/eosio.cdt_1.5.0-1_amd64.deb" shape="box"];
  "sha256:929456648aa7dfa8e327c690c140483d8b94370086ac14dd8642364e34f07a50" [label="/bin/sh -c apt-get update && sudo apt install -y ./eosio.cdt_1.5.0-1_amd64.deb" shape="box"];
  "sha256:e1cedb08fd969271f3dc2e02e91474c98945c251d59bf9e9aa06dae7c7b37e44" [label="/bin/sh -c wget https://github.com/EOSIO/eos/releases/download/v1.7.0/eosio_1.7.0-1-ubuntu-18.04_amd64.deb" shape="box"];
  "sha256:c16769f232402c8c3d9f4d09e3c8ab9cff5cef6195b4c6194b23c94323cb8e54" [label="/bin/sh -c apt-get update && sudo apt install -y ./eosio_1.7.0-1-ubuntu-18.04_amd64.deb" shape="box"];
  "sha256:2bd729b45871b98ecf18256d725028e0a087c01004a8fdf3acb2f62dd5f3cd31" [label="sha256:2bd729b45871b98ecf18256d725028e0a087c01004a8fdf3acb2f62dd5f3cd31" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:bfc433820e98ea487d9a7bc8d91223017644603266708b0932b1228d5c991f8d" [label=""];
  "sha256:bfc433820e98ea487d9a7bc8d91223017644603266708b0932b1228d5c991f8d" -> "sha256:71716ecac8097e466a03a93f3f7a0f41e5ed533ed7cd5fd71e5bb2e99ad72e23" [label=""];
  "sha256:71716ecac8097e466a03a93f3f7a0f41e5ed533ed7cd5fd71e5bb2e99ad72e23" -> "sha256:929456648aa7dfa8e327c690c140483d8b94370086ac14dd8642364e34f07a50" [label=""];
  "sha256:929456648aa7dfa8e327c690c140483d8b94370086ac14dd8642364e34f07a50" -> "sha256:e1cedb08fd969271f3dc2e02e91474c98945c251d59bf9e9aa06dae7c7b37e44" [label=""];
  "sha256:e1cedb08fd969271f3dc2e02e91474c98945c251d59bf9e9aa06dae7c7b37e44" -> "sha256:c16769f232402c8c3d9f4d09e3c8ab9cff5cef6195b4c6194b23c94323cb8e54" [label=""];
  "sha256:c16769f232402c8c3d9f4d09e3c8ab9cff5cef6195b4c6194b23c94323cb8e54" -> "sha256:2bd729b45871b98ecf18256d725028e0a087c01004a8fdf3acb2f62dd5f3cd31" [label=""];
}

