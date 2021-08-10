[app/sources/470522883.Dockerfile]
digraph {
  "sha256:1f159853a4cb20ce2ae561d74a29e0be91ef652a4b4d7f30a5f054b5bbd5b264" [label="docker-image://docker.io/s390x/ubuntu:xenial" shape="ellipse"];
  "sha256:59ed14c3c2bda61c373321bdb038a05c1bb2f6fb6111878312a5374e575648b6" [label="/bin/sh -c apt-get update && apt-get install -y         curl         gcc         git         make         tar" shape="box"];
  "sha256:9ec0ffc407eb05ca104bb985fc597b80e312c688f757611afe989a2cf634126c" [label="/bin/sh -c curl -fsSL \"https://golang.org/dl/go${GO_VERSION}.linux-s390x.tar.gz\"         | tar -xzC /usr/local" shape="box"];
  "sha256:ad11cac08ecdfca2bcc0785236ab53976d18426060d4d58f6e2f1ef19514a1bc" [label="/bin/sh -c mkdir -p /go/src /go/bin /go/pkg" shape="box"];
  "sha256:4378abe7ec0ea05700356df6ba6329ca5af64944bf6a52e99d61f5140a4732a6" [label="/bin/sh -c export GLIDE=v0.11.1;         export TARGET=/go/src/github.com/Masterminds;         mkdir -p ${TARGET} &&         git clone https://github.com/Masterminds/glide.git ${TARGET}/glide &&         cd ${TARGET}/glide &&         git checkout $GLIDE &&         make build &&         cp ./glide /usr/bin/glide &&         cd / && rm -rf /go/src/* /go/bin/* /go/pkg/*" shape="box"];
  "sha256:c141c125ce24ee11878abb3264a94eff82cb625334c65efa117b6e36bdf28117" [label="local://context" shape="ellipse"];
  "sha256:79bb8281dc199db2aa4b00a20ac578af9354243226a691011d0fa42b9d20b10f" [label="copy{src=/glide.yaml, dest=/manvendor/}" shape="note"];
  "sha256:b149c9eada3e10a25c292bd778eac94072166cf9f290e6e9bc820c6c2796ab4d" [label="copy{src=/glide.lock, dest=/manvendor/}" shape="note"];
  "sha256:b94ed009c9400376b323aab83ed7d939ade35285a78fcc575c1caaace935e3c1" [label="mkdir{path=/manvendor}" shape="note"];
  "sha256:bb89ae156ffa87eab94608690971c0527285fa5bbcc20e331b90979f8d7ef08a" [label="/bin/sh -c glide install && mv vendor src" shape="box"];
  "sha256:19c1331e58a493c93df4adec0008697c9785f69dccf5a5856c7f126b56f0d2e5" [label="/bin/sh -c go build -o /usr/bin/go-md2man github.com/cpuguy83/go-md2man" shape="box"];
  "sha256:6bf2940df88d464a14badf04cd4d4d88b5fe925756ad24af12cde59d4db28e49" [label="mkdir{path=/go/src/github.com/docker/docker}" shape="note"];
  "sha256:717105a3be88871c3135c0d50d8bf5df6a6fcc276b63cd503d8b667000659eeb" [label="sha256:717105a3be88871c3135c0d50d8bf5df6a6fcc276b63cd503d8b667000659eeb" shape="plaintext"];
  "sha256:1f159853a4cb20ce2ae561d74a29e0be91ef652a4b4d7f30a5f054b5bbd5b264" -> "sha256:59ed14c3c2bda61c373321bdb038a05c1bb2f6fb6111878312a5374e575648b6" [label=""];
  "sha256:59ed14c3c2bda61c373321bdb038a05c1bb2f6fb6111878312a5374e575648b6" -> "sha256:9ec0ffc407eb05ca104bb985fc597b80e312c688f757611afe989a2cf634126c" [label=""];
  "sha256:9ec0ffc407eb05ca104bb985fc597b80e312c688f757611afe989a2cf634126c" -> "sha256:ad11cac08ecdfca2bcc0785236ab53976d18426060d4d58f6e2f1ef19514a1bc" [label=""];
  "sha256:ad11cac08ecdfca2bcc0785236ab53976d18426060d4d58f6e2f1ef19514a1bc" -> "sha256:4378abe7ec0ea05700356df6ba6329ca5af64944bf6a52e99d61f5140a4732a6" [label=""];
  "sha256:4378abe7ec0ea05700356df6ba6329ca5af64944bf6a52e99d61f5140a4732a6" -> "sha256:79bb8281dc199db2aa4b00a20ac578af9354243226a691011d0fa42b9d20b10f" [label=""];
  "sha256:c141c125ce24ee11878abb3264a94eff82cb625334c65efa117b6e36bdf28117" -> "sha256:79bb8281dc199db2aa4b00a20ac578af9354243226a691011d0fa42b9d20b10f" [label=""];
  "sha256:79bb8281dc199db2aa4b00a20ac578af9354243226a691011d0fa42b9d20b10f" -> "sha256:b149c9eada3e10a25c292bd778eac94072166cf9f290e6e9bc820c6c2796ab4d" [label=""];
  "sha256:c141c125ce24ee11878abb3264a94eff82cb625334c65efa117b6e36bdf28117" -> "sha256:b149c9eada3e10a25c292bd778eac94072166cf9f290e6e9bc820c6c2796ab4d" [label=""];
  "sha256:b149c9eada3e10a25c292bd778eac94072166cf9f290e6e9bc820c6c2796ab4d" -> "sha256:b94ed009c9400376b323aab83ed7d939ade35285a78fcc575c1caaace935e3c1" [label=""];
  "sha256:b94ed009c9400376b323aab83ed7d939ade35285a78fcc575c1caaace935e3c1" -> "sha256:bb89ae156ffa87eab94608690971c0527285fa5bbcc20e331b90979f8d7ef08a" [label=""];
  "sha256:bb89ae156ffa87eab94608690971c0527285fa5bbcc20e331b90979f8d7ef08a" -> "sha256:19c1331e58a493c93df4adec0008697c9785f69dccf5a5856c7f126b56f0d2e5" [label=""];
  "sha256:19c1331e58a493c93df4adec0008697c9785f69dccf5a5856c7f126b56f0d2e5" -> "sha256:6bf2940df88d464a14badf04cd4d4d88b5fe925756ad24af12cde59d4db28e49" [label=""];
  "sha256:6bf2940df88d464a14badf04cd4d4d88b5fe925756ad24af12cde59d4db28e49" -> "sha256:717105a3be88871c3135c0d50d8bf5df6a6fcc276b63cd503d8b667000659eeb" [label=""];
}

