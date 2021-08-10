[app/sources/291126532.Dockerfile]
digraph {
  "sha256:ffd98b3f9f30be9e59696775d7a59378c100bf2680e788754380af9fa27f8cda" [label="local://context" shape="ellipse"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:d6dcd9e773897e3504f4f2982e080a1ef91f7de22d613fab527c2639c37faf2a" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends   ca-certificates   tar   ncdu   curl   lame" shape="box"];
  "sha256:26957da4114fa0cfc8ca767a69fa2e5782db0443792d86e58fe6d56a950e6b58" [label="/bin/sh -c curl -L   \"https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow-cpu-linux-x86_64-1.8.0.tar.gz\" |   tar -C /usr/local -xz" shape="box"];
  "sha256:a0524b8515da8ce797aff261ff42392d31fb79327f1e5bff753fe31f6ca9664a" [label="copy{src=/msghub/sdr2msghub/model.pb, dest=/model.pb}" shape="note"];
  "sha256:f7ca40a421372cfba586482f432bde258bf377a3a7cc932ad25cd89e82583053" [label="docker-image://docker.io/library/golang:1.10" shape="ellipse"];
  "sha256:30d21596bb008ed38a77cea106817cc8688f8d285368361aea0234fe9eb9bbb6" [label="/bin/sh -c apt-get update && apt-get install -y   curl   git   lame   libmp3lame-dev" shape="box"];
  "sha256:f2773572884536c6e84177f5c01d1fea1f07c0d66f62ff8d88269c21ca99e940" [label="/bin/sh -c curl -L   \"https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow-cpu-linux-x86_64-1.8.0.tar.gz\" |   tar -C /usr/local -xz" shape="box"];
  "sha256:adabae10d6792f74ec3accffb525b3ac785113ad5119f1cfa9d6c637dc47cb8c" [label="/bin/sh -c mkdir -p ${GOPATH}/src/github.com/tensorflow/ &&   cd ${GOPATH}/src/github.com/tensorflow/ &&   git clone https://github.com/tensorflow/tensorflow.git" shape="box"];
  "sha256:c4043127688daa82ab9445379983b034c0c7cfa2b96ce723bc6604879f015c5d" [label="/bin/sh -c cd ${GOPATH}/src/github.com/tensorflow/tensorflow && git checkout v1.8.0" shape="box"];
  "sha256:529911f2dabcda24d762ac7a4f0565c946b9e732bd119e4d807c381f6af5ae32" [label="/bin/sh -c go get github.com/Shopify/sarama" shape="box"];
  "sha256:ee07835293fbec57c3f69340e1cf2c2aa1fd926ea890923330ef75528fcca772" [label="/bin/sh -c go get github.com/viert/lame" shape="box"];
  "sha256:399b5d370ade1a319bd959040bbc3e70a4e68fc156c5932a8b34550431ca4380" [label="copy{src=/msghub/sdr2msghub/main.go, dest=/}" shape="note"];
  "sha256:1199502c0d5383c79dfd816975f08a630b6c175a285bccb5de16a6ee56b09062" [label="copy{src=/msghub/sdr2msghub/audiolib/audiolib.go, dest=/go/src/github.com/open-horizon/examples/edge/msghub/sdr2msghub/audiolib/audiolib.go}" shape="note"];
  "sha256:795886a92c9e367e9d3a34fea36f1dafea0b654d71cdb7b4eca8103272f12ba4" [label="copy{src=/services/sdr/rtlsdrclientlib/clientlib.go, dest=/go/src/github.com/open-horizon/examples/edge/services/sdr/rtlsdrclientlib/clientlib.go}" shape="note"];
  "sha256:d3064553372afe62a20de7df20692f75e947c6cc9ec5f85d015b84690b2fa3b3" [label="/bin/sh -c go build -o /bin/data_broker /main.go" shape="box"];
  "sha256:8c271c141a581c25d5ae4594715e6a4dfa31da74e67536aa126fabff2066ecf0" [label="copy{src=/bin/data_broker, dest=/bin/data_broker}" shape="note"];
  "sha256:815c66a8e16db1f648ff74ad0efae0d5f1b6000f393a6e6ab217babadd3e1c18" [label="sha256:815c66a8e16db1f648ff74ad0efae0d5f1b6000f393a6e6ab217babadd3e1c18" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:d6dcd9e773897e3504f4f2982e080a1ef91f7de22d613fab527c2639c37faf2a" [label=""];
  "sha256:d6dcd9e773897e3504f4f2982e080a1ef91f7de22d613fab527c2639c37faf2a" -> "sha256:26957da4114fa0cfc8ca767a69fa2e5782db0443792d86e58fe6d56a950e6b58" [label=""];
  "sha256:26957da4114fa0cfc8ca767a69fa2e5782db0443792d86e58fe6d56a950e6b58" -> "sha256:a0524b8515da8ce797aff261ff42392d31fb79327f1e5bff753fe31f6ca9664a" [label=""];
  "sha256:ffd98b3f9f30be9e59696775d7a59378c100bf2680e788754380af9fa27f8cda" -> "sha256:a0524b8515da8ce797aff261ff42392d31fb79327f1e5bff753fe31f6ca9664a" [label=""];
  "sha256:f7ca40a421372cfba586482f432bde258bf377a3a7cc932ad25cd89e82583053" -> "sha256:30d21596bb008ed38a77cea106817cc8688f8d285368361aea0234fe9eb9bbb6" [label=""];
  "sha256:30d21596bb008ed38a77cea106817cc8688f8d285368361aea0234fe9eb9bbb6" -> "sha256:f2773572884536c6e84177f5c01d1fea1f07c0d66f62ff8d88269c21ca99e940" [label=""];
  "sha256:f2773572884536c6e84177f5c01d1fea1f07c0d66f62ff8d88269c21ca99e940" -> "sha256:adabae10d6792f74ec3accffb525b3ac785113ad5119f1cfa9d6c637dc47cb8c" [label=""];
  "sha256:adabae10d6792f74ec3accffb525b3ac785113ad5119f1cfa9d6c637dc47cb8c" -> "sha256:c4043127688daa82ab9445379983b034c0c7cfa2b96ce723bc6604879f015c5d" [label=""];
  "sha256:c4043127688daa82ab9445379983b034c0c7cfa2b96ce723bc6604879f015c5d" -> "sha256:529911f2dabcda24d762ac7a4f0565c946b9e732bd119e4d807c381f6af5ae32" [label=""];
  "sha256:529911f2dabcda24d762ac7a4f0565c946b9e732bd119e4d807c381f6af5ae32" -> "sha256:ee07835293fbec57c3f69340e1cf2c2aa1fd926ea890923330ef75528fcca772" [label=""];
  "sha256:ee07835293fbec57c3f69340e1cf2c2aa1fd926ea890923330ef75528fcca772" -> "sha256:399b5d370ade1a319bd959040bbc3e70a4e68fc156c5932a8b34550431ca4380" [label=""];
  "sha256:ffd98b3f9f30be9e59696775d7a59378c100bf2680e788754380af9fa27f8cda" -> "sha256:399b5d370ade1a319bd959040bbc3e70a4e68fc156c5932a8b34550431ca4380" [label=""];
  "sha256:399b5d370ade1a319bd959040bbc3e70a4e68fc156c5932a8b34550431ca4380" -> "sha256:1199502c0d5383c79dfd816975f08a630b6c175a285bccb5de16a6ee56b09062" [label=""];
  "sha256:ffd98b3f9f30be9e59696775d7a59378c100bf2680e788754380af9fa27f8cda" -> "sha256:1199502c0d5383c79dfd816975f08a630b6c175a285bccb5de16a6ee56b09062" [label=""];
  "sha256:1199502c0d5383c79dfd816975f08a630b6c175a285bccb5de16a6ee56b09062" -> "sha256:795886a92c9e367e9d3a34fea36f1dafea0b654d71cdb7b4eca8103272f12ba4" [label=""];
  "sha256:ffd98b3f9f30be9e59696775d7a59378c100bf2680e788754380af9fa27f8cda" -> "sha256:795886a92c9e367e9d3a34fea36f1dafea0b654d71cdb7b4eca8103272f12ba4" [label=""];
  "sha256:795886a92c9e367e9d3a34fea36f1dafea0b654d71cdb7b4eca8103272f12ba4" -> "sha256:d3064553372afe62a20de7df20692f75e947c6cc9ec5f85d015b84690b2fa3b3" [label=""];
  "sha256:a0524b8515da8ce797aff261ff42392d31fb79327f1e5bff753fe31f6ca9664a" -> "sha256:8c271c141a581c25d5ae4594715e6a4dfa31da74e67536aa126fabff2066ecf0" [label=""];
  "sha256:d3064553372afe62a20de7df20692f75e947c6cc9ec5f85d015b84690b2fa3b3" -> "sha256:8c271c141a581c25d5ae4594715e6a4dfa31da74e67536aa126fabff2066ecf0" [label=""];
  "sha256:8c271c141a581c25d5ae4594715e6a4dfa31da74e67536aa126fabff2066ecf0" -> "sha256:815c66a8e16db1f648ff74ad0efae0d5f1b6000f393a6e6ab217babadd3e1c18" [label=""];
}

