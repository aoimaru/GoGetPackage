[app/sources/286327370.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:d5480265f6286c7c525be55027db2334e1cac42d2790022cacdf2b3bca2cf7ba" [label="/bin/sh -c apt-get update && apt-get install -y curl automake gcc make" shape="box"];
  "sha256:0b7156d13ebfedaf5ed27f07613818d9fa8bd34781b2025cf73be0b12067d8ef" [label="/bin/sh -c curl -fsSL \"$GOLANG_DOWNLOAD_URL\" -o golang.tar.gz \t&& echo \"$GOLANG_DOWNLOAD_SHA256  golang.tar.gz\" | sha256sum -c - \t&& tar -C /usr/local -xzf golang.tar.gz \t&& rm golang.tar.gz" shape="box"];
  "sha256:7538518051eab88aa0a524783bea1031469b4f5c928286db77a66782bcad93d1" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:96ae2198905a8fe856cb39132f209e4661b41a96f18691e0513e1a7e48b4dd94" [label="mkdir{path=/go}" shape="note"];
  "sha256:908d04bbac9ddd4734805cff7211112ae2a3fe95e9f3b4245942cb61c2a37f12" [label="/bin/sh -c mkdir -p /go/src/github.com/gostor/gotgt" shape="box"];
  "sha256:125d7f046568d4b4643aca05434fff5080c66f904906644c4bb6697ad85d5b1b" [label="local://context" shape="ellipse"];
  "sha256:6c20a05102392fead6fb673f7451d781d2bfe11cca547a33b70abc5b784f7618" [label="copy{src=/, dest=/go/src/github.com/gostor/gotgt}" shape="note"];
  "sha256:9a414695a3cf8b17bf57979435c6b058822af6a51d6580e2d20fb556bebb1bab" [label="mkdir{path=/go/src/github.com/gostor/gotgt}" shape="note"];
  "sha256:58f424dc341fbe3a76e828b525bf4e83fba6d39b23e1c3978eb0f5913fabd6e7" [label="/bin/sh -c ./autogen.sh" shape="box"];
  "sha256:37c207fadeec2a7acc5ebfdfa1ff2e8c4516cc888491a25464167979cbb8e5aa" [label="/bin/sh -c ./configure" shape="box"];
  "sha256:4bd9166ff2175a4406992d93e4f55e0a2afe866ca920657f04029bd7d5ce8b0e" [label="/bin/sh -c make" shape="box"];
  "sha256:f2192d00d6a5534441305ef5266b36f120073443812e95260fec94f0b01711e3" [label="/bin/sh -c apt-get purge -y curl automake gcc make" shape="box"];
  "sha256:63813381d2814fe17a858fbfbb9b9f097f1bc3b5a76c6cf18826aeb15b7f5ea5" [label="/bin/sh -c apt-get autoremove -y" shape="box"];
  "sha256:93b15ddd2c5e25ca03185e731b537cd585f38934405e8320e91a0851ef89b728" [label="sha256:93b15ddd2c5e25ca03185e731b537cd585f38934405e8320e91a0851ef89b728" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:d5480265f6286c7c525be55027db2334e1cac42d2790022cacdf2b3bca2cf7ba" [label=""];
  "sha256:d5480265f6286c7c525be55027db2334e1cac42d2790022cacdf2b3bca2cf7ba" -> "sha256:0b7156d13ebfedaf5ed27f07613818d9fa8bd34781b2025cf73be0b12067d8ef" [label=""];
  "sha256:0b7156d13ebfedaf5ed27f07613818d9fa8bd34781b2025cf73be0b12067d8ef" -> "sha256:7538518051eab88aa0a524783bea1031469b4f5c928286db77a66782bcad93d1" [label=""];
  "sha256:7538518051eab88aa0a524783bea1031469b4f5c928286db77a66782bcad93d1" -> "sha256:96ae2198905a8fe856cb39132f209e4661b41a96f18691e0513e1a7e48b4dd94" [label=""];
  "sha256:96ae2198905a8fe856cb39132f209e4661b41a96f18691e0513e1a7e48b4dd94" -> "sha256:908d04bbac9ddd4734805cff7211112ae2a3fe95e9f3b4245942cb61c2a37f12" [label=""];
  "sha256:908d04bbac9ddd4734805cff7211112ae2a3fe95e9f3b4245942cb61c2a37f12" -> "sha256:6c20a05102392fead6fb673f7451d781d2bfe11cca547a33b70abc5b784f7618" [label=""];
  "sha256:125d7f046568d4b4643aca05434fff5080c66f904906644c4bb6697ad85d5b1b" -> "sha256:6c20a05102392fead6fb673f7451d781d2bfe11cca547a33b70abc5b784f7618" [label=""];
  "sha256:6c20a05102392fead6fb673f7451d781d2bfe11cca547a33b70abc5b784f7618" -> "sha256:9a414695a3cf8b17bf57979435c6b058822af6a51d6580e2d20fb556bebb1bab" [label=""];
  "sha256:9a414695a3cf8b17bf57979435c6b058822af6a51d6580e2d20fb556bebb1bab" -> "sha256:58f424dc341fbe3a76e828b525bf4e83fba6d39b23e1c3978eb0f5913fabd6e7" [label=""];
  "sha256:58f424dc341fbe3a76e828b525bf4e83fba6d39b23e1c3978eb0f5913fabd6e7" -> "sha256:37c207fadeec2a7acc5ebfdfa1ff2e8c4516cc888491a25464167979cbb8e5aa" [label=""];
  "sha256:37c207fadeec2a7acc5ebfdfa1ff2e8c4516cc888491a25464167979cbb8e5aa" -> "sha256:4bd9166ff2175a4406992d93e4f55e0a2afe866ca920657f04029bd7d5ce8b0e" [label=""];
  "sha256:4bd9166ff2175a4406992d93e4f55e0a2afe866ca920657f04029bd7d5ce8b0e" -> "sha256:f2192d00d6a5534441305ef5266b36f120073443812e95260fec94f0b01711e3" [label=""];
  "sha256:f2192d00d6a5534441305ef5266b36f120073443812e95260fec94f0b01711e3" -> "sha256:63813381d2814fe17a858fbfbb9b9f097f1bc3b5a76c6cf18826aeb15b7f5ea5" [label=""];
  "sha256:63813381d2814fe17a858fbfbb9b9f097f1bc3b5a76c6cf18826aeb15b7f5ea5" -> "sha256:93b15ddd2c5e25ca03185e731b537cd585f38934405e8320e91a0851ef89b728" [label=""];
}

