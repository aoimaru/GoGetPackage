[app/sources/471434980.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:7f8e038eb899d5f56da9618d6007648e821045578b7d7bda67405b866b9fdfda" [label="/bin/sh -c apk --no-cache add ca-certificates" shape="box"];
  "sha256:2071aa663e1738a42724f2ab263c17f4f728f2aa0545c87158b591aeefa76e08" [label="docker-image://docker.io/library/golang:1.10.4" shape="ellipse"];
  "sha256:ab1faf111beb5004691c3167df36a7cd391eb27a35acbc77d3a2fc76bf198141" [label="mkdir{path=/go/src/github.com/lyft/ratelimit}" shape="note"];
  "sha256:9b22acc96ed277c781978ecfb4dc1dbba364435a4c3e5e8da3d25459f6671361" [label="/bin/sh -c git clone https://github.com/lyft/ratelimit.git /go/src/github.com/lyft/ratelimit && git reset --hard $RATELIMIT_VERSION" shape="box"];
  "sha256:0c037f4fa71e2bd4ac23c1e2eecb295a7210b5d0d95a7d4ee190fa0073c35f61" [label="/bin/sh -c go get -u github.com/golang/protobuf/protoc-gen-go" shape="box"];
  "sha256:d1fb669b432a3d931f6be241dd9874abaead26255be5cb8f32d367b249efe921" [label="/bin/sh -c script/install-glide" shape="box"];
  "sha256:c15638087ebfbd1372d18764a7e657e3b4e6c3c791fc4c7f349d6a703435aaf9" [label="/bin/sh -c glide install" shape="box"];
  "sha256:7b716fdc027b7cbb8a0648f1641cb1079b65b5a04d63d9be3a41b090c9a4c147" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux go build -o /usr/local/bin/ratelimit -ldflags=\"-w -s\" -v github.com/lyft/ratelimit/src/service_cmd" shape="box"];
  "sha256:33e02f23610f725c57af25a9e310830561475be400fe612021e00d6a7fdeb0df" [label="copy{src=/usr/local/bin/ratelimit, dest=/bin/ratelimit}" shape="note"];
  "sha256:84ca6f69f42ffea2062af5671e2ea7ec8d7a0d5571e485638f71a570df341dbf" [label="/bin/sh -c mkdir -p /srv/runtime_data/current/ratelimit" shape="box"];
  "sha256:b1dc84206ac47ed5853816762201166e8c79fbd236d2f356d508b08558380eab" [label="sha256:b1dc84206ac47ed5853816762201166e8c79fbd236d2f356d508b08558380eab" shape="plaintext"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:7f8e038eb899d5f56da9618d6007648e821045578b7d7bda67405b866b9fdfda" [label=""];
  "sha256:2071aa663e1738a42724f2ab263c17f4f728f2aa0545c87158b591aeefa76e08" -> "sha256:ab1faf111beb5004691c3167df36a7cd391eb27a35acbc77d3a2fc76bf198141" [label=""];
  "sha256:ab1faf111beb5004691c3167df36a7cd391eb27a35acbc77d3a2fc76bf198141" -> "sha256:9b22acc96ed277c781978ecfb4dc1dbba364435a4c3e5e8da3d25459f6671361" [label=""];
  "sha256:9b22acc96ed277c781978ecfb4dc1dbba364435a4c3e5e8da3d25459f6671361" -> "sha256:0c037f4fa71e2bd4ac23c1e2eecb295a7210b5d0d95a7d4ee190fa0073c35f61" [label=""];
  "sha256:0c037f4fa71e2bd4ac23c1e2eecb295a7210b5d0d95a7d4ee190fa0073c35f61" -> "sha256:d1fb669b432a3d931f6be241dd9874abaead26255be5cb8f32d367b249efe921" [label=""];
  "sha256:d1fb669b432a3d931f6be241dd9874abaead26255be5cb8f32d367b249efe921" -> "sha256:c15638087ebfbd1372d18764a7e657e3b4e6c3c791fc4c7f349d6a703435aaf9" [label=""];
  "sha256:c15638087ebfbd1372d18764a7e657e3b4e6c3c791fc4c7f349d6a703435aaf9" -> "sha256:7b716fdc027b7cbb8a0648f1641cb1079b65b5a04d63d9be3a41b090c9a4c147" [label=""];
  "sha256:7f8e038eb899d5f56da9618d6007648e821045578b7d7bda67405b866b9fdfda" -> "sha256:33e02f23610f725c57af25a9e310830561475be400fe612021e00d6a7fdeb0df" [label=""];
  "sha256:7b716fdc027b7cbb8a0648f1641cb1079b65b5a04d63d9be3a41b090c9a4c147" -> "sha256:33e02f23610f725c57af25a9e310830561475be400fe612021e00d6a7fdeb0df" [label=""];
  "sha256:33e02f23610f725c57af25a9e310830561475be400fe612021e00d6a7fdeb0df" -> "sha256:84ca6f69f42ffea2062af5671e2ea7ec8d7a0d5571e485638f71a570df341dbf" [label=""];
  "sha256:84ca6f69f42ffea2062af5671e2ea7ec8d7a0d5571e485638f71a570df341dbf" -> "sha256:b1dc84206ac47ed5853816762201166e8c79fbd236d2f356d508b08558380eab" [label=""];
}

