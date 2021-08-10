[app/sources/238428168.Dockerfile]
digraph {
  "sha256:e057417d4d0626c363640ba68035113ebf8ab42c7e311c70181b7197bd673eac" [label="docker-image://docker.io/crystallang/crystal:0.29.0" shape="ellipse"];
  "sha256:b008038828f73f8fb20db23573a6780d0739aace18ac06e631647421f39637fa" [label="/bin/sh -c apt-get update &&   apt-get install -y libgconf-2-4 build-essential curl libreadline-dev libevent-dev libssl-dev libxml2-dev libyaml-dev libgmp-dev git  &&   apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:a7837971d3c06604e1cb4fbe694212bab73a0912460a35825583c2cae4f797ab" [label="/bin/sh -c mkdir /data" shape="box"];
  "sha256:f65bb0afb057f40275639d98b52107d3b8b74be10cf2f10493acedd076294925" [label="mkdir{path=/data}" shape="note"];
  "sha256:95a25dcb41c75dfa5ba4769d85d9a83f309448a5764bb70db0890407b4b372ae" [label="local://context" shape="ellipse"];
  "sha256:95954f9bcf37988821df125b791099651c0538056fb96979665bedda775c53c6" [label="copy{src=/, dest=/data}" shape="note"];
  "sha256:a3c463e4c5d60115b7408c15881c7ca031f0f29ec7a67ec10366eb1112a939e3" [label="sha256:a3c463e4c5d60115b7408c15881c7ca031f0f29ec7a67ec10366eb1112a939e3" shape="plaintext"];
  "sha256:e057417d4d0626c363640ba68035113ebf8ab42c7e311c70181b7197bd673eac" -> "sha256:b008038828f73f8fb20db23573a6780d0739aace18ac06e631647421f39637fa" [label=""];
  "sha256:b008038828f73f8fb20db23573a6780d0739aace18ac06e631647421f39637fa" -> "sha256:a7837971d3c06604e1cb4fbe694212bab73a0912460a35825583c2cae4f797ab" [label=""];
  "sha256:a7837971d3c06604e1cb4fbe694212bab73a0912460a35825583c2cae4f797ab" -> "sha256:f65bb0afb057f40275639d98b52107d3b8b74be10cf2f10493acedd076294925" [label=""];
  "sha256:f65bb0afb057f40275639d98b52107d3b8b74be10cf2f10493acedd076294925" -> "sha256:95954f9bcf37988821df125b791099651c0538056fb96979665bedda775c53c6" [label=""];
  "sha256:95a25dcb41c75dfa5ba4769d85d9a83f309448a5764bb70db0890407b4b372ae" -> "sha256:95954f9bcf37988821df125b791099651c0538056fb96979665bedda775c53c6" [label=""];
  "sha256:95954f9bcf37988821df125b791099651c0538056fb96979665bedda775c53c6" -> "sha256:a3c463e4c5d60115b7408c15881c7ca031f0f29ec7a67ec10366eb1112a939e3" [label=""];
}

