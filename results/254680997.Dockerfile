[app/sources/254680997.Dockerfile]
digraph {
  "sha256:bb6b04e789abc09047e8588c14f6509b7f35510a96b59871c06bb922123848fd" [label="docker-image://docker.io/library/golang:1.9@sha256:8b5968585131604a92af02f5690713efadf029cc8dad53f79280b87a80eb1354" shape="ellipse"];
  "sha256:800e6a94ff116760db09598b94bfe7a08e5808d91019f4f15b93ef97f9373963" [label="/bin/sh -c mkdir -p /var/hyperledger/db         /var/hyperledger/production         $GOPATH/src/github.com/hyperledger         $FABRIC_CFG_PATH         $FABRIC_CFG_PATH/crypto-config         /chaincode/input         /chaincode/output         $FABRIC_CA_SERVER_HOME         $FABRIC_CA_CLIENT_HOME         $CA_CFG_PATH         /var/hyperledger/fabric-ca-server" shape="box"];
  "sha256:2b944d0b7b6e3054185afa2b9ffe7f7dd8f96c798b6a2aa26e249ccc27ee566e" [label="/bin/sh -c apt-get update         && apt-get install -y apt-utils python-dev         && apt-get install -y libsnappy-dev zlib1g-dev libbz2-dev libyaml-dev libltdl-dev libtool         && apt-get install -y python-pip         && apt-get install -y vim tree jq unzip         && pip install --upgrade pip         && pip install behave nose docker-compose         && rm -rf /var/cache/apt" shape="box"];
  "sha256:e5f2eec2b4560ee89628ede35f9170c0d5d53e0afa6384e1bd03844024446cc8" [label="/bin/sh -c curl -L https://github.com/hyperledger/fabric-chaintool/releases/download/v0.10.3/chaintool > /usr/local/bin/chaintool         && chmod a+x /usr/local/bin/chaintool" shape="box"];
  "sha256:6189ba9e3b03c6eeb4be4e868c460237a3f4a2ad43a43da9ec6a5f294d3c9a4d" [label="/bin/sh -c go get github.com/golang/protobuf/protoc-gen-go         && go get github.com/kardianos/govendor         && go get github.com/golang/lint/golint         && go get golang.org/x/tools/cmd/goimports         && go get github.com/onsi/ginkgo/ginkgo         && go get github.com/axw/gocov/...         && go get github.com/client9/misspell/cmd/misspell         && go get github.com/AlekSi/gocov-xml" shape="box"];
  "sha256:0b3bd29daafc896c0f0794e980bfe374c6650050eca669c430df18da738b648c" [label="/bin/sh -c cd $GOPATH/src/github.com/hyperledger        && wget https://github.com/hyperledger/fabric/archive/v${PROJECT_VERSION}.zip && unzip v${PROJECT_VERSION}.zip && rm v${PROJECT_VERSION}.zip && mv fabric-${PROJECT_VERSION} fabric         && cp $FABRIC_ROOT/devenv/limits.conf /etc/security/limits.conf         && cp -r $FABRIC_ROOT/sampleconfig/* $FABRIC_CFG_PATH/         && cp $FABRIC_ROOT/examples/e2e_cli/configtx.yaml $FABRIC_CFG_PATH/         && cp $FABRIC_ROOT/examples/e2e_cli/crypto-config.yaml $FABRIC_CFG_PATH/" shape="box"];
  "sha256:9c8665ee551f5d44c63bfc5e00bdaa58108bf8ebb0a856046c5f7b03194b3511" [label="/bin/sh -c cd $FABRIC_ROOT/         && CGO_CFLAGS=\" \" go install -tags \"nopkcs11\" -ldflags \"-X github.com/hyperledger/fabric/common/configtx/tool/configtxgen/metadata.Version=${PROJECT_VERSION}\" github.com/hyperledger/fabric/common/configtx/tool/configtxgen         && CGO_CFLAGS=\" \" go install -tags \"\" -ldflags \"-X github.com/hyperledger/fabric/common/tools/cryptogen/metadata.Version=${PROJECT_VERSION}\" github.com/hyperledger/fabric/common/tools/cryptogen         && CGO_CFLAGS=\" \" go install -tags \"\" -ldflags \"-X github.com/hyperledger/fabric/common/tools/configtxlator/metadata.Version=${PROJECT_VERSION}\" github.com/hyperledger/fabric/common/tools/configtxlator" shape="box"];
  "sha256:ba3c1c2e8aac32b310373750868d3ecfed2a4ff4b89f36f696afff326a23c211" [label="/bin/sh -c cd $FABRIC_ROOT/examples/events/block-listener         && go install         && go clean" shape="box"];
  "sha256:c94c9a6c872962dc705b41e25ace11f9ac8ab07b04be34c22dbfa5e4e1a2bf40" [label="/bin/sh -c cd $FABRIC_ROOT/peer         && CGO_CFLAGS=\" \" go install -ldflags \"$LD_FLAGS -linkmode external -extldflags '-static -lpthread'\"         && go clean" shape="box"];
  "sha256:762550ad162fd3cb27703de8acfef0de535affe59dadd0109e17e1452392dec9" [label="/bin/sh -c cd $FABRIC_ROOT/orderer         && CGO_CFLAGS=\" \" go install -ldflags \"$LD_FLAGS -linkmode external -extldflags '-static -lpthread'\"         && go clean" shape="box"];
  "sha256:a33876ef0e3da57effd4cd44a2d2831c804f8dcdbed522ede9768c770e9c8fda" [label="/bin/sh -c cd $GOPATH/src/github.com/hyperledger     && wget https://github.com/hyperledger/fabric-ca/archive/v${PROJECT_VERSION}.zip && unzip v${PROJECT_VERSION}.zip && rm v${PROJECT_VERSION}.zip && mv fabric-ca-${PROJECT_VERSION} fabric-ca     && go install -ldflags \" -linkmode external -extldflags '-static -lpthread'\" github.com/hyperledger/fabric-ca/cmd/...     && cp $FABRIC_CA_ROOT/images/fabric-ca/payload/*.pem $FABRIC_CA_HOME/     && go clean" shape="box"];
  "sha256:583eac5596e4c70e832d2b948d469936bfcaeb1d9032c77fe447f470f3194404" [label="local://context" shape="ellipse"];
  "sha256:5237186d17246efb7d16e1ec87dff502a943c4934b19c765ead6528fcc3a5492" [label="copy{src=/scripts/*.sh, dest=/tmp/}" shape="note"];
  "sha256:bb287178fc7f04fc20983e87bf79d3c6d72af96f102cb6d066d4f4d1c7f10c76" [label="/bin/sh -c bash /tmp/clean_pkg.sh" shape="box"];
  "sha256:608119b1f9132994f03f9a8dc086c4aff56abf076965bb5da61d4dc354ec774b" [label="mkdir{path=/go/src/github.com/hyperledger/fabric}" shape="note"];
  "sha256:7ca99683582b43b6d6227591107a0a9cb21fd48b7672298d2b8b75c3b2fe4c0c" [label="/bin/sh -c ln -s $GOPATH /opt/gopath" shape="box"];
  "sha256:783eb03a322a48db5d1146684fe201be2bb017992acbf40ba74d7e3eb7528629" [label="sha256:783eb03a322a48db5d1146684fe201be2bb017992acbf40ba74d7e3eb7528629" shape="plaintext"];
  "sha256:bb6b04e789abc09047e8588c14f6509b7f35510a96b59871c06bb922123848fd" -> "sha256:800e6a94ff116760db09598b94bfe7a08e5808d91019f4f15b93ef97f9373963" [label=""];
  "sha256:800e6a94ff116760db09598b94bfe7a08e5808d91019f4f15b93ef97f9373963" -> "sha256:2b944d0b7b6e3054185afa2b9ffe7f7dd8f96c798b6a2aa26e249ccc27ee566e" [label=""];
  "sha256:2b944d0b7b6e3054185afa2b9ffe7f7dd8f96c798b6a2aa26e249ccc27ee566e" -> "sha256:e5f2eec2b4560ee89628ede35f9170c0d5d53e0afa6384e1bd03844024446cc8" [label=""];
  "sha256:e5f2eec2b4560ee89628ede35f9170c0d5d53e0afa6384e1bd03844024446cc8" -> "sha256:6189ba9e3b03c6eeb4be4e868c460237a3f4a2ad43a43da9ec6a5f294d3c9a4d" [label=""];
  "sha256:6189ba9e3b03c6eeb4be4e868c460237a3f4a2ad43a43da9ec6a5f294d3c9a4d" -> "sha256:0b3bd29daafc896c0f0794e980bfe374c6650050eca669c430df18da738b648c" [label=""];
  "sha256:0b3bd29daafc896c0f0794e980bfe374c6650050eca669c430df18da738b648c" -> "sha256:9c8665ee551f5d44c63bfc5e00bdaa58108bf8ebb0a856046c5f7b03194b3511" [label=""];
  "sha256:9c8665ee551f5d44c63bfc5e00bdaa58108bf8ebb0a856046c5f7b03194b3511" -> "sha256:ba3c1c2e8aac32b310373750868d3ecfed2a4ff4b89f36f696afff326a23c211" [label=""];
  "sha256:ba3c1c2e8aac32b310373750868d3ecfed2a4ff4b89f36f696afff326a23c211" -> "sha256:c94c9a6c872962dc705b41e25ace11f9ac8ab07b04be34c22dbfa5e4e1a2bf40" [label=""];
  "sha256:c94c9a6c872962dc705b41e25ace11f9ac8ab07b04be34c22dbfa5e4e1a2bf40" -> "sha256:762550ad162fd3cb27703de8acfef0de535affe59dadd0109e17e1452392dec9" [label=""];
  "sha256:762550ad162fd3cb27703de8acfef0de535affe59dadd0109e17e1452392dec9" -> "sha256:a33876ef0e3da57effd4cd44a2d2831c804f8dcdbed522ede9768c770e9c8fda" [label=""];
  "sha256:a33876ef0e3da57effd4cd44a2d2831c804f8dcdbed522ede9768c770e9c8fda" -> "sha256:5237186d17246efb7d16e1ec87dff502a943c4934b19c765ead6528fcc3a5492" [label=""];
  "sha256:583eac5596e4c70e832d2b948d469936bfcaeb1d9032c77fe447f470f3194404" -> "sha256:5237186d17246efb7d16e1ec87dff502a943c4934b19c765ead6528fcc3a5492" [label=""];
  "sha256:5237186d17246efb7d16e1ec87dff502a943c4934b19c765ead6528fcc3a5492" -> "sha256:bb287178fc7f04fc20983e87bf79d3c6d72af96f102cb6d066d4f4d1c7f10c76" [label=""];
  "sha256:bb287178fc7f04fc20983e87bf79d3c6d72af96f102cb6d066d4f4d1c7f10c76" -> "sha256:608119b1f9132994f03f9a8dc086c4aff56abf076965bb5da61d4dc354ec774b" [label=""];
  "sha256:608119b1f9132994f03f9a8dc086c4aff56abf076965bb5da61d4dc354ec774b" -> "sha256:7ca99683582b43b6d6227591107a0a9cb21fd48b7672298d2b8b75c3b2fe4c0c" [label=""];
  "sha256:7ca99683582b43b6d6227591107a0a9cb21fd48b7672298d2b8b75c3b2fe4c0c" -> "sha256:783eb03a322a48db5d1146684fe201be2bb017992acbf40ba74d7e3eb7528629" [label=""];
}

