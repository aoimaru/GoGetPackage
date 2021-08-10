[app/sources/284551231.Dockerfile]
digraph {
  "sha256:b150da432c7a40066a95bb13c63c745492fdd7212cf68b9867ca367c7b6abf96" [label="docker-image://docker.io/library/golang:1.8" shape="ellipse"];
  "sha256:6dd0b508a757541b38a0866fa86deab1cfa0a122dc3fa44cb798d7e966e28633" [label="/bin/sh -c apt-get update && apt-get install --no-install-recommends -y -q build-essential git" shape="box"];
  "sha256:6e0239c650326eca764d6f3628a2a9b99eabb531c8c68e9362476efe2f87cf7d" [label="/bin/sh -c go get -d cloud.google.com/go/compute/metadata `#and 6 other pkgs` &&    (cd /go/src/cloud.google.com/go && (git cat-file -t $REV 2>/dev/null || git fetch -q origin $REV) && git reset --hard $REV)" shape="box"];
  "sha256:0ccdea9d67eb9cf043a09a8321cb4252f03ae4955dfc96da1705e5b32d78de25" [label="/bin/sh -c go get -d github.com/golang/protobuf/proto `#and 6 other pkgs` &&    (cd /go/src/github.com/golang/protobuf && (git cat-file -t $REV 2>/dev/null || git fetch -q origin $REV) && git reset --hard $REV)" shape="box"];
  "sha256:04fa32e6c2027b6f339e1dc8b8c39865fcdeed8e852b29b7b3b89745845fdec8" [label="/bin/sh -c go get -d github.com/googleapis/gax-go &&    (cd /go/src/github.com/googleapis/gax-go && (git cat-file -t $REV 2>/dev/null || git fetch -q origin $REV) && git reset --hard $REV)" shape="box"];
  "sha256:7ddbb50d8e22540862cdf61c1b90fe9e73ed84e0d26a7ed08c2a7bf417cc8082" [label="/bin/sh -c go get -d golang.org/x/build/autocertcache &&    (cd /go/src/golang.org/x/build && (git cat-file -t $REV 2>/dev/null || git fetch -q origin $REV) && git reset --hard $REV)" shape="box"];
  "sha256:b57764b2b194ced3fe38108651ef5610ab876a5f1ea4139d894d90094e2f1f17" [label="/bin/sh -c go get -d golang.org/x/crypto/acme `#and 2 other pkgs` &&    (cd /go/src/golang.org/x/crypto && (git cat-file -t $REV 2>/dev/null || git fetch -q origin $REV) && git reset --hard $REV)" shape="box"];
  "sha256:903e805e66552d9fd9628edec27a05d6aa9a91603986e02913f35cc19d4c3db9" [label="/bin/sh -c go get -d golang.org/x/net/context `#and 8 other pkgs` &&    (cd /go/src/golang.org/x/net && (git cat-file -t $REV 2>/dev/null || git fetch -q origin $REV) && git reset --hard $REV)" shape="box"];
  "sha256:82a3e77a2a6aceee3a619a992a4215fc6d89fa5715408225890d39de66d8292c" [label="/bin/sh -c go get -d golang.org/x/oauth2 `#and 5 other pkgs` &&    (cd /go/src/golang.org/x/oauth2 && (git cat-file -t $REV 2>/dev/null || git fetch -q origin $REV) && git reset --hard $REV)" shape="box"];
  "sha256:be6de5666535268e8d72b6f4757d59e8c6da9557c10ae8394677ef9651ebb8ff" [label="/bin/sh -c go get -d golang.org/x/text/secure/bidirule `#and 4 other pkgs` &&    (cd /go/src/golang.org/x/text && (git cat-file -t $REV 2>/dev/null || git fetch -q origin $REV) && git reset --hard $REV)" shape="box"];
  "sha256:91c6db62142f37cab2a14cd6ab824ef8ee39c6b9c9bfa87cd9f6bcd597ec4bc0" [label="/bin/sh -c go get -d google.golang.org/api/gensupport `#and 9 other pkgs` &&    (cd /go/src/google.golang.org/api && (git cat-file -t $REV 2>/dev/null || git fetch -q origin $REV) && git reset --hard $REV)" shape="box"];
  "sha256:6b81076833fd7732e7136c674051a41caff4261e09e370d72c384291b733cb20" [label="/bin/sh -c go get -d google.golang.org/genproto/googleapis/api/annotations `#and 3 other pkgs` &&    (cd /go/src/google.golang.org/genproto && (git cat-file -t $REV 2>/dev/null || git fetch -q origin $REV) && git reset --hard $REV)" shape="box"];
  "sha256:641d7e8e2b77b9df41542387d45233be1c2d8452c322ab82d513d79e99575632" [label="/bin/sh -c go get -d google.golang.org/grpc `#and 14 other pkgs` &&    (cd /go/src/google.golang.org/grpc && (git cat-file -t $REV 2>/dev/null || git fetch -q origin $REV) && git reset --hard $REV)" shape="box"];
  "sha256:cf90870f3ec44c2eb107e31935b085059e577b5e28090097cba6f3254bb655db" [label="/bin/sh -c go install cloud.google.com/go/compute/metadata \tcloud.google.com/go/iam \tcloud.google.com/go/internal \tcloud.google.com/go/internal/optional \tcloud.google.com/go/internal/version \tcloud.google.com/go/storage \tgithub.com/golang/protobuf/proto \tgithub.com/golang/protobuf/protoc-gen-go/descriptor \tgithub.com/golang/protobuf/ptypes \tgithub.com/golang/protobuf/ptypes/any \tgithub.com/golang/protobuf/ptypes/duration \tgithub.com/golang/protobuf/ptypes/timestamp \tgithub.com/googleapis/gax-go \tgolang.org/x/build/autocertcache \tgolang.org/x/crypto/acme \tgolang.org/x/crypto/acme/autocert \tgolang.org/x/net/context \tgolang.org/x/net/context/ctxhttp \tgolang.org/x/net/http2 \tgolang.org/x/net/http2/hpack \tgolang.org/x/net/idna \tgolang.org/x/net/internal/timeseries \tgolang.org/x/net/lex/httplex \tgolang.org/x/net/trace \tgolang.org/x/oauth2 \tgolang.org/x/oauth2/google \tgolang.org/x/oauth2/internal \tgolang.org/x/oauth2/jws \tgolang.org/x/oauth2/jwt \tgolang.org/x/text/secure/bidirule \tgolang.org/x/text/transform \tgolang.org/x/text/unicode/bidi \tgolang.org/x/text/unicode/norm \tgoogle.golang.org/api/gensupport \tgoogle.golang.org/api/googleapi \tgoogle.golang.org/api/googleapi/internal/uritemplates \tgoogle.golang.org/api/googleapi/transport \tgoogle.golang.org/api/internal \tgoogle.golang.org/api/iterator \tgoogle.golang.org/api/option \tgoogle.golang.org/api/storage/v1 \tgoogle.golang.org/api/transport/http \tgoogle.golang.org/genproto/googleapis/api/annotations \tgoogle.golang.org/genproto/googleapis/iam/v1 \tgoogle.golang.org/genproto/googleapis/rpc/status \tgoogle.golang.org/grpc \tgoogle.golang.org/grpc/codes \tgoogle.golang.org/grpc/credentials \tgoogle.golang.org/grpc/grpclb/grpc_lb_v1 \tgoogle.golang.org/grpc/grpclog \tgoogle.golang.org/grpc/internal \tgoogle.golang.org/grpc/keepalive \tgoogle.golang.org/grpc/metadata \tgoogle.golang.org/grpc/naming \tgoogle.golang.org/grpc/peer \tgoogle.golang.org/grpc/stats \tgoogle.golang.org/grpc/status \tgoogle.golang.org/grpc/tap \tgoogle.golang.org/grpc/transport" shape="box"];
  "sha256:b929f4fcc481d95f8fd2c97465663ee0c570898b9ed381cdab21956db96c55c0" [label="local://context" shape="ellipse"];
  "sha256:20b50e911133f2c6a215e447598f9af7a33101c0ee78666bb8984b62b165a916" [label="copy{src=/, dest=/go/src/tip}" shape="note"];
  "sha256:fc50917d4fd9eeec9b309bad4a4b1f0fe2a449a9dc0ea3a4f8f1c146821e708d" [label="/bin/sh -c go install --tags=autocert tip" shape="box"];
  "sha256:741279359038a2526ccdd37e11fecde5009f40494156ef6ef3efc382f260db8b" [label="sha256:741279359038a2526ccdd37e11fecde5009f40494156ef6ef3efc382f260db8b" shape="plaintext"];
  "sha256:b150da432c7a40066a95bb13c63c745492fdd7212cf68b9867ca367c7b6abf96" -> "sha256:6dd0b508a757541b38a0866fa86deab1cfa0a122dc3fa44cb798d7e966e28633" [label=""];
  "sha256:6dd0b508a757541b38a0866fa86deab1cfa0a122dc3fa44cb798d7e966e28633" -> "sha256:6e0239c650326eca764d6f3628a2a9b99eabb531c8c68e9362476efe2f87cf7d" [label=""];
  "sha256:6e0239c650326eca764d6f3628a2a9b99eabb531c8c68e9362476efe2f87cf7d" -> "sha256:0ccdea9d67eb9cf043a09a8321cb4252f03ae4955dfc96da1705e5b32d78de25" [label=""];
  "sha256:0ccdea9d67eb9cf043a09a8321cb4252f03ae4955dfc96da1705e5b32d78de25" -> "sha256:04fa32e6c2027b6f339e1dc8b8c39865fcdeed8e852b29b7b3b89745845fdec8" [label=""];
  "sha256:04fa32e6c2027b6f339e1dc8b8c39865fcdeed8e852b29b7b3b89745845fdec8" -> "sha256:7ddbb50d8e22540862cdf61c1b90fe9e73ed84e0d26a7ed08c2a7bf417cc8082" [label=""];
  "sha256:7ddbb50d8e22540862cdf61c1b90fe9e73ed84e0d26a7ed08c2a7bf417cc8082" -> "sha256:b57764b2b194ced3fe38108651ef5610ab876a5f1ea4139d894d90094e2f1f17" [label=""];
  "sha256:b57764b2b194ced3fe38108651ef5610ab876a5f1ea4139d894d90094e2f1f17" -> "sha256:903e805e66552d9fd9628edec27a05d6aa9a91603986e02913f35cc19d4c3db9" [label=""];
  "sha256:903e805e66552d9fd9628edec27a05d6aa9a91603986e02913f35cc19d4c3db9" -> "sha256:82a3e77a2a6aceee3a619a992a4215fc6d89fa5715408225890d39de66d8292c" [label=""];
  "sha256:82a3e77a2a6aceee3a619a992a4215fc6d89fa5715408225890d39de66d8292c" -> "sha256:be6de5666535268e8d72b6f4757d59e8c6da9557c10ae8394677ef9651ebb8ff" [label=""];
  "sha256:be6de5666535268e8d72b6f4757d59e8c6da9557c10ae8394677ef9651ebb8ff" -> "sha256:91c6db62142f37cab2a14cd6ab824ef8ee39c6b9c9bfa87cd9f6bcd597ec4bc0" [label=""];
  "sha256:91c6db62142f37cab2a14cd6ab824ef8ee39c6b9c9bfa87cd9f6bcd597ec4bc0" -> "sha256:6b81076833fd7732e7136c674051a41caff4261e09e370d72c384291b733cb20" [label=""];
  "sha256:6b81076833fd7732e7136c674051a41caff4261e09e370d72c384291b733cb20" -> "sha256:641d7e8e2b77b9df41542387d45233be1c2d8452c322ab82d513d79e99575632" [label=""];
  "sha256:641d7e8e2b77b9df41542387d45233be1c2d8452c322ab82d513d79e99575632" -> "sha256:cf90870f3ec44c2eb107e31935b085059e577b5e28090097cba6f3254bb655db" [label=""];
  "sha256:cf90870f3ec44c2eb107e31935b085059e577b5e28090097cba6f3254bb655db" -> "sha256:20b50e911133f2c6a215e447598f9af7a33101c0ee78666bb8984b62b165a916" [label=""];
  "sha256:b929f4fcc481d95f8fd2c97465663ee0c570898b9ed381cdab21956db96c55c0" -> "sha256:20b50e911133f2c6a215e447598f9af7a33101c0ee78666bb8984b62b165a916" [label=""];
  "sha256:20b50e911133f2c6a215e447598f9af7a33101c0ee78666bb8984b62b165a916" -> "sha256:fc50917d4fd9eeec9b309bad4a4b1f0fe2a449a9dc0ea3a4f8f1c146821e708d" [label=""];
  "sha256:fc50917d4fd9eeec9b309bad4a4b1f0fe2a449a9dc0ea3a4f8f1c146821e708d" -> "sha256:741279359038a2526ccdd37e11fecde5009f40494156ef6ef3efc382f260db8b" [label=""];
}
