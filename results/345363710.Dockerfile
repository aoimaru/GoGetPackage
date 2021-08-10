[app/sources/345363710.Dockerfile]
digraph {
  "sha256:437949a91e3873a9ec27eb45907732c70781f6238e82e79a297d75970bdbce31" [label="docker-image://docker.io/balenalib/artik10-debian:sid-build" shape="ellipse"];
  "sha256:c0b965b9b302eb9363bde29cd6b423b28f9ebf625b007b644a8132afff2658cf" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:9d9e90dace4ff4d954a27c79ad16c1ffa8d6f285033e764b92f9b50661eddfea" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:800d108f37539af7e2c91a12b6bc2b6b22c1beb2f5bb901199c37e5a67ef01f9" [label="mkdir{path=/go}" shape="note"];
  "sha256:d5e31d0ddacdd56ed0a370c787a3f2c6bc28e27711bfb55589ac4345118033d3" [label="sha256:d5e31d0ddacdd56ed0a370c787a3f2c6bc28e27711bfb55589ac4345118033d3" shape="plaintext"];
  "sha256:437949a91e3873a9ec27eb45907732c70781f6238e82e79a297d75970bdbce31" -> "sha256:c0b965b9b302eb9363bde29cd6b423b28f9ebf625b007b644a8132afff2658cf" [label=""];
  "sha256:c0b965b9b302eb9363bde29cd6b423b28f9ebf625b007b644a8132afff2658cf" -> "sha256:9d9e90dace4ff4d954a27c79ad16c1ffa8d6f285033e764b92f9b50661eddfea" [label=""];
  "sha256:9d9e90dace4ff4d954a27c79ad16c1ffa8d6f285033e764b92f9b50661eddfea" -> "sha256:800d108f37539af7e2c91a12b6bc2b6b22c1beb2f5bb901199c37e5a67ef01f9" [label=""];
  "sha256:800d108f37539af7e2c91a12b6bc2b6b22c1beb2f5bb901199c37e5a67ef01f9" -> "sha256:d5e31d0ddacdd56ed0a370c787a3f2c6bc28e27711bfb55589ac4345118033d3" [label=""];
}

