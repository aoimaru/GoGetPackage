[app/sources/174597689.Dockerfile]
digraph {
  "sha256:c72b6c855e5a9c758366321a715e67894a23c79c878d2a457f9bf15c55cf0c5a" [label="docker-image://docker.io/library/golang:1.4" shape="ellipse"];
  "sha256:cec3ba43f31185ceab8bd5e8e14757cc264e318619487a9041f3b40f272480e3" [label="/bin/sh -c go get github.com/onsi/ginkgo/ginkgo" shape="box"];
  "sha256:b7a2759c695308ecf1bf16f398738ce86851dac91f5429afc703cb63347351c8" [label="/bin/sh -c go get github.com/onsi/gomega" shape="box"];
  "sha256:ec78412badd7ba5871703941a1abd924f7d9b207f4c4867a04383222faf1f870" [label="sha256:ec78412badd7ba5871703941a1abd924f7d9b207f4c4867a04383222faf1f870" shape="plaintext"];
  "sha256:c72b6c855e5a9c758366321a715e67894a23c79c878d2a457f9bf15c55cf0c5a" -> "sha256:cec3ba43f31185ceab8bd5e8e14757cc264e318619487a9041f3b40f272480e3" [label=""];
  "sha256:cec3ba43f31185ceab8bd5e8e14757cc264e318619487a9041f3b40f272480e3" -> "sha256:b7a2759c695308ecf1bf16f398738ce86851dac91f5429afc703cb63347351c8" [label=""];
  "sha256:b7a2759c695308ecf1bf16f398738ce86851dac91f5429afc703cb63347351c8" -> "sha256:ec78412badd7ba5871703941a1abd924f7d9b207f4c4867a04383222faf1f870" [label=""];
}

