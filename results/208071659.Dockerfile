[app/sources/208071659.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:5efc39dda20d088b93c6e1d622edb0f21a6a6db915bb668bb8311ac28033ec5a" [label="docker-image://docker.io/library/golang:1.11-alpine3.8" shape="ellipse"];
  "sha256:e2a55300639b5213527bcf1a28d8d948c44c337d84668d5db094c641dd28c3be" [label="/bin/sh -c set -ex \t&& apk add --no-cache --virtual .build-deps     bash     git      make \t\t&& rm -rf /*.patch" shape="box"];
  "sha256:1310929cd7a7a4bb85ba91606937c9ac88547fd50b7cc149fb6de18a76099ff2" [label="local://context" shape="ellipse"];
  "sha256:9f7477eb961b0e80a0201d5b195ed6c531bfc1f62d7f727ebd85c09c3239208e" [label="copy{src=/, dest=/go/src/github.com/lastbackend/lastbackend}" shape="note"];
  "sha256:b29be99da304a6fcccd331136bbf2b35bb1e2342a77237269db2b5e3620e20ac" [label="mkdir{path=/go/src/github.com/lastbackend/lastbackend/cmd/plugins/docker}" shape="note"];
  "sha256:baa5f337970d43c4bb27e44e352afcd7b355bac25374ca0ac6aba1e8b67bfab5" [label="/bin/sh -c go build --ldflags '-extldflags \"-static\"' -o /usr/bin/lastbackend" shape="box"];
  "sha256:fdfb0f040084a8c6cc0cacc697e4728c99dbc0b7dc83d36f56c915aea682d2de" [label="mkdir{path=/go/bin}" shape="note"];
  "sha256:462c8d7849736cd5ecdcf615fd1b719e6342913d4116f905394a15f01764b5e9" [label="/bin/sh -c rm -rf /go/pkg     && rm -rf /go/src     && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:33cdad504062b3581ea1034f28b3a2735bd003f5087345690ff90f8d606a667a" [label="copy{src=/usr/bin/lastbackend, dest=/usr/bin/lastbackend}" shape="note"];
  "sha256:00c310cb22b669edadcc45abb0888bd99ce2bcc7e4c0ec7c990ea01cfeca6e34" [label="sha256:00c310cb22b669edadcc45abb0888bd99ce2bcc7e4c0ec7c990ea01cfeca6e34" shape="plaintext"];
  "sha256:5efc39dda20d088b93c6e1d622edb0f21a6a6db915bb668bb8311ac28033ec5a" -> "sha256:e2a55300639b5213527bcf1a28d8d948c44c337d84668d5db094c641dd28c3be" [label=""];
  "sha256:e2a55300639b5213527bcf1a28d8d948c44c337d84668d5db094c641dd28c3be" -> "sha256:9f7477eb961b0e80a0201d5b195ed6c531bfc1f62d7f727ebd85c09c3239208e" [label=""];
  "sha256:1310929cd7a7a4bb85ba91606937c9ac88547fd50b7cc149fb6de18a76099ff2" -> "sha256:9f7477eb961b0e80a0201d5b195ed6c531bfc1f62d7f727ebd85c09c3239208e" [label=""];
  "sha256:9f7477eb961b0e80a0201d5b195ed6c531bfc1f62d7f727ebd85c09c3239208e" -> "sha256:b29be99da304a6fcccd331136bbf2b35bb1e2342a77237269db2b5e3620e20ac" [label=""];
  "sha256:b29be99da304a6fcccd331136bbf2b35bb1e2342a77237269db2b5e3620e20ac" -> "sha256:baa5f337970d43c4bb27e44e352afcd7b355bac25374ca0ac6aba1e8b67bfab5" [label=""];
  "sha256:baa5f337970d43c4bb27e44e352afcd7b355bac25374ca0ac6aba1e8b67bfab5" -> "sha256:fdfb0f040084a8c6cc0cacc697e4728c99dbc0b7dc83d36f56c915aea682d2de" [label=""];
  "sha256:fdfb0f040084a8c6cc0cacc697e4728c99dbc0b7dc83d36f56c915aea682d2de" -> "sha256:462c8d7849736cd5ecdcf615fd1b719e6342913d4116f905394a15f01764b5e9" [label=""];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:33cdad504062b3581ea1034f28b3a2735bd003f5087345690ff90f8d606a667a" [label=""];
  "sha256:462c8d7849736cd5ecdcf615fd1b719e6342913d4116f905394a15f01764b5e9" -> "sha256:33cdad504062b3581ea1034f28b3a2735bd003f5087345690ff90f8d606a667a" [label=""];
  "sha256:33cdad504062b3581ea1034f28b3a2735bd003f5087345690ff90f8d606a667a" -> "sha256:00c310cb22b669edadcc45abb0888bd99ce2bcc7e4c0ec7c990ea01cfeca6e34" [label=""];
}

