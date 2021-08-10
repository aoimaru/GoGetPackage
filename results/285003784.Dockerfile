[app/sources/285003784.Dockerfile]
digraph {
  "sha256:de9a5546922230dce32e2703a551465820151355640e4a0d14e66070320a951c" [label="docker-image://docker.io/library/golang:1.9.2" shape="ellipse"];
  "sha256:74673e55de248596c64df5cc6bfcf82c4521e17fb5024b2240dfb2dc885571d5" [label="mkdir{path=/go/src/github.com/kelseyhightower/app}" shape="note"];
  "sha256:093dc7cf39258c5ccfe9a2a210004021a2b80a688169f1ec99ee90f7ef8a6164" [label="local://context" shape="ellipse"];
  "sha256:954adeeb5a3fe26f0b53288b743e1681b8f321a46c153a84efa0c64982254bb3" [label="copy{src=/, dest=/go/src/github.com/kelseyhightower/app/}" shape="note"];
  "sha256:90192870083e8e5a1724ce18f1304d855f695017a05d87d44f8673a38dced763" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux go build ." shape="box"];
  "sha256:2199995cd100d3f5ad6084b4222bb426139d1f64805444ec6160422dde4a7676" [label="copy{src=/go/src/github.com/kelseyhightower/app/app, dest=/}" shape="note"];
  "sha256:fba945165dd67faf406ce8abc1e564b701f4f3a3eb34dde41b88bdd6d664b01c" [label="sha256:fba945165dd67faf406ce8abc1e564b701f4f3a3eb34dde41b88bdd6d664b01c" shape="plaintext"];
  "sha256:de9a5546922230dce32e2703a551465820151355640e4a0d14e66070320a951c" -> "sha256:74673e55de248596c64df5cc6bfcf82c4521e17fb5024b2240dfb2dc885571d5" [label=""];
  "sha256:74673e55de248596c64df5cc6bfcf82c4521e17fb5024b2240dfb2dc885571d5" -> "sha256:954adeeb5a3fe26f0b53288b743e1681b8f321a46c153a84efa0c64982254bb3" [label=""];
  "sha256:093dc7cf39258c5ccfe9a2a210004021a2b80a688169f1ec99ee90f7ef8a6164" -> "sha256:954adeeb5a3fe26f0b53288b743e1681b8f321a46c153a84efa0c64982254bb3" [label=""];
  "sha256:954adeeb5a3fe26f0b53288b743e1681b8f321a46c153a84efa0c64982254bb3" -> "sha256:90192870083e8e5a1724ce18f1304d855f695017a05d87d44f8673a38dced763" [label=""];
  "sha256:90192870083e8e5a1724ce18f1304d855f695017a05d87d44f8673a38dced763" -> "sha256:2199995cd100d3f5ad6084b4222bb426139d1f64805444ec6160422dde4a7676" [label=""];
  "sha256:2199995cd100d3f5ad6084b4222bb426139d1f64805444ec6160422dde4a7676" -> "sha256:fba945165dd67faf406ce8abc1e564b701f4f3a3eb34dde41b88bdd6d664b01c" [label=""];
}

