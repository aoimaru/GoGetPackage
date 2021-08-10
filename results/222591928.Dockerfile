[app/sources/222591928.Dockerfile]
digraph {
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" [label="docker-image://docker.io/library/golang:1.9" shape="ellipse"];
  "sha256:4d005a235a387acb874d15f385faf6e9acd94f7dbe7582ad3b05f7f7a9496f6a" [label="/bin/sh -c apt-get update && apt-get install --no-install-recommends -y -q build-essential git" shape="box"];
  "sha256:f7c875834201b6c35b7b061892066081393f8e5776da9c68a05940a0908d07c3" [label="/bin/sh -c go get -d cloud.google.com/go/compute/metadata `#and 6 other pkgs` &&    (cd /go/src/cloud.google.com/go && (git cat-file -t $REV 2>/dev/null || git fetch -q origin $REV) && git reset --hard $REV)" shape="box"];
  "sha256:ace4570c8ab29bdfb7a9e92ae78071d295515fbe72283f30c5b0e566477980fc" [label="/bin/sh -c go get -d github.com/golang/protobuf/proto `#and 6 other pkgs` &&    (cd /go/src/github.com/golang/protobuf && (git cat-file -t $REV 2>/dev/null || git fetch -q origin $REV) && git reset --hard $REV)" shape="box"];
  "sha256:17b01642a221beb9394d3678a7adb65b2dd23b0d2fd0910c67f5df107dade6c4" [label="/bin/sh -c go get -d github.com/googleapis/gax-go &&    (cd /go/src/github.com/googleapis/gax-go && (git cat-file -t $REV 2>/dev/null || git fetch -q origin $REV) && git reset --hard $REV)" shape="box"];
  "sha256:b3554961ef3183af858d28c92d13e4be085f0d100d1c0ef402749828ad76a9d0" [label="/bin/sh -c go get -d golang.org/x/build/autocertcache &&    (cd /go/src/golang.org/x/build && (git cat-file -t $REV 2>/dev/null || git fetch -q origin $REV) && git reset --hard $REV)" shape="box"];
  "sha256:a8d8f93eb2ddaea4419580f256e0888c0e597f1b2ee8355a064b0bbae81319a3" [label="/bin/sh -c go get -d golang.org/x/crypto/acme `#and 2 other pkgs` &&    (cd /go/src/golang.org/x/crypto && (git cat-file -t $REV 2>/dev/null || git fetch -q origin $REV) && git reset --hard $REV)" shape="box"];
  "sha256:ba25dfd283061d6bff8d5ed3027e2b8382ece98f09ce7736c56ce452ef9b942f" [label="/bin/sh -c go get -d golang.org/x/net/context `#and 8 other pkgs` &&    (cd /go/src/golang.org/x/net && (git cat-file -t $REV 2>/dev/null || git fetch -q origin $REV) && git reset --hard $REV)" shape="box"];
  "sha256:4641f7b4d3dbd74b5c9af5e0e3c54711d71903e93f7feba6dc351ad160e56b27" [label="/bin/sh -c go get -d golang.org/x/oauth2 `#and 5 other pkgs` &&    (cd /go/src/golang.org/x/oauth2 && (git cat-file -t $REV 2>/dev/null || git fetch -q origin $REV) && git reset --hard $REV)" shape="box"];
  "sha256:049d0762bd07f0e20487f5760dd8a2ed666ad9e976a39fd2ffe76d098dd87794" [label="/bin/sh -c go get -d golang.org/x/text/secure/bidirule `#and 4 other pkgs` &&    (cd /go/src/golang.org/x/text && (git cat-file -t $REV 2>/dev/null || git fetch -q origin $REV) && git reset --hard $REV)" shape="box"];
  "sha256:18d9afbfb1b5b167a09bafc9aa9d3b5ec517818057a0b3f077227c0e9844677c" [label="/bin/sh -c go get -d google.golang.org/api/gensupport `#and 9 other pkgs` &&    (cd /go/src/google.golang.org/api && (git cat-file -t $REV 2>/dev/null || git fetch -q origin $REV) && git reset --hard $REV)" shape="box"];
  "sha256:8cf9592822c6b1b954cd9c85f9a605019ed8001ef92cacf219749d011e0146ff" [label="/bin/sh -c go get -d google.golang.org/genproto/googleapis/api/annotations `#and 3 other pkgs` &&    (cd /go/src/google.golang.org/genproto && (git cat-file -t $REV 2>/dev/null || git fetch -q origin $REV) && git reset --hard $REV)" shape="box"];
  "sha256:005ff17848ae3f3f9f20a9c914f941d3c54620f2024f7dbab717f538fd7d7016" [label="/bin/sh -c go get -d google.golang.org/grpc `#and 23 other pkgs` &&    (cd /go/src/google.golang.org/grpc && (git cat-file -t $REV 2>/dev/null || git fetch -q origin $REV) && git reset --hard $REV)" shape="box"];
  "sha256:b699b66283979e3162fafb4aef263cb914a1a339916c86e3321a137f5b3eafae" [label="/bin/sh -c go install cloud.google.com/go/compute/metadata \tcloud.google.com/go/iam \tcloud.google.com/go/internal \tcloud.google.com/go/internal/optional \tcloud.google.com/go/internal/version \tcloud.google.com/go/storage \tgithub.com/golang/protobuf/proto \tgithub.com/golang/protobuf/protoc-gen-go/descriptor \tgithub.com/golang/protobuf/ptypes \tgithub.com/golang/protobuf/ptypes/any \tgithub.com/golang/protobuf/ptypes/duration \tgithub.com/golang/protobuf/ptypes/timestamp \tgithub.com/googleapis/gax-go \tgolang.org/x/build/autocertcache \tgolang.org/x/crypto/acme \tgolang.org/x/crypto/acme/autocert \tgolang.org/x/net/context \tgolang.org/x/net/context/ctxhttp \tgolang.org/x/net/http2 \tgolang.org/x/net/http2/hpack \tgolang.org/x/net/idna \tgolang.org/x/net/internal/timeseries \tgolang.org/x/net/lex/httplex \tgolang.org/x/net/trace \tgolang.org/x/oauth2 \tgolang.org/x/oauth2/google \tgolang.org/x/oauth2/internal \tgolang.org/x/oauth2/jws \tgolang.org/x/oauth2/jwt \tgolang.org/x/text/secure/bidirule \tgolang.org/x/text/transform \tgolang.org/x/text/unicode/bidi \tgolang.org/x/text/unicode/norm \tgoogle.golang.org/api/gensupport \tgoogle.golang.org/api/googleapi \tgoogle.golang.org/api/googleapi/internal/uritemplates \tgoogle.golang.org/api/googleapi/transport \tgoogle.golang.org/api/internal \tgoogle.golang.org/api/iterator \tgoogle.golang.org/api/option \tgoogle.golang.org/api/storage/v1 \tgoogle.golang.org/api/transport/http \tgoogle.golang.org/genproto/googleapis/api/annotations \tgoogle.golang.org/genproto/googleapis/iam/v1 \tgoogle.golang.org/genproto/googleapis/rpc/status \tgoogle.golang.org/grpc \tgoogle.golang.org/grpc/balancer \tgoogle.golang.org/grpc/balancer/base \tgoogle.golang.org/grpc/balancer/roundrobin \tgoogle.golang.org/grpc/codes \tgoogle.golang.org/grpc/connectivity \tgoogle.golang.org/grpc/credentials \tgoogle.golang.org/grpc/encoding \tgoogle.golang.org/grpc/encoding/proto \tgoogle.golang.org/grpc/grpclb/grpc_lb_v1/messages \tgoogle.golang.org/grpc/grpclog \tgoogle.golang.org/grpc/internal \tgoogle.golang.org/grpc/keepalive \tgoogle.golang.org/grpc/metadata \tgoogle.golang.org/grpc/naming \tgoogle.golang.org/grpc/peer \tgoogle.golang.org/grpc/resolver \tgoogle.golang.org/grpc/resolver/dns \tgoogle.golang.org/grpc/resolver/passthrough \tgoogle.golang.org/grpc/stats \tgoogle.golang.org/grpc/status \tgoogle.golang.org/grpc/tap \tgoogle.golang.org/grpc/transport" shape="box"];
  "sha256:85d6dd7c33c8c5bba8ed0e6dbc2522092f750a96afe9e36aee1b997874817c29" [label="local://context" shape="ellipse"];
  "sha256:2f0c98ece71da489a00f15a947a812d9db3c666f93976e6a6f4866328972910b" [label="copy{src=/, dest=/go/src/tip}" shape="note"];
  "sha256:e755a65f1e70c01be5c10db7371b996b99786e8df1921977cee7e27e14c2eb4c" [label="/bin/sh -c go install --tags=autocert tip" shape="box"];
  "sha256:2ad90c91532b952abb69bd73e79c28b43e6c0048a58a03f48a69cefcce7a8767" [label="sha256:2ad90c91532b952abb69bd73e79c28b43e6c0048a58a03f48a69cefcce7a8767" shape="plaintext"];
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" -> "sha256:4d005a235a387acb874d15f385faf6e9acd94f7dbe7582ad3b05f7f7a9496f6a" [label=""];
  "sha256:4d005a235a387acb874d15f385faf6e9acd94f7dbe7582ad3b05f7f7a9496f6a" -> "sha256:f7c875834201b6c35b7b061892066081393f8e5776da9c68a05940a0908d07c3" [label=""];
  "sha256:f7c875834201b6c35b7b061892066081393f8e5776da9c68a05940a0908d07c3" -> "sha256:ace4570c8ab29bdfb7a9e92ae78071d295515fbe72283f30c5b0e566477980fc" [label=""];
  "sha256:ace4570c8ab29bdfb7a9e92ae78071d295515fbe72283f30c5b0e566477980fc" -> "sha256:17b01642a221beb9394d3678a7adb65b2dd23b0d2fd0910c67f5df107dade6c4" [label=""];
  "sha256:17b01642a221beb9394d3678a7adb65b2dd23b0d2fd0910c67f5df107dade6c4" -> "sha256:b3554961ef3183af858d28c92d13e4be085f0d100d1c0ef402749828ad76a9d0" [label=""];
  "sha256:b3554961ef3183af858d28c92d13e4be085f0d100d1c0ef402749828ad76a9d0" -> "sha256:a8d8f93eb2ddaea4419580f256e0888c0e597f1b2ee8355a064b0bbae81319a3" [label=""];
  "sha256:a8d8f93eb2ddaea4419580f256e0888c0e597f1b2ee8355a064b0bbae81319a3" -> "sha256:ba25dfd283061d6bff8d5ed3027e2b8382ece98f09ce7736c56ce452ef9b942f" [label=""];
  "sha256:ba25dfd283061d6bff8d5ed3027e2b8382ece98f09ce7736c56ce452ef9b942f" -> "sha256:4641f7b4d3dbd74b5c9af5e0e3c54711d71903e93f7feba6dc351ad160e56b27" [label=""];
  "sha256:4641f7b4d3dbd74b5c9af5e0e3c54711d71903e93f7feba6dc351ad160e56b27" -> "sha256:049d0762bd07f0e20487f5760dd8a2ed666ad9e976a39fd2ffe76d098dd87794" [label=""];
  "sha256:049d0762bd07f0e20487f5760dd8a2ed666ad9e976a39fd2ffe76d098dd87794" -> "sha256:18d9afbfb1b5b167a09bafc9aa9d3b5ec517818057a0b3f077227c0e9844677c" [label=""];
  "sha256:18d9afbfb1b5b167a09bafc9aa9d3b5ec517818057a0b3f077227c0e9844677c" -> "sha256:8cf9592822c6b1b954cd9c85f9a605019ed8001ef92cacf219749d011e0146ff" [label=""];
  "sha256:8cf9592822c6b1b954cd9c85f9a605019ed8001ef92cacf219749d011e0146ff" -> "sha256:005ff17848ae3f3f9f20a9c914f941d3c54620f2024f7dbab717f538fd7d7016" [label=""];
  "sha256:005ff17848ae3f3f9f20a9c914f941d3c54620f2024f7dbab717f538fd7d7016" -> "sha256:b699b66283979e3162fafb4aef263cb914a1a339916c86e3321a137f5b3eafae" [label=""];
  "sha256:b699b66283979e3162fafb4aef263cb914a1a339916c86e3321a137f5b3eafae" -> "sha256:2f0c98ece71da489a00f15a947a812d9db3c666f93976e6a6f4866328972910b" [label=""];
  "sha256:85d6dd7c33c8c5bba8ed0e6dbc2522092f750a96afe9e36aee1b997874817c29" -> "sha256:2f0c98ece71da489a00f15a947a812d9db3c666f93976e6a6f4866328972910b" [label=""];
  "sha256:2f0c98ece71da489a00f15a947a812d9db3c666f93976e6a6f4866328972910b" -> "sha256:e755a65f1e70c01be5c10db7371b996b99786e8df1921977cee7e27e14c2eb4c" [label=""];
  "sha256:e755a65f1e70c01be5c10db7371b996b99786e8df1921977cee7e27e14c2eb4c" -> "sha256:2ad90c91532b952abb69bd73e79c28b43e6c0048a58a03f48a69cefcce7a8767" [label=""];
}

