[app/sources/471565897.Dockerfile]
digraph {
  "sha256:8938718d639633128dcc0a3e02dc6e02fbf0dcdab35d69e19fc3b5940f1c40c7" [label="docker-image://docker.io/library/golang:1.11.5" shape="ellipse"];
  "sha256:287df849a2b6a7b8cb150c8e431d7d6ed3dbe8804d33753d5005fa800014288d" [label="local://context" shape="ellipse"];
  "sha256:3e2e363435f5101d56aa3cafe29f8b050c2865274826a82bcf116b75f66d1d25" [label="copy{src=/, dest=/go/src/github.com/opennetsys/golkadot}" shape="note"];
  "sha256:4a086d612bf5207af7aaf840204a9904e77887d3d706c9fbf073d75660f91d73" [label="mkdir{path=/go/src/github.com/opennetsys/golkadot}" shape="note"];
  "sha256:6b6def35b77a6c9bd282ae313405d8093f80b0f80af7a099f4533aa96965353b" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o golkadot cmd/golkadot/main.go" shape="box"];
  "sha256:d9c20f95ea12d64dabaa2f311ffbd92ec6660eee30fdc9d69616b79b3f50faba" [label="copy{src=/go/src/github.com/opennetsys/golkadot/golkadot, dest=/}" shape="note"];
  "sha256:d029d732f373ad8abe25fc039fd4c92778e3dc4088d7a2feaca0b8b733adc718" [label="sha256:d029d732f373ad8abe25fc039fd4c92778e3dc4088d7a2feaca0b8b733adc718" shape="plaintext"];
  "sha256:8938718d639633128dcc0a3e02dc6e02fbf0dcdab35d69e19fc3b5940f1c40c7" -> "sha256:3e2e363435f5101d56aa3cafe29f8b050c2865274826a82bcf116b75f66d1d25" [label=""];
  "sha256:287df849a2b6a7b8cb150c8e431d7d6ed3dbe8804d33753d5005fa800014288d" -> "sha256:3e2e363435f5101d56aa3cafe29f8b050c2865274826a82bcf116b75f66d1d25" [label=""];
  "sha256:3e2e363435f5101d56aa3cafe29f8b050c2865274826a82bcf116b75f66d1d25" -> "sha256:4a086d612bf5207af7aaf840204a9904e77887d3d706c9fbf073d75660f91d73" [label=""];
  "sha256:4a086d612bf5207af7aaf840204a9904e77887d3d706c9fbf073d75660f91d73" -> "sha256:6b6def35b77a6c9bd282ae313405d8093f80b0f80af7a099f4533aa96965353b" [label=""];
  "sha256:6b6def35b77a6c9bd282ae313405d8093f80b0f80af7a099f4533aa96965353b" -> "sha256:d9c20f95ea12d64dabaa2f311ffbd92ec6660eee30fdc9d69616b79b3f50faba" [label=""];
  "sha256:d9c20f95ea12d64dabaa2f311ffbd92ec6660eee30fdc9d69616b79b3f50faba" -> "sha256:d029d732f373ad8abe25fc039fd4c92778e3dc4088d7a2feaca0b8b733adc718" [label=""];
}

