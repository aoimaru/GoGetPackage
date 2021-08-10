[app/sources/324518630.Dockerfile]
digraph {
  "sha256:041e9b89133ed3ba3ea266dde11c1321ed295358abebc4823e900906d96aef09" [label="docker-image://docker.io/fortio/fortio.build:v12" shape="ellipse"];
  "sha256:1e01e98033620a8e2ec4c7437b53176eb828802dc75815fc830c066eafe93f8e" [label="mkdir{path=/go/src/fortio.org}" shape="note"];
  "sha256:c7015e7ba0097d34a15bee0b9996b74129f5b8cecc7a82337f9e6a70cfb7ecb0" [label="local://context" shape="ellipse"];
  "sha256:add27a7ef72c430923834de1035ba82247ad01c7b71023df5920110fa1e36d23" [label="copy{src=/, dest=/go/src/fortio.org/fortio}" shape="note"];
  "sha256:f76176130764b6819347ab8286d65a739ba032c7e2fd25ca8602c2652de019ae" [label="/bin/sh -c make -C fortio official-build-version BUILD_DIR=/build OFFICIAL_TARGET=fortio.org/fortio/fcurl OFFICIAL_BIN=../fcurl.bin" shape="box"];
  "sha256:d1ac7c26e92195a90bdf90d81e196470bbec02c7920917a5a1869acc5a69f362" [label="copy{src=/etc/ssl/certs/ca-certificates.crt, dest=/etc/ssl/certs/}" shape="note"];
  "sha256:e92a782b5a8ae3799cba18ab3a1d16197b5feab6a9ea0756b6804eeaf2549e64" [label="copy{src=/go/src/fortio.org/fcurl.bin, dest=/usr/bin/fcurl}" shape="note"];
  "sha256:e48fdcd85eaafbd272a74a039c0c5ffecdeb1bd1163b08d3ed21450b452efadc" [label="sha256:e48fdcd85eaafbd272a74a039c0c5ffecdeb1bd1163b08d3ed21450b452efadc" shape="plaintext"];
  "sha256:041e9b89133ed3ba3ea266dde11c1321ed295358abebc4823e900906d96aef09" -> "sha256:1e01e98033620a8e2ec4c7437b53176eb828802dc75815fc830c066eafe93f8e" [label=""];
  "sha256:1e01e98033620a8e2ec4c7437b53176eb828802dc75815fc830c066eafe93f8e" -> "sha256:add27a7ef72c430923834de1035ba82247ad01c7b71023df5920110fa1e36d23" [label=""];
  "sha256:c7015e7ba0097d34a15bee0b9996b74129f5b8cecc7a82337f9e6a70cfb7ecb0" -> "sha256:add27a7ef72c430923834de1035ba82247ad01c7b71023df5920110fa1e36d23" [label=""];
  "sha256:add27a7ef72c430923834de1035ba82247ad01c7b71023df5920110fa1e36d23" -> "sha256:f76176130764b6819347ab8286d65a739ba032c7e2fd25ca8602c2652de019ae" [label=""];
  "sha256:f76176130764b6819347ab8286d65a739ba032c7e2fd25ca8602c2652de019ae" -> "sha256:d1ac7c26e92195a90bdf90d81e196470bbec02c7920917a5a1869acc5a69f362" [label=""];
  "sha256:d1ac7c26e92195a90bdf90d81e196470bbec02c7920917a5a1869acc5a69f362" -> "sha256:e92a782b5a8ae3799cba18ab3a1d16197b5feab6a9ea0756b6804eeaf2549e64" [label=""];
  "sha256:f76176130764b6819347ab8286d65a739ba032c7e2fd25ca8602c2652de019ae" -> "sha256:e92a782b5a8ae3799cba18ab3a1d16197b5feab6a9ea0756b6804eeaf2549e64" [label=""];
  "sha256:e92a782b5a8ae3799cba18ab3a1d16197b5feab6a9ea0756b6804eeaf2549e64" -> "sha256:e48fdcd85eaafbd272a74a039c0c5ffecdeb1bd1163b08d3ed21450b452efadc" [label=""];
}

