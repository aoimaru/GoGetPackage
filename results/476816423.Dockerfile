[app/sources/476816423.Dockerfile]
digraph {
  "sha256:cd76ec759af16361299de7866461649d314c7e40b90bfb5972d067bb290fce72" [label="docker-image://docker.io/library/debian:testing" shape="ellipse"];
  "sha256:2bca298cf097641566d96cf0e44bb76344b1403075d1aaa7ba790b4c722d9afb" [label="/bin/sh -c apt-get update &&   apt-get install -y --no-install-recommends less debian-keyring     debian-archive-keyring ca-certificates nodejs nodejs-legacy npm     build-essential git" shape="box"];
  "sha256:69307ea4c6ac37ff2f84ec4e9f37466ccae1e370a70e452b38f3100e54f1806a" [label="/bin/sh -c git clone --depth=1 https://github.com/LaserWeb/LaserWeb3.git" shape="box"];
  "sha256:de7867628a8623a78c780f3f0371aaa39b35046a357ee8fa2af2ff6894b95017" [label="/bin/sh -c cd LaserWeb3 && npm install" shape="box"];
  "sha256:fba40e42b5d90985044daea0596bcbf534c610949bfb5a9855bad22d1b102323" [label="mkdir{path=/LaserWeb3}" shape="note"];
  "sha256:f9a5c1b33160a6d75759e0361329bb275183f6cbdc92cf359ad7efc51a59735c" [label="sha256:f9a5c1b33160a6d75759e0361329bb275183f6cbdc92cf359ad7efc51a59735c" shape="plaintext"];
  "sha256:cd76ec759af16361299de7866461649d314c7e40b90bfb5972d067bb290fce72" -> "sha256:2bca298cf097641566d96cf0e44bb76344b1403075d1aaa7ba790b4c722d9afb" [label=""];
  "sha256:2bca298cf097641566d96cf0e44bb76344b1403075d1aaa7ba790b4c722d9afb" -> "sha256:69307ea4c6ac37ff2f84ec4e9f37466ccae1e370a70e452b38f3100e54f1806a" [label=""];
  "sha256:69307ea4c6ac37ff2f84ec4e9f37466ccae1e370a70e452b38f3100e54f1806a" -> "sha256:de7867628a8623a78c780f3f0371aaa39b35046a357ee8fa2af2ff6894b95017" [label=""];
  "sha256:de7867628a8623a78c780f3f0371aaa39b35046a357ee8fa2af2ff6894b95017" -> "sha256:fba40e42b5d90985044daea0596bcbf534c610949bfb5a9855bad22d1b102323" [label=""];
  "sha256:fba40e42b5d90985044daea0596bcbf534c610949bfb5a9855bad22d1b102323" -> "sha256:f9a5c1b33160a6d75759e0361329bb275183f6cbdc92cf359ad7efc51a59735c" [label=""];
}

