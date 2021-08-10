[app/sources/455239803.Dockerfile]
digraph {
  "sha256:e26af021b03d514beac401d87df4d49cb13844f8185b906d562f2f2d57f9c74b" [label="local://context" shape="ellipse"];
  "sha256:1b87c007d747dd15fda11555e3337010e39f7f3b7ebe2e56dd6674cf69cf6b3b" [label="docker-image://docker.io/bftsmart/fabric-common:amd64-1.3.0" shape="ellipse"];
  "sha256:f2f0e97871f3d96e0da23c372edd1fb910df9cdec17c26c25f0eebd031a3d445" [label="/bin/sh -c apt-get -y install libltdl7" shape="box"];
  "sha256:5c65c65dd89cf4bbffbb11f0ebe923da89375ae5f27311e4b587ce27414b0048" [label="mkdir{path=/etc/hyperledger/fabric}" shape="note"];
  "sha256:9fe2ba37c969bdb7f55983cdc58548ec2e1284249878e9662fb9a4ed8287ef26" [label="copy{src=/temp/sampleconfig, dest=/etc/hyperledger/fabric/}" shape="note"];
  "sha256:53633597773aa86aa90de54984b1d9cb24e412e014080a0e1d51ca1b12220c50" [label="/bin/sh -c rm ./core.yaml" shape="box"];
  "sha256:37769dbe86613a8ad7d3b379495b947f9bbdd056ef5b20f9b89ae8fd2f14d5ed" [label="/bin/sh -c rm ./configtx.yaml" shape="box"];
  "sha256:4dc0e73ae1fd036fa09f9b013dec6b080c4a01d7646f486de32f4fe2c77910ee" [label="copy{src=/temp/orderer, dest=/usr/bin/orderer}" shape="note"];
  "sha256:323ee690d7a4109485cc7d62aaf45a6924760e3b0ca0027fde151feee0234f98" [label="copy{src=/temp/configtxgen, dest=/usr/bin/configtxgen}" shape="note"];
  "sha256:6c3ea95e0425c2b7b494487f23cca15f69b613c2e6b2065b5e227be9c2b30476" [label="copy{src=/temp/libunixdomainsocket-linux-i386.so, dest=/usr/lib/}" shape="note"];
  "sha256:5f1f60c47d1cb14fcd749662e5251b7ae2609464566cc91640605312cc3a35cb" [label="copy{src=/temp/libunixdomainsocket-linux-x86_64.so, dest=/usr/lib/}" shape="note"];
  "sha256:177dd0faaa3332af4a8055dc7b29035a3c9d375e63f0b39fcce24c71ee92cc5d" [label="mkdir{path=/etc/bftsmart-orderer}" shape="note"];
  "sha256:14fbd97ab353a7b347abf64a4fbb64c9abcb01073e5e87d8b12a75aeaa57b92e" [label="copy{src=/temp/startFrontend.sh, dest=/etc/bftsmart-orderer/}" shape="note"];
  "sha256:7076bce30aa60f2a927e7f90d809b7a2c987853edd858f2a2b3f9f8642b5e64c" [label="/bin/sh -c chmod +x ./startFrontend.sh" shape="box"];
  "sha256:40dc2dd23159d246026cc951634661f74d7fb384ed2782f56c31ba3d4cc773f1" [label="sha256:40dc2dd23159d246026cc951634661f74d7fb384ed2782f56c31ba3d4cc773f1" shape="plaintext"];
  "sha256:1b87c007d747dd15fda11555e3337010e39f7f3b7ebe2e56dd6674cf69cf6b3b" -> "sha256:f2f0e97871f3d96e0da23c372edd1fb910df9cdec17c26c25f0eebd031a3d445" [label=""];
  "sha256:f2f0e97871f3d96e0da23c372edd1fb910df9cdec17c26c25f0eebd031a3d445" -> "sha256:5c65c65dd89cf4bbffbb11f0ebe923da89375ae5f27311e4b587ce27414b0048" [label=""];
  "sha256:5c65c65dd89cf4bbffbb11f0ebe923da89375ae5f27311e4b587ce27414b0048" -> "sha256:9fe2ba37c969bdb7f55983cdc58548ec2e1284249878e9662fb9a4ed8287ef26" [label=""];
  "sha256:e26af021b03d514beac401d87df4d49cb13844f8185b906d562f2f2d57f9c74b" -> "sha256:9fe2ba37c969bdb7f55983cdc58548ec2e1284249878e9662fb9a4ed8287ef26" [label=""];
  "sha256:9fe2ba37c969bdb7f55983cdc58548ec2e1284249878e9662fb9a4ed8287ef26" -> "sha256:53633597773aa86aa90de54984b1d9cb24e412e014080a0e1d51ca1b12220c50" [label=""];
  "sha256:53633597773aa86aa90de54984b1d9cb24e412e014080a0e1d51ca1b12220c50" -> "sha256:37769dbe86613a8ad7d3b379495b947f9bbdd056ef5b20f9b89ae8fd2f14d5ed" [label=""];
  "sha256:37769dbe86613a8ad7d3b379495b947f9bbdd056ef5b20f9b89ae8fd2f14d5ed" -> "sha256:4dc0e73ae1fd036fa09f9b013dec6b080c4a01d7646f486de32f4fe2c77910ee" [label=""];
  "sha256:e26af021b03d514beac401d87df4d49cb13844f8185b906d562f2f2d57f9c74b" -> "sha256:4dc0e73ae1fd036fa09f9b013dec6b080c4a01d7646f486de32f4fe2c77910ee" [label=""];
  "sha256:4dc0e73ae1fd036fa09f9b013dec6b080c4a01d7646f486de32f4fe2c77910ee" -> "sha256:323ee690d7a4109485cc7d62aaf45a6924760e3b0ca0027fde151feee0234f98" [label=""];
  "sha256:e26af021b03d514beac401d87df4d49cb13844f8185b906d562f2f2d57f9c74b" -> "sha256:323ee690d7a4109485cc7d62aaf45a6924760e3b0ca0027fde151feee0234f98" [label=""];
  "sha256:323ee690d7a4109485cc7d62aaf45a6924760e3b0ca0027fde151feee0234f98" -> "sha256:6c3ea95e0425c2b7b494487f23cca15f69b613c2e6b2065b5e227be9c2b30476" [label=""];
  "sha256:e26af021b03d514beac401d87df4d49cb13844f8185b906d562f2f2d57f9c74b" -> "sha256:6c3ea95e0425c2b7b494487f23cca15f69b613c2e6b2065b5e227be9c2b30476" [label=""];
  "sha256:6c3ea95e0425c2b7b494487f23cca15f69b613c2e6b2065b5e227be9c2b30476" -> "sha256:5f1f60c47d1cb14fcd749662e5251b7ae2609464566cc91640605312cc3a35cb" [label=""];
  "sha256:e26af021b03d514beac401d87df4d49cb13844f8185b906d562f2f2d57f9c74b" -> "sha256:5f1f60c47d1cb14fcd749662e5251b7ae2609464566cc91640605312cc3a35cb" [label=""];
  "sha256:5f1f60c47d1cb14fcd749662e5251b7ae2609464566cc91640605312cc3a35cb" -> "sha256:177dd0faaa3332af4a8055dc7b29035a3c9d375e63f0b39fcce24c71ee92cc5d" [label=""];
  "sha256:177dd0faaa3332af4a8055dc7b29035a3c9d375e63f0b39fcce24c71ee92cc5d" -> "sha256:14fbd97ab353a7b347abf64a4fbb64c9abcb01073e5e87d8b12a75aeaa57b92e" [label=""];
  "sha256:e26af021b03d514beac401d87df4d49cb13844f8185b906d562f2f2d57f9c74b" -> "sha256:14fbd97ab353a7b347abf64a4fbb64c9abcb01073e5e87d8b12a75aeaa57b92e" [label=""];
  "sha256:14fbd97ab353a7b347abf64a4fbb64c9abcb01073e5e87d8b12a75aeaa57b92e" -> "sha256:7076bce30aa60f2a927e7f90d809b7a2c987853edd858f2a2b3f9f8642b5e64c" [label=""];
  "sha256:7076bce30aa60f2a927e7f90d809b7a2c987853edd858f2a2b3f9f8642b5e64c" -> "sha256:40dc2dd23159d246026cc951634661f74d7fb384ed2782f56c31ba3d4cc773f1" [label=""];
}

