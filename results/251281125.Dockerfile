[app/sources/251281125.Dockerfile]
digraph {
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" [label="docker-image://docker.io/library/golang:1.11" shape="ellipse"];
  "sha256:4b85b140ddf23f505bf77e811d59343f1080986f5622e90bb7957137aa86c668" [label="/bin/sh -c go get -d cloud.google.com/go/compute/metadata `#and 7 other pkgs` &&    (cd /go/src/cloud.google.com/go && (git cat-file -t $REV 2>/dev/null || git fetch -q origin $REV) && git reset --hard $REV)" shape="box"];
  "sha256:c7af9b8333297b4ebb07d79a3e7d73121e84e360044c9457b7abff72b7b70b4e" [label="/bin/sh -c go get -d github.com/golang/protobuf/proto `#and 6 other pkgs` &&    (cd /go/src/github.com/golang/protobuf && (git cat-file -t $REV 2>/dev/null || git fetch -q origin $REV) && git reset --hard $REV)" shape="box"];
  "sha256:56d18258bc434a7f0a1e872c1b2b0dacd4d18efa83a873a46533274c726b812c" [label="/bin/sh -c go get -d github.com/googleapis/gax-go &&    (cd /go/src/github.com/googleapis/gax-go && (git cat-file -t $REV 2>/dev/null || git fetch -q origin $REV) && git reset --hard $REV)" shape="box"];
  "sha256:eea36df1c3bd9ae10402454a083b0072469522229a65fdec9f24b5ed03e39f55" [label="/bin/sh -c go get -d go.opencensus.io/internal `#and 11 other pkgs` &&    (cd /go/src/go.opencensus.io && (git cat-file -t $REV 2>/dev/null || git fetch -q origin $REV) && git reset --hard $REV)" shape="box"];
  "sha256:7d150d3b4eb24bac1737f216caccc75528cacc7ab171a6b03f31b5aadd8bfa6a" [label="/bin/sh -c go get -d go4.org/syncutil/singleflight &&    (cd /go/src/go4.org && (git cat-file -t $REV 2>/dev/null || git fetch -q origin $REV) && git reset --hard $REV)" shape="box"];
  "sha256:633165529f74c225f5685d74d0141086657106098a1b781783c9397c814e156d" [label="/bin/sh -c go get -d golang.org/x/build/autocertcache &&    (cd /go/src/golang.org/x/build && (git cat-file -t $REV 2>/dev/null || git fetch -q origin $REV) && git reset --hard $REV)" shape="box"];
  "sha256:7a65909256ce968a6d0cb876be1f0120df54e09588cbb44c768121a7b7c41eaa" [label="/bin/sh -c go get -d golang.org/x/crypto/acme `#and 2 other pkgs` &&    (cd /go/src/golang.org/x/crypto && (git cat-file -t $REV 2>/dev/null || git fetch -q origin $REV) && git reset --hard $REV)" shape="box"];
  "sha256:00f66491a80c5c19aa80f214e54049a06fff59bcadb6f61c2bae7dff06f47278" [label="/bin/sh -c go get -d golang.org/x/oauth2 `#and 5 other pkgs` &&    (cd /go/src/golang.org/x/oauth2 && (git cat-file -t $REV 2>/dev/null || git fetch -q origin $REV) && git reset --hard $REV)" shape="box"];
  "sha256:3657d06b97932196f15b05b280541d6e06e4dc88ef4ccec9d7855263aa7be9c1" [label="/bin/sh -c go get -d golang.org/x/sys/unix &&    (cd /go/src/golang.org/x/sys && (git cat-file -t $REV 2>/dev/null || git fetch -q origin $REV) && git reset --hard $REV)" shape="box"];
  "sha256:da80e339d05318e463ec019a36101752d70f8f6a8bbb1bd23061b1243b5b3d13" [label="/bin/sh -c go get -d golang.org/x/text/secure/bidirule `#and 4 other pkgs` &&    (cd /go/src/golang.org/x/text && (git cat-file -t $REV 2>/dev/null || git fetch -q origin $REV) && git reset --hard $REV)" shape="box"];
  "sha256:0ada1bbdceb3ac44b8673f98552162aff12463478f433fcd5071cc230ffc0766" [label="/bin/sh -c go get -d google.golang.org/api/gensupport `#and 10 other pkgs` &&    (cd /go/src/google.golang.org/api && (git cat-file -t $REV 2>/dev/null || git fetch -q origin $REV) && git reset --hard $REV)" shape="box"];
  "sha256:efc0ce842103eaa6a6415afac83fff3b948d1a8c45c3d6ce9b4684533a9116dc" [label="/bin/sh -c go get -d google.golang.org/genproto/googleapis/api/annotations `#and 4 other pkgs` &&    (cd /go/src/google.golang.org/genproto && (git cat-file -t $REV 2>/dev/null || git fetch -q origin $REV) && git reset --hard $REV)" shape="box"];
  "sha256:753bc031e86b93c654f605c1c36a5b72839fb3681ba3f2dda0dbf0b3e7d02f97" [label="/bin/sh -c go get -d google.golang.org/grpc `#and 26 other pkgs` &&    (cd /go/src/google.golang.org/grpc && (git cat-file -t $REV 2>/dev/null || git fetch -q origin $REV) && git reset --hard $REV)" shape="box"];
  "sha256:15ec75a55ede698b03215b74633d1494239747dab687c8dadf78507b8ce66e71" [label="/bin/sh -c go install cloud.google.com/go/compute/metadata \tcloud.google.com/go/iam \tcloud.google.com/go/internal \tcloud.google.com/go/internal/optional \tcloud.google.com/go/internal/trace \tcloud.google.com/go/internal/version \tcloud.google.com/go/storage \tgithub.com/golang/protobuf/proto \tgithub.com/golang/protobuf/protoc-gen-go/descriptor \tgithub.com/golang/protobuf/ptypes \tgithub.com/golang/protobuf/ptypes/any \tgithub.com/golang/protobuf/ptypes/duration \tgithub.com/golang/protobuf/ptypes/timestamp \tgithub.com/googleapis/gax-go \tgo.opencensus.io/internal \tgo.opencensus.io/internal/tagencoding \tgo.opencensus.io/plugin/ochttp \tgo.opencensus.io/plugin/ochttp/propagation/b3 \tgo.opencensus.io/stats \tgo.opencensus.io/stats/internal \tgo.opencensus.io/stats/view \tgo.opencensus.io/tag \tgo.opencensus.io/trace \tgo.opencensus.io/trace/internal \tgo.opencensus.io/trace/propagation \tgo4.org/syncutil/singleflight \tgolang.org/x/build/autocertcache \tgolang.org/x/crypto/acme \tgolang.org/x/crypto/acme/autocert \tgolang.org/x/oauth2 \tgolang.org/x/oauth2/google \tgolang.org/x/oauth2/internal \tgolang.org/x/oauth2/jws \tgolang.org/x/oauth2/jwt \tgolang.org/x/sys/unix \tgolang.org/x/text/secure/bidirule \tgolang.org/x/text/transform \tgolang.org/x/text/unicode/bidi \tgolang.org/x/text/unicode/norm \tgoogle.golang.org/api/gensupport \tgoogle.golang.org/api/googleapi \tgoogle.golang.org/api/googleapi/internal/uritemplates \tgoogle.golang.org/api/googleapi/transport \tgoogle.golang.org/api/internal \tgoogle.golang.org/api/iterator \tgoogle.golang.org/api/option \tgoogle.golang.org/api/storage/v1 \tgoogle.golang.org/api/transport/http \tgoogle.golang.org/api/transport/http/internal/propagation \tgoogle.golang.org/genproto/googleapis/api/annotations \tgoogle.golang.org/genproto/googleapis/iam/v1 \tgoogle.golang.org/genproto/googleapis/rpc/code \tgoogle.golang.org/genproto/googleapis/rpc/status \tgoogle.golang.org/grpc \tgoogle.golang.org/grpc/balancer \tgoogle.golang.org/grpc/balancer/base \tgoogle.golang.org/grpc/balancer/roundrobin \tgoogle.golang.org/grpc/codes \tgoogle.golang.org/grpc/connectivity \tgoogle.golang.org/grpc/credentials \tgoogle.golang.org/grpc/encoding \tgoogle.golang.org/grpc/encoding/proto \tgoogle.golang.org/grpc/grpclog \tgoogle.golang.org/grpc/internal \tgoogle.golang.org/grpc/internal/backoff \tgoogle.golang.org/grpc/internal/channelz \tgoogle.golang.org/grpc/internal/envconfig \tgoogle.golang.org/grpc/internal/grpcrand \tgoogle.golang.org/grpc/internal/transport \tgoogle.golang.org/grpc/keepalive \tgoogle.golang.org/grpc/metadata \tgoogle.golang.org/grpc/naming \tgoogle.golang.org/grpc/peer \tgoogle.golang.org/grpc/resolver \tgoogle.golang.org/grpc/resolver/dns \tgoogle.golang.org/grpc/resolver/passthrough \tgoogle.golang.org/grpc/stats \tgoogle.golang.org/grpc/status \tgoogle.golang.org/grpc/tap" shape="box"];
  "sha256:6faa268a0cfe89d017442ec3ff1331ae375c87f03d85d3b96b29643c12916577" [label="local://context" shape="ellipse"];
  "sha256:3d042f819286dce7cd0423d9a0abf34651da62513789a77bf1b632c9cf1875ba" [label="copy{src=/, dest=/go/src/golang.org/x/net/}" shape="note"];
  "sha256:4b0e92490e543a425a885a66f69fb88cd98fdc42682379e2491dea445d0dd778" [label="/bin/sh -c go install -tags \"h2demo netgo\" golang.org/x/net/http2/h2demo" shape="box"];
  "sha256:01eb680fb653b760a47f268ab6791a61080242d366467c8f20c9975566b3c008" [label="copy{src=/go/bin/h2demo, dest=/h2demo}" shape="note"];
  "sha256:135df1b3f465fdbb341047777b622807f4c4ef8da8a7657a8175e089f17b1769" [label="sha256:135df1b3f465fdbb341047777b622807f4c4ef8da8a7657a8175e089f17b1769" shape="plaintext"];
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" -> "sha256:4b85b140ddf23f505bf77e811d59343f1080986f5622e90bb7957137aa86c668" [label=""];
  "sha256:4b85b140ddf23f505bf77e811d59343f1080986f5622e90bb7957137aa86c668" -> "sha256:c7af9b8333297b4ebb07d79a3e7d73121e84e360044c9457b7abff72b7b70b4e" [label=""];
  "sha256:c7af9b8333297b4ebb07d79a3e7d73121e84e360044c9457b7abff72b7b70b4e" -> "sha256:56d18258bc434a7f0a1e872c1b2b0dacd4d18efa83a873a46533274c726b812c" [label=""];
  "sha256:56d18258bc434a7f0a1e872c1b2b0dacd4d18efa83a873a46533274c726b812c" -> "sha256:eea36df1c3bd9ae10402454a083b0072469522229a65fdec9f24b5ed03e39f55" [label=""];
  "sha256:eea36df1c3bd9ae10402454a083b0072469522229a65fdec9f24b5ed03e39f55" -> "sha256:7d150d3b4eb24bac1737f216caccc75528cacc7ab171a6b03f31b5aadd8bfa6a" [label=""];
  "sha256:7d150d3b4eb24bac1737f216caccc75528cacc7ab171a6b03f31b5aadd8bfa6a" -> "sha256:633165529f74c225f5685d74d0141086657106098a1b781783c9397c814e156d" [label=""];
  "sha256:633165529f74c225f5685d74d0141086657106098a1b781783c9397c814e156d" -> "sha256:7a65909256ce968a6d0cb876be1f0120df54e09588cbb44c768121a7b7c41eaa" [label=""];
  "sha256:7a65909256ce968a6d0cb876be1f0120df54e09588cbb44c768121a7b7c41eaa" -> "sha256:00f66491a80c5c19aa80f214e54049a06fff59bcadb6f61c2bae7dff06f47278" [label=""];
  "sha256:00f66491a80c5c19aa80f214e54049a06fff59bcadb6f61c2bae7dff06f47278" -> "sha256:3657d06b97932196f15b05b280541d6e06e4dc88ef4ccec9d7855263aa7be9c1" [label=""];
  "sha256:3657d06b97932196f15b05b280541d6e06e4dc88ef4ccec9d7855263aa7be9c1" -> "sha256:da80e339d05318e463ec019a36101752d70f8f6a8bbb1bd23061b1243b5b3d13" [label=""];
  "sha256:da80e339d05318e463ec019a36101752d70f8f6a8bbb1bd23061b1243b5b3d13" -> "sha256:0ada1bbdceb3ac44b8673f98552162aff12463478f433fcd5071cc230ffc0766" [label=""];
  "sha256:0ada1bbdceb3ac44b8673f98552162aff12463478f433fcd5071cc230ffc0766" -> "sha256:efc0ce842103eaa6a6415afac83fff3b948d1a8c45c3d6ce9b4684533a9116dc" [label=""];
  "sha256:efc0ce842103eaa6a6415afac83fff3b948d1a8c45c3d6ce9b4684533a9116dc" -> "sha256:753bc031e86b93c654f605c1c36a5b72839fb3681ba3f2dda0dbf0b3e7d02f97" [label=""];
  "sha256:753bc031e86b93c654f605c1c36a5b72839fb3681ba3f2dda0dbf0b3e7d02f97" -> "sha256:15ec75a55ede698b03215b74633d1494239747dab687c8dadf78507b8ce66e71" [label=""];
  "sha256:15ec75a55ede698b03215b74633d1494239747dab687c8dadf78507b8ce66e71" -> "sha256:3d042f819286dce7cd0423d9a0abf34651da62513789a77bf1b632c9cf1875ba" [label=""];
  "sha256:6faa268a0cfe89d017442ec3ff1331ae375c87f03d85d3b96b29643c12916577" -> "sha256:3d042f819286dce7cd0423d9a0abf34651da62513789a77bf1b632c9cf1875ba" [label=""];
  "sha256:3d042f819286dce7cd0423d9a0abf34651da62513789a77bf1b632c9cf1875ba" -> "sha256:4b0e92490e543a425a885a66f69fb88cd98fdc42682379e2491dea445d0dd778" [label=""];
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" -> "sha256:01eb680fb653b760a47f268ab6791a61080242d366467c8f20c9975566b3c008" [label=""];
  "sha256:4b0e92490e543a425a885a66f69fb88cd98fdc42682379e2491dea445d0dd778" -> "sha256:01eb680fb653b760a47f268ab6791a61080242d366467c8f20c9975566b3c008" [label=""];
  "sha256:01eb680fb653b760a47f268ab6791a61080242d366467c8f20c9975566b3c008" -> "sha256:135df1b3f465fdbb341047777b622807f4c4ef8da8a7657a8175e089f17b1769" [label=""];
}
