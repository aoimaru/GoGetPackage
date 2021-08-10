[app/sources/342762681.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:752946bed353a5268c4950cb92e5739513e5ea5b6b690fa3aa67690147cfaf01" [label="mkdir{path=/root}" shape="note"];
  "sha256:341431261c8559bb25441fabd833436958a824aaf48a40cfd69877edbe4402ce" [label="docker-image://docker.io/library/golang:1.10.3" shape="ellipse"];
  "sha256:ed218ae3e636dc7f5fd29428a7979fbba3b5e204e20896b29612f1f7a2f0f7cc" [label="mkdir{path=/go/src/sigs.k8s.io/controller-tools/test}" shape="note"];
  "sha256:4a34969a68db75ec04dea718022cc48f337460ae06b6489a914aa712be1abd42" [label="local://context" shape="ellipse"];
  "sha256:0f1a57315717624dc34a0c5a08cef65104d1591a222e265e567ff5f8b8f3b673" [label="copy{src=/pkg, dest=/go/src/sigs.k8s.io/controller-tools/test/pkg/}" shape="note"];
  "sha256:984142849890b7c7a320b26e5a5a8d22a29649c43b46c198a9a902efb355f6fa" [label="copy{src=/cmd, dest=/go/src/sigs.k8s.io/controller-tools/test/cmd/}" shape="note"];
  "sha256:ac29be1b41523a9626e05f283191e0e4ea7c8e9d3304400d887085b470d65389" [label="copy{src=/vendor, dest=/go/src/sigs.k8s.io/controller-tools/test/vendor/}" shape="note"];
  "sha256:bcaba776a493c1fe653b5f6667f11be8308379b691c38acb12a33676b74a4c3f" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -o manager sigs.k8s.io/controller-tools/test/cmd/manager" shape="box"];
  "sha256:be4b3b79b143f276473c39ddbee745dca6b5d87d6e218a66786ef6678e1db228" [label="copy{src=/go/src/sigs.k8s.io/controller-tools/test/manager, dest=/root/}" shape="note"];
  "sha256:b2c369ddd01c3ad77b71ab06991c8719e76e4a0fd21cb020f9bb52c7a8e4d641" [label="sha256:b2c369ddd01c3ad77b71ab06991c8719e76e4a0fd21cb020f9bb52c7a8e4d641" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:752946bed353a5268c4950cb92e5739513e5ea5b6b690fa3aa67690147cfaf01" [label=""];
  "sha256:341431261c8559bb25441fabd833436958a824aaf48a40cfd69877edbe4402ce" -> "sha256:ed218ae3e636dc7f5fd29428a7979fbba3b5e204e20896b29612f1f7a2f0f7cc" [label=""];
  "sha256:ed218ae3e636dc7f5fd29428a7979fbba3b5e204e20896b29612f1f7a2f0f7cc" -> "sha256:0f1a57315717624dc34a0c5a08cef65104d1591a222e265e567ff5f8b8f3b673" [label=""];
  "sha256:4a34969a68db75ec04dea718022cc48f337460ae06b6489a914aa712be1abd42" -> "sha256:0f1a57315717624dc34a0c5a08cef65104d1591a222e265e567ff5f8b8f3b673" [label=""];
  "sha256:0f1a57315717624dc34a0c5a08cef65104d1591a222e265e567ff5f8b8f3b673" -> "sha256:984142849890b7c7a320b26e5a5a8d22a29649c43b46c198a9a902efb355f6fa" [label=""];
  "sha256:4a34969a68db75ec04dea718022cc48f337460ae06b6489a914aa712be1abd42" -> "sha256:984142849890b7c7a320b26e5a5a8d22a29649c43b46c198a9a902efb355f6fa" [label=""];
  "sha256:984142849890b7c7a320b26e5a5a8d22a29649c43b46c198a9a902efb355f6fa" -> "sha256:ac29be1b41523a9626e05f283191e0e4ea7c8e9d3304400d887085b470d65389" [label=""];
  "sha256:4a34969a68db75ec04dea718022cc48f337460ae06b6489a914aa712be1abd42" -> "sha256:ac29be1b41523a9626e05f283191e0e4ea7c8e9d3304400d887085b470d65389" [label=""];
  "sha256:ac29be1b41523a9626e05f283191e0e4ea7c8e9d3304400d887085b470d65389" -> "sha256:bcaba776a493c1fe653b5f6667f11be8308379b691c38acb12a33676b74a4c3f" [label=""];
  "sha256:752946bed353a5268c4950cb92e5739513e5ea5b6b690fa3aa67690147cfaf01" -> "sha256:be4b3b79b143f276473c39ddbee745dca6b5d87d6e218a66786ef6678e1db228" [label=""];
  "sha256:bcaba776a493c1fe653b5f6667f11be8308379b691c38acb12a33676b74a4c3f" -> "sha256:be4b3b79b143f276473c39ddbee745dca6b5d87d6e218a66786ef6678e1db228" [label=""];
  "sha256:be4b3b79b143f276473c39ddbee745dca6b5d87d6e218a66786ef6678e1db228" -> "sha256:b2c369ddd01c3ad77b71ab06991c8719e76e4a0fd21cb020f9bb52c7a8e4d641" [label=""];
}

