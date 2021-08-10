[app/sources/333697235.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:70713926bfc16010a91eb048bb70c2320ac4029fcd63a8acd6f09b682d7148ec" [label="/bin/sh -c mkdir -p /go/src   && mkdir -p /go/bin   && mkdir -p /go/pkg" shape="box"];
  "sha256:fe75d7dc52ffbd64e7a005ec149204c4258cfc132e2960e3c89999ef1db606de" [label="/bin/sh -c mkdir -p $GOPATH/src/app" shape="box"];
  "sha256:53429979d9601632e2df7b01c62215f2d987a31c6c285925360ff152a5832430" [label="local://context" shape="ellipse"];
  "sha256:afea1f558ecea200bb29199b10419615d30d03f67710d24fe66cbcf705a579cc" [label="copy{src=/, dest=/go/src/app}" shape="note"];
  "sha256:3e61da5c134b4f212d2972f0332f7ebc2ca1ad462d5bc72872000651ab67b632" [label="mkdir{path=/go/src/app}" shape="note"];
  "sha256:814ecde09488cbc7859fd7bbfe42c40273a661630b487c69dbf59d7e7154e492" [label="/bin/sh -c go build -o main ." shape="box"];
  "sha256:76f7a54552ef07d8a737972bc87f79d525deeaf16137386da2f40c0e76044d37" [label="sha256:76f7a54552ef07d8a737972bc87f79d525deeaf16137386da2f40c0e76044d37" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:70713926bfc16010a91eb048bb70c2320ac4029fcd63a8acd6f09b682d7148ec" [label=""];
  "sha256:70713926bfc16010a91eb048bb70c2320ac4029fcd63a8acd6f09b682d7148ec" -> "sha256:fe75d7dc52ffbd64e7a005ec149204c4258cfc132e2960e3c89999ef1db606de" [label=""];
  "sha256:fe75d7dc52ffbd64e7a005ec149204c4258cfc132e2960e3c89999ef1db606de" -> "sha256:afea1f558ecea200bb29199b10419615d30d03f67710d24fe66cbcf705a579cc" [label=""];
  "sha256:53429979d9601632e2df7b01c62215f2d987a31c6c285925360ff152a5832430" -> "sha256:afea1f558ecea200bb29199b10419615d30d03f67710d24fe66cbcf705a579cc" [label=""];
  "sha256:afea1f558ecea200bb29199b10419615d30d03f67710d24fe66cbcf705a579cc" -> "sha256:3e61da5c134b4f212d2972f0332f7ebc2ca1ad462d5bc72872000651ab67b632" [label=""];
  "sha256:3e61da5c134b4f212d2972f0332f7ebc2ca1ad462d5bc72872000651ab67b632" -> "sha256:814ecde09488cbc7859fd7bbfe42c40273a661630b487c69dbf59d7e7154e492" [label=""];
  "sha256:814ecde09488cbc7859fd7bbfe42c40273a661630b487c69dbf59d7e7154e492" -> "sha256:76f7a54552ef07d8a737972bc87f79d525deeaf16137386da2f40c0e76044d37" [label=""];
}

