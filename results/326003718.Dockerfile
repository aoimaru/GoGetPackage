[app/sources/326003718.Dockerfile]
digraph {
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" [label="docker-image://docker.io/library/alpine:3.5" shape="ellipse"];
  "sha256:04c21b39e2d05a273ec992e9dd4d60ec81d9b17bbeb52b8b4475424255d8c85e" [label="local://context" shape="ellipse"];
  "sha256:66fb319f44fcf72c31872847f4aac902b58cd3980dbace1538fa98a1a7395396" [label="copy{src=/, dest=/go-ethereum}" shape="note"];
  "sha256:4d5d724d58c65627a4d2215ae4329a0a61b26ebbfa99949e6bdc9af79c354ce9" [label="/bin/sh -c apk add --update git go make gcc musl-dev linux-headers      &&   (cd go-ethereum && make geth)                                &&   cp go-ethereum/build/bin/geth /usr/local/bin/                &&   mkdir /Ethereum && cp -r go-ethereum/Ethereum/* /Ethereum    &&   apk del git go make gcc musl-dev linux-headers               &&   rm -rf /go-ethereum && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:e747f651aee194625ac8ddc02e3099c1b410c333c22752d2275a2139612ae5ab" [label="sha256:e747f651aee194625ac8ddc02e3099c1b410c333c22752d2275a2139612ae5ab" shape="plaintext"];
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" -> "sha256:66fb319f44fcf72c31872847f4aac902b58cd3980dbace1538fa98a1a7395396" [label=""];
  "sha256:04c21b39e2d05a273ec992e9dd4d60ec81d9b17bbeb52b8b4475424255d8c85e" -> "sha256:66fb319f44fcf72c31872847f4aac902b58cd3980dbace1538fa98a1a7395396" [label=""];
  "sha256:66fb319f44fcf72c31872847f4aac902b58cd3980dbace1538fa98a1a7395396" -> "sha256:4d5d724d58c65627a4d2215ae4329a0a61b26ebbfa99949e6bdc9af79c354ce9" [label=""];
  "sha256:4d5d724d58c65627a4d2215ae4329a0a61b26ebbfa99949e6bdc9af79c354ce9" -> "sha256:e747f651aee194625ac8ddc02e3099c1b410c333c22752d2275a2139612ae5ab" [label=""];
}

