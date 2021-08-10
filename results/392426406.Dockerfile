[app/sources/392426406.Dockerfile]
digraph {
  "sha256:8938718d639633128dcc0a3e02dc6e02fbf0dcdab35d69e19fc3b5940f1c40c7" [label="docker-image://docker.io/library/golang:1.11.5" shape="ellipse"];
  "sha256:af1f54fa978a9452b7dd15b0207ea90eff6451c59f6b02ee4bd04fcefcaccd60" [label="mkdir{path=/go/src/app}" shape="note"];
  "sha256:bc42ea914019777ccace9151c1d7956ae19fae1de61c49c466a094f88241a522" [label="local://context" shape="ellipse"];
  "sha256:ff6fda91dee3f0f409bfae15de497f3c81ea803c0ab68dba7c81897c8b510ede" [label="copy{src=/main.go, dest=/go/src/app/},copy{src=/go.mod, dest=/go/src/app/}" shape="note"];
  "sha256:995773df68e401330726ee9448095dd280997ae1eec80ca4db71a0c9e18da5c7" [label="/bin/sh -c go build ." shape="box"];
  "sha256:873d97cc187abe974162e64bd779647261c0a3e785fb67693242a7e77430a72e" [label="sha256:873d97cc187abe974162e64bd779647261c0a3e785fb67693242a7e77430a72e" shape="plaintext"];
  "sha256:8938718d639633128dcc0a3e02dc6e02fbf0dcdab35d69e19fc3b5940f1c40c7" -> "sha256:af1f54fa978a9452b7dd15b0207ea90eff6451c59f6b02ee4bd04fcefcaccd60" [label=""];
  "sha256:af1f54fa978a9452b7dd15b0207ea90eff6451c59f6b02ee4bd04fcefcaccd60" -> "sha256:ff6fda91dee3f0f409bfae15de497f3c81ea803c0ab68dba7c81897c8b510ede" [label=""];
  "sha256:bc42ea914019777ccace9151c1d7956ae19fae1de61c49c466a094f88241a522" -> "sha256:ff6fda91dee3f0f409bfae15de497f3c81ea803c0ab68dba7c81897c8b510ede" [label=""];
  "sha256:ff6fda91dee3f0f409bfae15de497f3c81ea803c0ab68dba7c81897c8b510ede" -> "sha256:995773df68e401330726ee9448095dd280997ae1eec80ca4db71a0c9e18da5c7" [label=""];
  "sha256:995773df68e401330726ee9448095dd280997ae1eec80ca4db71a0c9e18da5c7" -> "sha256:873d97cc187abe974162e64bd779647261c0a3e785fb67693242a7e77430a72e" [label=""];
}

