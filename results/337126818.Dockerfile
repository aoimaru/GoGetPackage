[app/sources/337126818.Dockerfile]
digraph {
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" [label="docker-image://docker.io/library/golang:1.9" shape="ellipse"];
  "sha256:5fbab1f1e752eacef4c4b35796fef31555f68da7b14cca4267d6a50ba52d9ee0" [label="/bin/sh -c go get -d cloud.google.com/go/compute/metadata `#and 6 other pkgs` &&    (cd /go/src/cloud.google.com/go && (git cat-file -t $REV 2>/dev/null || git fetch -q origin $REV) && git reset --hard $REV)" shape="box"];
  "sha256:9f28e3b62900c54fe520f80b8ff8c38ef8d2d9d3062d5de4685f116cfaaf8127" [label="/bin/sh -c go get -d github.com/golang/protobuf/proto `#and 6 other pkgs` &&    (cd /go/src/github.com/golang/protobuf && (git cat-file -t $REV 2>/dev/null || git fetch -q origin $REV) && git reset --hard $REV)" shape="box"];
  "sha256:f2299ab23fce179c2e89b765cd54b2c7c128cb991902e6c4c0a18c523c68fbe8" [label="/bin/sh -c go get -d github.com/googleapis/gax-go &&    (cd /go/src/github.com/googleapis/gax-go && (git cat-file -t $REV 2>/dev/null || git fetch -q origin $REV) && git reset --hard $REV)" shape="box"];
  "sha256:4823cdd6b3df2954a0cbe3903bb57d3415210e1ede64fb24e4f68bb52feaf3fa" [label="/bin/sh -c go get -d go4.org/syncutil/singleflight &&    (cd /go/src/go4.org && (git cat-file -t $REV 2>/dev/null || git fetch -q origin $REV) && git reset --hard $REV)" shape="box"];
  "sha256:7b5aaca0f2219a17a8fc5c6180ebe1594862bec7cf2be91720432b862d9a17e3" [label="/bin/sh -c go get -d golang.org/x/build/autocertcache &&    (cd /go/src/golang.org/x/build && (git cat-file -t $REV 2>/dev/null || git fetch -q origin $REV) && git reset --hard $REV)" shape="box"];
  "sha256:63dae41e7a3e4db8c294f4c5e553d908d3915e0d87535b119b4aeae07662608c" [label="/bin/sh -c go get -d golang.org/x/crypto/acme `#and 2 other pkgs` &&    (cd /go/src/golang.org/x/crypto && (git cat-file -t $REV 2>/dev/null || git fetch -q origin $REV) && git reset --hard $REV)" shape="box"];
  "sha256:c6e2839629e8802093219d7ca297244e8350dc57064ebe7895221b3f02251713" [label="/bin/sh -c go get -d golang.org/x/oauth2 `#and 5 other pkgs` &&    (cd /go/src/golang.org/x/oauth2 && (git cat-file -t $REV 2>/dev/null || git fetch -q origin $REV) && git reset --hard $REV)" shape="box"];
  "sha256:e06ade0cc7134a939eda2b63e429c64d7d7e8a4af0977d962c25305ff0e5d357" [label="/bin/sh -c go get -d golang.org/x/text/secure/bidirule `#and 4 other pkgs` &&    (cd /go/src/golang.org/x/text && (git cat-file -t $REV 2>/dev/null || git fetch -q origin $REV) && git reset --hard $REV)" shape="box"];
  "sha256:8969d5fdaf9a362396edd94a6e81162d6040606c3e26712d9b0a5eb97be164df" [label="/bin/sh -c go get -d google.golang.org/api/gensupport `#and 9 other pkgs` &&    (cd /go/src/google.golang.org/api && (git cat-file -t $REV 2>/dev/null || git fetch -q origin $REV) && git reset --hard $REV)" shape="box"];
  "sha256:947aa50f57c671baa836941ebe89b231d719ed210ee494629a345b7d6439087e" [label="/bin/sh -c go get -d google.golang.org/genproto/googleapis/api/annotations `#and 3 other pkgs` &&    (cd /go/src/google.golang.org/genproto && (git cat-file -t $REV 2>/dev/null || git fetch -q origin $REV) && git reset --hard $REV)" shape="box"];
  "sha256:25cd6009c82d8fb6dd392df4037fe45395e700cfa0075be122d3c571be781da3" [label="/bin/sh -c go get -d google.golang.org/grpc `#and 23 other pkgs` &&    (cd /go/src/google.golang.org/grpc && (git cat-file -t $REV 2>/dev/null || git fetch -q origin $REV) && git reset --hard $REV)" shape="box"];
  "sha256:44f624a8d008c2c8a65a54ab11dbcad2fd436edf97e75120cd82c9ea1197a0a1" [label="/bin/sh -c go install cloud.google.com/go/compute/metadata \tcloud.google.com/go/iam \tcloud.google.com/go/internal \tcloud.google.com/go/internal/optional \tcloud.google.com/go/internal/version \tcloud.google.com/go/storage \tgithub.com/golang/protobuf/proto \tgithub.com/golang/protobuf/protoc-gen-go/descriptor \tgithub.com/golang/protobuf/ptypes \tgithub.com/golang/protobuf/ptypes/any \tgithub.com/golang/protobuf/ptypes/duration \tgithub.com/golang/protobuf/ptypes/timestamp \tgithub.com/googleapis/gax-go \tgo4.org/syncutil/singleflight \tgolang.org/x/build/autocertcache \tgolang.org/x/crypto/acme \tgolang.org/x/crypto/acme/autocert \tgolang.org/x/oauth2 \tgolang.org/x/oauth2/google \tgolang.org/x/oauth2/internal \tgolang.org/x/oauth2/jws \tgolang.org/x/oauth2/jwt \tgolang.org/x/text/secure/bidirule \tgolang.org/x/text/transform \tgolang.org/x/text/unicode/bidi \tgolang.org/x/text/unicode/norm \tgoogle.golang.org/api/gensupport \tgoogle.golang.org/api/googleapi \tgoogle.golang.org/api/googleapi/internal/uritemplates \tgoogle.golang.org/api/googleapi/transport \tgoogle.golang.org/api/internal \tgoogle.golang.org/api/iterator \tgoogle.golang.org/api/option \tgoogle.golang.org/api/storage/v1 \tgoogle.golang.org/api/transport/http \tgoogle.golang.org/genproto/googleapis/api/annotations \tgoogle.golang.org/genproto/googleapis/iam/v1 \tgoogle.golang.org/genproto/googleapis/rpc/status \tgoogle.golang.org/grpc \tgoogle.golang.org/grpc/balancer \tgoogle.golang.org/grpc/balancer/base \tgoogle.golang.org/grpc/balancer/roundrobin \tgoogle.golang.org/grpc/codes \tgoogle.golang.org/grpc/connectivity \tgoogle.golang.org/grpc/credentials \tgoogle.golang.org/grpc/encoding \tgoogle.golang.org/grpc/encoding/proto \tgoogle.golang.org/grpc/grpclb/grpc_lb_v1/messages \tgoogle.golang.org/grpc/grpclog \tgoogle.golang.org/grpc/internal \tgoogle.golang.org/grpc/keepalive \tgoogle.golang.org/grpc/metadata \tgoogle.golang.org/grpc/naming \tgoogle.golang.org/grpc/peer \tgoogle.golang.org/grpc/resolver \tgoogle.golang.org/grpc/resolver/dns \tgoogle.golang.org/grpc/resolver/passthrough \tgoogle.golang.org/grpc/stats \tgoogle.golang.org/grpc/status \tgoogle.golang.org/grpc/tap \tgoogle.golang.org/grpc/transport" shape="box"];
  "sha256:5a1cd64a7bc6a2f51facb5321549c657ad4f861705a3e0c03227edeb9386c113" [label="local://context" shape="ellipse"];
  "sha256:dbf6a942ad8f5e420d84b9b6f5ee5a7227ac9a28456a104037aad57dab5d2a1e" [label="copy{src=/, dest=/go/src/golang.org/x/net/}" shape="note"];
  "sha256:877c59861d289506c78d77597e151760b9f1340eb9e9cfe4c151af21d2d0f83c" [label="/bin/sh -c go install -tags \"h2demo netgo\" -ldflags \"-linkmode=external -extldflags '-static -pthread'\" golang.org/x/net/http2/h2demo" shape="box"];
  "sha256:37792f2de8d96d289ed72641126d4ba18710c2a74a19e511d304a86848cbc122" [label="sha256:37792f2de8d96d289ed72641126d4ba18710c2a74a19e511d304a86848cbc122" shape="plaintext"];
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" -> "sha256:5fbab1f1e752eacef4c4b35796fef31555f68da7b14cca4267d6a50ba52d9ee0" [label=""];
  "sha256:5fbab1f1e752eacef4c4b35796fef31555f68da7b14cca4267d6a50ba52d9ee0" -> "sha256:9f28e3b62900c54fe520f80b8ff8c38ef8d2d9d3062d5de4685f116cfaaf8127" [label=""];
  "sha256:9f28e3b62900c54fe520f80b8ff8c38ef8d2d9d3062d5de4685f116cfaaf8127" -> "sha256:f2299ab23fce179c2e89b765cd54b2c7c128cb991902e6c4c0a18c523c68fbe8" [label=""];
  "sha256:f2299ab23fce179c2e89b765cd54b2c7c128cb991902e6c4c0a18c523c68fbe8" -> "sha256:4823cdd6b3df2954a0cbe3903bb57d3415210e1ede64fb24e4f68bb52feaf3fa" [label=""];
  "sha256:4823cdd6b3df2954a0cbe3903bb57d3415210e1ede64fb24e4f68bb52feaf3fa" -> "sha256:7b5aaca0f2219a17a8fc5c6180ebe1594862bec7cf2be91720432b862d9a17e3" [label=""];
  "sha256:7b5aaca0f2219a17a8fc5c6180ebe1594862bec7cf2be91720432b862d9a17e3" -> "sha256:63dae41e7a3e4db8c294f4c5e553d908d3915e0d87535b119b4aeae07662608c" [label=""];
  "sha256:63dae41e7a3e4db8c294f4c5e553d908d3915e0d87535b119b4aeae07662608c" -> "sha256:c6e2839629e8802093219d7ca297244e8350dc57064ebe7895221b3f02251713" [label=""];
  "sha256:c6e2839629e8802093219d7ca297244e8350dc57064ebe7895221b3f02251713" -> "sha256:e06ade0cc7134a939eda2b63e429c64d7d7e8a4af0977d962c25305ff0e5d357" [label=""];
  "sha256:e06ade0cc7134a939eda2b63e429c64d7d7e8a4af0977d962c25305ff0e5d357" -> "sha256:8969d5fdaf9a362396edd94a6e81162d6040606c3e26712d9b0a5eb97be164df" [label=""];
  "sha256:8969d5fdaf9a362396edd94a6e81162d6040606c3e26712d9b0a5eb97be164df" -> "sha256:947aa50f57c671baa836941ebe89b231d719ed210ee494629a345b7d6439087e" [label=""];
  "sha256:947aa50f57c671baa836941ebe89b231d719ed210ee494629a345b7d6439087e" -> "sha256:25cd6009c82d8fb6dd392df4037fe45395e700cfa0075be122d3c571be781da3" [label=""];
  "sha256:25cd6009c82d8fb6dd392df4037fe45395e700cfa0075be122d3c571be781da3" -> "sha256:44f624a8d008c2c8a65a54ab11dbcad2fd436edf97e75120cd82c9ea1197a0a1" [label=""];
  "sha256:44f624a8d008c2c8a65a54ab11dbcad2fd436edf97e75120cd82c9ea1197a0a1" -> "sha256:dbf6a942ad8f5e420d84b9b6f5ee5a7227ac9a28456a104037aad57dab5d2a1e" [label=""];
  "sha256:5a1cd64a7bc6a2f51facb5321549c657ad4f861705a3e0c03227edeb9386c113" -> "sha256:dbf6a942ad8f5e420d84b9b6f5ee5a7227ac9a28456a104037aad57dab5d2a1e" [label=""];
  "sha256:dbf6a942ad8f5e420d84b9b6f5ee5a7227ac9a28456a104037aad57dab5d2a1e" -> "sha256:877c59861d289506c78d77597e151760b9f1340eb9e9cfe4c151af21d2d0f83c" [label=""];
  "sha256:877c59861d289506c78d77597e151760b9f1340eb9e9cfe4c151af21d2d0f83c" -> "sha256:37792f2de8d96d289ed72641126d4ba18710c2a74a19e511d304a86848cbc122" [label=""];
}

