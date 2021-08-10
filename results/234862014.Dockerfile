[app/sources/234862014.Dockerfile]
digraph {
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" [label="docker-image://docker.io/library/golang:1.9" shape="ellipse"];
  "sha256:f0e398ea246c360fdc2fceaa00968f147ac1424ec80cc24769965cbd7fa3ff8b" [label="/bin/sh -c mkdir -p /var/hyperledger/db         /var/hyperledger/production         /chaincode/input         /chaincode/output         $FABRIC_CFG_PATH" shape="box"];
  "sha256:4be83b6d159ed19148ef22d234a9eb847b0cdb1936d0283285c136bff02badf0" [label="/bin/sh -c apt-get update         && apt-get install -y libsnappy-dev zlib1g-dev libbz2-dev libltdl-dev         && apt-get install -y tree jq         && apt-get install -y unzip         && rm -rf /var/cache/apt" shape="box"];
  "sha256:b95a8ae7fac4e57f407902df855a4cda0c9efd925fed8bcae5bc6f9d46198f7e" [label="/bin/sh -c curl -L https://github.com/hyperledger/fabric-chaintool/releases/download/v0.10.3/chaintool > /usr/local/bin/chaintool         && chmod a+x /usr/local/bin/chaintool" shape="box"];
  "sha256:f6dc6bd326c8e64aedc8384d0158527cedd7781b5b759f344869052e10deda8b" [label="/bin/sh -c go get github.com/golang/protobuf/protoc-gen-go         && go get github.com/kardianos/govendor         && go get github.com/golang/lint/golint         && go get golang.org/x/tools/cmd/goimports         && go get github.com/onsi/ginkgo/ginkgo         && go get github.com/axw/gocov/...         && go get github.com/client9/misspell/cmd/misspell         && go get github.com/AlekSi/gocov-xml" shape="box"];
  "sha256:6a77274ac48e5fef5891d6029080d92ba07a10c41d848c5bad738724ee316bcf" [label="/bin/sh -c mkdir -p $GOPATH/src/github.com/hyperledger         && cd $GOPATH/src/github.com/hyperledger         && wget https://github.com/hyperledger/fabric/archive/v${PROJECT_VERSION}.zip         && unzip v${PROJECT_VERSION}.zip         && rm v${PROJECT_VERSION}.zip         && mv fabric-${PROJECT_VERSION} fabric         && cp $FABRIC_ROOT/devenv/limits.conf /etc/security/limits.conf         && cp -r $FABRIC_ROOT/sampleconfig/* $FABRIC_CFG_PATH" shape="box"];
  "sha256:8250eec71a6e457eac8a180a2b6cec273cfc7a7e74eb42f0ce68f901caa33ab3" [label="/bin/sh -c cd $FABRIC_ROOT        && govendor fetch github.com/miekg/pkcs11" shape="box"];
  "sha256:5dc1fba71173fad50f03e886d1011b8e132f79bc7edfb3c101ac80e2f298a4a4" [label="/bin/sh -c cd $FABRIC_ROOT/         && go install -ldflags \"${LD_FLAGS}\" github.com/hyperledger/fabric/common/configtx/tool/configtxgen         && go install -ldflags \"${LD_FLAGS}\" github.com/hyperledger/fabric/common/tools/cryptogen         && go install -ldflags \"${LD_FLAGS}\" github.com/hyperledger/fabric/common/tools/configtxlator" shape="box"];
  "sha256:7f5dc9217f89e5962ac8659fea7f0ef304456138c9e5bdc4fd1077467f9072ed" [label="/bin/sh -c cd $FABRIC_ROOT/examples/events/block-listener         && go build         && mv block-listener $GOPATH/bin" shape="box"];
  "sha256:e80e017405b596d11a053f06a25b45d7a467bab9107d3e1cd2b49e2c681e8a58" [label="/bin/sh -c ln -s $GOPATH /opt/gopath" shape="box"];
  "sha256:58c35e95ed853916a375b001fc0341c114022e652dec77ac00e4c1c12bbfdcef" [label="mkdir{path=/src/github.com/hyperledger/fabric}" shape="note"];
  "sha256:b936e3208a8620923b67fcbce78bf58832059189984acb102a7d30ae15d0f44e" [label="sha256:b936e3208a8620923b67fcbce78bf58832059189984acb102a7d30ae15d0f44e" shape="plaintext"];
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" -> "sha256:f0e398ea246c360fdc2fceaa00968f147ac1424ec80cc24769965cbd7fa3ff8b" [label=""];
  "sha256:f0e398ea246c360fdc2fceaa00968f147ac1424ec80cc24769965cbd7fa3ff8b" -> "sha256:4be83b6d159ed19148ef22d234a9eb847b0cdb1936d0283285c136bff02badf0" [label=""];
  "sha256:4be83b6d159ed19148ef22d234a9eb847b0cdb1936d0283285c136bff02badf0" -> "sha256:b95a8ae7fac4e57f407902df855a4cda0c9efd925fed8bcae5bc6f9d46198f7e" [label=""];
  "sha256:b95a8ae7fac4e57f407902df855a4cda0c9efd925fed8bcae5bc6f9d46198f7e" -> "sha256:f6dc6bd326c8e64aedc8384d0158527cedd7781b5b759f344869052e10deda8b" [label=""];
  "sha256:f6dc6bd326c8e64aedc8384d0158527cedd7781b5b759f344869052e10deda8b" -> "sha256:6a77274ac48e5fef5891d6029080d92ba07a10c41d848c5bad738724ee316bcf" [label=""];
  "sha256:6a77274ac48e5fef5891d6029080d92ba07a10c41d848c5bad738724ee316bcf" -> "sha256:8250eec71a6e457eac8a180a2b6cec273cfc7a7e74eb42f0ce68f901caa33ab3" [label=""];
  "sha256:8250eec71a6e457eac8a180a2b6cec273cfc7a7e74eb42f0ce68f901caa33ab3" -> "sha256:5dc1fba71173fad50f03e886d1011b8e132f79bc7edfb3c101ac80e2f298a4a4" [label=""];
  "sha256:5dc1fba71173fad50f03e886d1011b8e132f79bc7edfb3c101ac80e2f298a4a4" -> "sha256:7f5dc9217f89e5962ac8659fea7f0ef304456138c9e5bdc4fd1077467f9072ed" [label=""];
  "sha256:7f5dc9217f89e5962ac8659fea7f0ef304456138c9e5bdc4fd1077467f9072ed" -> "sha256:e80e017405b596d11a053f06a25b45d7a467bab9107d3e1cd2b49e2c681e8a58" [label=""];
  "sha256:e80e017405b596d11a053f06a25b45d7a467bab9107d3e1cd2b49e2c681e8a58" -> "sha256:58c35e95ed853916a375b001fc0341c114022e652dec77ac00e4c1c12bbfdcef" [label=""];
  "sha256:58c35e95ed853916a375b001fc0341c114022e652dec77ac00e4c1c12bbfdcef" -> "sha256:b936e3208a8620923b67fcbce78bf58832059189984acb102a7d30ae15d0f44e" [label=""];
}

