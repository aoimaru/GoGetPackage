[app/sources/284713285.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:341431261c8559bb25441fabd833436958a824aaf48a40cfd69877edbe4402ce" [label="docker-image://docker.io/library/golang:1.10.3" shape="ellipse"];
  "sha256:b3749a81e1d81d606c5383b110e3b10359366fbee8482d9022dd8e8f68a315e4" [label="mkdir{path=/go/src/sigs.k8s.io/controller-tools/pkg/crd/generator/testData}" shape="note"];
  "sha256:6ae134d8f54e7e53c41c295223b21737ab12ea36b99ce2137c502f81d9d2ad00" [label="local://context" shape="ellipse"];
  "sha256:9b6adac5927d6363937dcdb1a4d700a8604b7c8b3ac502d01f538234734902a0" [label="copy{src=/pkg, dest=/go/src/sigs.k8s.io/controller-tools/pkg/crd/generator/testData/pkg/}" shape="note"];
  "sha256:ffd9597ca9a6f640505f73543eb72ef3ca6b66995705680c1f0dfb44b1db34f8" [label="copy{src=/cmd, dest=/go/src/sigs.k8s.io/controller-tools/pkg/crd/generator/testData/cmd/}" shape="note"];
  "sha256:3e4aabb4380876dee0381e48dd1d08d4b0d0b52943b8cae4192b7e6b382813e1" [label="copy{src=/vendor, dest=/go/src/sigs.k8s.io/controller-tools/pkg/crd/generator/testData/vendor/}" shape="note"];
  "sha256:99a1566ba0931853349be93d9769a30627c3027c9c8d2eca2ae79e809b9c7d93" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -o manager sigs.k8s.io/controller-tools/pkg/crd/generator/testData/cmd/manager" shape="box"];
  "sha256:a39e034dc1dfd89034bf30077738648c70a4676d1a106f00856aef4d8d3a8c73" [label="copy{src=/go/src/sigs.k8s.io/controller-tools/pkg/crd/generator/testData/manager, dest=/}" shape="note"];
  "sha256:702f171d5cc5f3dfb987f2961ce3ca8b876c48b3e7d4d4c320ecf53bd4efafe3" [label="sha256:702f171d5cc5f3dfb987f2961ce3ca8b876c48b3e7d4d4c320ecf53bd4efafe3" shape="plaintext"];
  "sha256:341431261c8559bb25441fabd833436958a824aaf48a40cfd69877edbe4402ce" -> "sha256:b3749a81e1d81d606c5383b110e3b10359366fbee8482d9022dd8e8f68a315e4" [label=""];
  "sha256:b3749a81e1d81d606c5383b110e3b10359366fbee8482d9022dd8e8f68a315e4" -> "sha256:9b6adac5927d6363937dcdb1a4d700a8604b7c8b3ac502d01f538234734902a0" [label=""];
  "sha256:6ae134d8f54e7e53c41c295223b21737ab12ea36b99ce2137c502f81d9d2ad00" -> "sha256:9b6adac5927d6363937dcdb1a4d700a8604b7c8b3ac502d01f538234734902a0" [label=""];
  "sha256:9b6adac5927d6363937dcdb1a4d700a8604b7c8b3ac502d01f538234734902a0" -> "sha256:ffd9597ca9a6f640505f73543eb72ef3ca6b66995705680c1f0dfb44b1db34f8" [label=""];
  "sha256:6ae134d8f54e7e53c41c295223b21737ab12ea36b99ce2137c502f81d9d2ad00" -> "sha256:ffd9597ca9a6f640505f73543eb72ef3ca6b66995705680c1f0dfb44b1db34f8" [label=""];
  "sha256:ffd9597ca9a6f640505f73543eb72ef3ca6b66995705680c1f0dfb44b1db34f8" -> "sha256:3e4aabb4380876dee0381e48dd1d08d4b0d0b52943b8cae4192b7e6b382813e1" [label=""];
  "sha256:6ae134d8f54e7e53c41c295223b21737ab12ea36b99ce2137c502f81d9d2ad00" -> "sha256:3e4aabb4380876dee0381e48dd1d08d4b0d0b52943b8cae4192b7e6b382813e1" [label=""];
  "sha256:3e4aabb4380876dee0381e48dd1d08d4b0d0b52943b8cae4192b7e6b382813e1" -> "sha256:99a1566ba0931853349be93d9769a30627c3027c9c8d2eca2ae79e809b9c7d93" [label=""];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:a39e034dc1dfd89034bf30077738648c70a4676d1a106f00856aef4d8d3a8c73" [label=""];
  "sha256:99a1566ba0931853349be93d9769a30627c3027c9c8d2eca2ae79e809b9c7d93" -> "sha256:a39e034dc1dfd89034bf30077738648c70a4676d1a106f00856aef4d8d3a8c73" [label=""];
  "sha256:a39e034dc1dfd89034bf30077738648c70a4676d1a106f00856aef4d8d3a8c73" -> "sha256:702f171d5cc5f3dfb987f2961ce3ca8b876c48b3e7d4d4c320ecf53bd4efafe3" [label=""];
}

