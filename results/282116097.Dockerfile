[app/sources/282116097.Dockerfile]
digraph {
  "sha256:4d8ae365c49af317af6f093fad8cd062537d000f1ac117301d84df6859f60180" [label="docker-image://docker.io/library/golang:1.9-alpine" shape="ellipse"];
  "sha256:ae525825e8e87d13ae3a5f09d72d67fd9d1fc0f9466cb327d1bf26a9f26c6b3c" [label="/bin/sh -c set -e -x ;    addgroup -S app ;    adduser -S -g app app ;    mkdir /app ;    chown app:app /app" shape="box"];
  "sha256:79ee4631e5ebbbdee25a28689ff4c406503aff085a21aa2afa0a5e752e346eea" [label="mkdir{path=/app}" shape="note"];
  "sha256:817ea90ed08cb6f94e4d896f492cedc0831c3a55a4a6960f182f2fdbee7c7371" [label="local://context" shape="ellipse"];
  "sha256:6edccde288da4ec73d0830d1e6649435e287936cd154dcf069588156f6831b66" [label="copy{src=/dapp/build, dest=/app/build}" shape="note"];
  "sha256:059e5a7ff2ea73d18f7ec5e745906a576ce1a13100824b1d42050219fe761585" [label="mkdir{path=/go/src/github.com/getline-network/getline}" shape="note"];
  "sha256:034aacf6b862a0047d5fc86ea01547d8a296556e4775e0d7de4e082fd71eb3df" [label="/bin/sh -c set -e -x ;    apk add --no-cache --virtual .build-deps         gcc musl-dev openssl protobuf" shape="box"];
  "sha256:760a2a22a620300b823b37a9f5f88d819dcce68de630346695c9498010cb2075" [label="copy{src=/vendor, dest=/go/src/github.com/getline-network/getline/vendor}" shape="note"];
  "sha256:1aebdc1f583e173324e95c3c0555847f82fd4ddd7e3b76a847b53f7bc4c290a3" [label="copy{src=/pb, dest=/go/src/github.com/getline-network/getline/pb}" shape="note"];
  "sha256:3b6eaec5e2233bc36df5cc6a159474ddc3e937ba0144dc07dc6ec753efb6733c" [label="copy{src=/metabackend, dest=/go/src/github.com/getline-network/getline/metabackend}" shape="note"];
  "sha256:9888b669300ab790d24629eedc811f93efde9b3c56e3df9f3bd058603f5bc827" [label="/bin/sh -c go install github.com/getline-network/getline/vendor/github.com/golang/protobuf/protoc-gen-go" shape="box"];
  "sha256:652e39925ac76c26561e6c0114fad789364c36b503d10e308f4f4c0bfa54e80f" [label="/bin/sh -c go generate github.com/getline-network/getline/pb" shape="box"];
  "sha256:918410be8cf3685cf95bad4ee74c303bf90f8196985505431d41cfc99a0b8956" [label="/bin/sh -c go build -o /metabackend github.com/getline-network/getline/metabackend" shape="box"];
  "sha256:c305fc37fa7114611666580667670011e8aabc6c4f7090ab113bde413472e5b7" [label="copy{src=/metabackend, dest=/app/}" shape="note"];
  "sha256:f7d59de2738863bdc434edff4f473c6b0838146771cea8b118ef80a0bcae8dce" [label="sha256:f7d59de2738863bdc434edff4f473c6b0838146771cea8b118ef80a0bcae8dce" shape="plaintext"];
  "sha256:4d8ae365c49af317af6f093fad8cd062537d000f1ac117301d84df6859f60180" -> "sha256:ae525825e8e87d13ae3a5f09d72d67fd9d1fc0f9466cb327d1bf26a9f26c6b3c" [label=""];
  "sha256:ae525825e8e87d13ae3a5f09d72d67fd9d1fc0f9466cb327d1bf26a9f26c6b3c" -> "sha256:79ee4631e5ebbbdee25a28689ff4c406503aff085a21aa2afa0a5e752e346eea" [label=""];
  "sha256:79ee4631e5ebbbdee25a28689ff4c406503aff085a21aa2afa0a5e752e346eea" -> "sha256:6edccde288da4ec73d0830d1e6649435e287936cd154dcf069588156f6831b66" [label=""];
  "sha256:817ea90ed08cb6f94e4d896f492cedc0831c3a55a4a6960f182f2fdbee7c7371" -> "sha256:6edccde288da4ec73d0830d1e6649435e287936cd154dcf069588156f6831b66" [label=""];
  "sha256:4d8ae365c49af317af6f093fad8cd062537d000f1ac117301d84df6859f60180" -> "sha256:059e5a7ff2ea73d18f7ec5e745906a576ce1a13100824b1d42050219fe761585" [label=""];
  "sha256:059e5a7ff2ea73d18f7ec5e745906a576ce1a13100824b1d42050219fe761585" -> "sha256:034aacf6b862a0047d5fc86ea01547d8a296556e4775e0d7de4e082fd71eb3df" [label=""];
  "sha256:034aacf6b862a0047d5fc86ea01547d8a296556e4775e0d7de4e082fd71eb3df" -> "sha256:760a2a22a620300b823b37a9f5f88d819dcce68de630346695c9498010cb2075" [label=""];
  "sha256:817ea90ed08cb6f94e4d896f492cedc0831c3a55a4a6960f182f2fdbee7c7371" -> "sha256:760a2a22a620300b823b37a9f5f88d819dcce68de630346695c9498010cb2075" [label=""];
  "sha256:760a2a22a620300b823b37a9f5f88d819dcce68de630346695c9498010cb2075" -> "sha256:1aebdc1f583e173324e95c3c0555847f82fd4ddd7e3b76a847b53f7bc4c290a3" [label=""];
  "sha256:817ea90ed08cb6f94e4d896f492cedc0831c3a55a4a6960f182f2fdbee7c7371" -> "sha256:1aebdc1f583e173324e95c3c0555847f82fd4ddd7e3b76a847b53f7bc4c290a3" [label=""];
  "sha256:1aebdc1f583e173324e95c3c0555847f82fd4ddd7e3b76a847b53f7bc4c290a3" -> "sha256:3b6eaec5e2233bc36df5cc6a159474ddc3e937ba0144dc07dc6ec753efb6733c" [label=""];
  "sha256:817ea90ed08cb6f94e4d896f492cedc0831c3a55a4a6960f182f2fdbee7c7371" -> "sha256:3b6eaec5e2233bc36df5cc6a159474ddc3e937ba0144dc07dc6ec753efb6733c" [label=""];
  "sha256:3b6eaec5e2233bc36df5cc6a159474ddc3e937ba0144dc07dc6ec753efb6733c" -> "sha256:9888b669300ab790d24629eedc811f93efde9b3c56e3df9f3bd058603f5bc827" [label=""];
  "sha256:9888b669300ab790d24629eedc811f93efde9b3c56e3df9f3bd058603f5bc827" -> "sha256:652e39925ac76c26561e6c0114fad789364c36b503d10e308f4f4c0bfa54e80f" [label=""];
  "sha256:652e39925ac76c26561e6c0114fad789364c36b503d10e308f4f4c0bfa54e80f" -> "sha256:918410be8cf3685cf95bad4ee74c303bf90f8196985505431d41cfc99a0b8956" [label=""];
  "sha256:6edccde288da4ec73d0830d1e6649435e287936cd154dcf069588156f6831b66" -> "sha256:c305fc37fa7114611666580667670011e8aabc6c4f7090ab113bde413472e5b7" [label=""];
  "sha256:918410be8cf3685cf95bad4ee74c303bf90f8196985505431d41cfc99a0b8956" -> "sha256:c305fc37fa7114611666580667670011e8aabc6c4f7090ab113bde413472e5b7" [label=""];
  "sha256:c305fc37fa7114611666580667670011e8aabc6c4f7090ab113bde413472e5b7" -> "sha256:f7d59de2738863bdc434edff4f473c6b0838146771cea8b118ef80a0bcae8dce" [label=""];
}

