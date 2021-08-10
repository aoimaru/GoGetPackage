[app/sources/200073932.Dockerfile]
digraph {
  "sha256:18b7c2cc53865e472a3d0b145f5c6feafbadb82e512d763613c0a3693804a8a4" [label="docker-image://docker.io/library/alpine:3.5@sha256:66952b313e51c3bd1987d7c4ddf5dba9bc0fb6e524eed2448fa660246b3e76ec" shape="ellipse"];
  "sha256:38bc0cb71ac255ff32bd3aca96de136c83d4147becfabd0fd12de91323a5d3c1" [label="/bin/sh -c addgroup tmuser &&     adduser -S -G tmuser tmuser" shape="box"];
  "sha256:cb918f3aa7446397559cc4545129f8e014f5fc4243a95e206fbebdbef9f18e9a" [label="/bin/sh -c mkdir -p $DATA_ROOT &&     chown -R tmuser:tmuser $DATA_ROOT" shape="box"];
  "sha256:775b447209005969b93c3f7434897141f07cf4e3e3b218fbba01f7be14fd0bae" [label="/bin/sh -c apk add --no-cache bash curl jq" shape="box"];
  "sha256:f494b276dbc06f233b9e6506da55f3a3ecb96781c203df0f27686434338e3dc8" [label="/bin/sh -c mkdir -p /go/src/github.com/tendermint/tendermint &&     apk add --no-cache go build-base git &&     cd /go/src/github.com/tendermint/tendermint &&     git clone https://github.com/tendermint/tendermint . &&     git checkout develop &&     make get_vendor_deps &&     make install &&     glide cc &&     cd - &&     rm -rf /go/src/github.com/tendermint/tendermint &&     apk del go build-base git" shape="box"];
  "sha256:aeec974774606589b66b15f8f52e27df62bc74cd9ec6e419dfeb44ec5e49283d" [label="sha256:aeec974774606589b66b15f8f52e27df62bc74cd9ec6e419dfeb44ec5e49283d" shape="plaintext"];
  "sha256:18b7c2cc53865e472a3d0b145f5c6feafbadb82e512d763613c0a3693804a8a4" -> "sha256:38bc0cb71ac255ff32bd3aca96de136c83d4147becfabd0fd12de91323a5d3c1" [label=""];
  "sha256:38bc0cb71ac255ff32bd3aca96de136c83d4147becfabd0fd12de91323a5d3c1" -> "sha256:cb918f3aa7446397559cc4545129f8e014f5fc4243a95e206fbebdbef9f18e9a" [label=""];
  "sha256:cb918f3aa7446397559cc4545129f8e014f5fc4243a95e206fbebdbef9f18e9a" -> "sha256:775b447209005969b93c3f7434897141f07cf4e3e3b218fbba01f7be14fd0bae" [label=""];
  "sha256:775b447209005969b93c3f7434897141f07cf4e3e3b218fbba01f7be14fd0bae" -> "sha256:f494b276dbc06f233b9e6506da55f3a3ecb96781c203df0f27686434338e3dc8" [label=""];
  "sha256:f494b276dbc06f233b9e6506da55f3a3ecb96781c203df0f27686434338e3dc8" -> "sha256:aeec974774606589b66b15f8f52e27df62bc74cd9ec6e419dfeb44ec5e49283d" [label=""];
}

