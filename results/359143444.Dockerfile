[app/sources/359143444.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:a656490610d2b671f50a403bca9d65345d0178581eec74c0920613f0f7d200f6" [label="local://context" shape="ellipse"];
  "sha256:cdbe285f840e2aee1bca97c158deb20ce48584f92344461b2a64e2af6a2b0f22" [label="docker-image://docker.io/library/golang:alpine3.8" shape="ellipse"];
  "sha256:29b8da6b83beb483648141ee00b637f13f090db30fb3125dd9db6e27d0938159" [label="copy{src=/, dest=/go/src/github.com/andreimarcu/linx-server}" shape="note"];
  "sha256:16fee6f0e6a69f8682aa2af6e25dab95eed57a9070a344fc766a71ff1073f848" [label="mkdir{path=/go/src/github.com/andreimarcu/linx-server}" shape="note"];
  "sha256:fc09f8b87f4ee8861197e57e320347327366505e52b52a55bf618063cbbdb0b4" [label="/bin/sh -c set -ex         && apk add --no-cache --virtual .build-deps git         && go get -v .         && apk del .build-deps" shape="box"];
  "sha256:8fdcb959111b7f3c886cd4dff52da7c0d69c4541ee846f973e1ae65e69d60694" [label="copy{src=/go/bin/linx-server, dest=/usr/local/bin/linx-server}" shape="note"];
  "sha256:7474e6dbc62ea55b46a6a62949834b682bb51f5aa512bbd6fac53c1a7a35da01" [label="copy{src=/static, dest=/go/src/github.com/andreimarcu/linx-server/static/}" shape="note"];
  "sha256:96fb6f0b4b5f783bf0be0872dc436c77639c0dd3fe06617e81fec6c79194972c" [label="copy{src=/templates, dest=/go/src/github.com/andreimarcu/linx-server/templates/}" shape="note"];
  "sha256:5b9a7c7aba15a7281e5150347a84579d1925b9941edfb7f8d6aa7e810c40252c" [label="/bin/sh -c mkdir -p /data/files && mkdir -p /data/meta && chown -R 65534:65534 /data" shape="box"];
  "sha256:f79e07851797f37ebd3c48f73a0f6c262d36fa0be16c0143dd4a10d31de1dba7" [label="sha256:f79e07851797f37ebd3c48f73a0f6c262d36fa0be16c0143dd4a10d31de1dba7" shape="plaintext"];
  "sha256:cdbe285f840e2aee1bca97c158deb20ce48584f92344461b2a64e2af6a2b0f22" -> "sha256:29b8da6b83beb483648141ee00b637f13f090db30fb3125dd9db6e27d0938159" [label=""];
  "sha256:a656490610d2b671f50a403bca9d65345d0178581eec74c0920613f0f7d200f6" -> "sha256:29b8da6b83beb483648141ee00b637f13f090db30fb3125dd9db6e27d0938159" [label=""];
  "sha256:29b8da6b83beb483648141ee00b637f13f090db30fb3125dd9db6e27d0938159" -> "sha256:16fee6f0e6a69f8682aa2af6e25dab95eed57a9070a344fc766a71ff1073f848" [label=""];
  "sha256:16fee6f0e6a69f8682aa2af6e25dab95eed57a9070a344fc766a71ff1073f848" -> "sha256:fc09f8b87f4ee8861197e57e320347327366505e52b52a55bf618063cbbdb0b4" [label=""];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:8fdcb959111b7f3c886cd4dff52da7c0d69c4541ee846f973e1ae65e69d60694" [label=""];
  "sha256:fc09f8b87f4ee8861197e57e320347327366505e52b52a55bf618063cbbdb0b4" -> "sha256:8fdcb959111b7f3c886cd4dff52da7c0d69c4541ee846f973e1ae65e69d60694" [label=""];
  "sha256:8fdcb959111b7f3c886cd4dff52da7c0d69c4541ee846f973e1ae65e69d60694" -> "sha256:7474e6dbc62ea55b46a6a62949834b682bb51f5aa512bbd6fac53c1a7a35da01" [label=""];
  "sha256:a656490610d2b671f50a403bca9d65345d0178581eec74c0920613f0f7d200f6" -> "sha256:7474e6dbc62ea55b46a6a62949834b682bb51f5aa512bbd6fac53c1a7a35da01" [label=""];
  "sha256:7474e6dbc62ea55b46a6a62949834b682bb51f5aa512bbd6fac53c1a7a35da01" -> "sha256:96fb6f0b4b5f783bf0be0872dc436c77639c0dd3fe06617e81fec6c79194972c" [label=""];
  "sha256:a656490610d2b671f50a403bca9d65345d0178581eec74c0920613f0f7d200f6" -> "sha256:96fb6f0b4b5f783bf0be0872dc436c77639c0dd3fe06617e81fec6c79194972c" [label=""];
  "sha256:96fb6f0b4b5f783bf0be0872dc436c77639c0dd3fe06617e81fec6c79194972c" -> "sha256:5b9a7c7aba15a7281e5150347a84579d1925b9941edfb7f8d6aa7e810c40252c" [label=""];
  "sha256:5b9a7c7aba15a7281e5150347a84579d1925b9941edfb7f8d6aa7e810c40252c" -> "sha256:f79e07851797f37ebd3c48f73a0f6c262d36fa0be16c0143dd4a10d31de1dba7" [label=""];
}

