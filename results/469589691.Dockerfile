[app/sources/469589691.Dockerfile]
digraph {
  "sha256:a44e83e194f678bae2cbf92df32f5c2713d290ed3b44624f06d5c35493c97199" [label="local://context" shape="ellipse"];
  "sha256:90e5809132c85dd8ef0c9422f2af0f7ea38b899ec94b478bdaf4754ad05fe868" [label="docker-image://docker.io/library/golang:1.11.1" shape="ellipse"];
  "sha256:d67055f6ad607dd5f0c7b23550d16fc16ea6df6874e070130ed9694d2c195f4b" [label="/bin/sh -c mkdir -p /go/src/github.com/eks-workshop-x-ray-sample-front" shape="box"];
  "sha256:b949054b89083476ecdd6a30cb5c2b889da202d11185e2dfb1f2ad97bb271431" [label="mkdir{path=/go/src/github.com/eks-workshop-x-ray-sample-front}" shape="note"];
  "sha256:4602e2008ba464a741de18ef9e63c49bbbe63323edc94c82f8a9b359116f4f3e" [label="/bin/sh -c useradd -u 10001 app" shape="box"];
  "sha256:1b17f0aa690043c31644c4e729c83ccaa04ee81c43ed1c81ddb49a7bae8adbda" [label="copy{src=/, dest=/go/src/github.com/eks-workshop-x-ray-sample-front/}" shape="note"];
  "sha256:46b329bae315a09294812f1749f941eb7c63e77841477f7243d08b8b59cb1b8f" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -ldflags '-extldflags \"-static\"' ." shape="box"];
  "sha256:eb08bbce6f08b77931cde44f670b49f09ec6119231a1a869b41397bca18df9c6" [label="copy{src=/go/src/github.com/eks-workshop-x-ray-sample-front/sample-front, dest=/main}" shape="note"];
  "sha256:61034b4d9ff4354c1b4f6d20e593ae6b0d4af7250aac6531817b1593d5e566ce" [label="copy{src=/etc/passwd, dest=/etc/passwd}" shape="note"];
  "sha256:365b47e0b2fae72589689b12d59de461f4b5a97c0f2c52c883ce331df85708a6" [label="sha256:365b47e0b2fae72589689b12d59de461f4b5a97c0f2c52c883ce331df85708a6" shape="plaintext"];
  "sha256:90e5809132c85dd8ef0c9422f2af0f7ea38b899ec94b478bdaf4754ad05fe868" -> "sha256:d67055f6ad607dd5f0c7b23550d16fc16ea6df6874e070130ed9694d2c195f4b" [label=""];
  "sha256:d67055f6ad607dd5f0c7b23550d16fc16ea6df6874e070130ed9694d2c195f4b" -> "sha256:b949054b89083476ecdd6a30cb5c2b889da202d11185e2dfb1f2ad97bb271431" [label=""];
  "sha256:b949054b89083476ecdd6a30cb5c2b889da202d11185e2dfb1f2ad97bb271431" -> "sha256:4602e2008ba464a741de18ef9e63c49bbbe63323edc94c82f8a9b359116f4f3e" [label=""];
  "sha256:4602e2008ba464a741de18ef9e63c49bbbe63323edc94c82f8a9b359116f4f3e" -> "sha256:1b17f0aa690043c31644c4e729c83ccaa04ee81c43ed1c81ddb49a7bae8adbda" [label=""];
  "sha256:a44e83e194f678bae2cbf92df32f5c2713d290ed3b44624f06d5c35493c97199" -> "sha256:1b17f0aa690043c31644c4e729c83ccaa04ee81c43ed1c81ddb49a7bae8adbda" [label=""];
  "sha256:1b17f0aa690043c31644c4e729c83ccaa04ee81c43ed1c81ddb49a7bae8adbda" -> "sha256:46b329bae315a09294812f1749f941eb7c63e77841477f7243d08b8b59cb1b8f" [label=""];
  "sha256:46b329bae315a09294812f1749f941eb7c63e77841477f7243d08b8b59cb1b8f" -> "sha256:eb08bbce6f08b77931cde44f670b49f09ec6119231a1a869b41397bca18df9c6" [label=""];
  "sha256:eb08bbce6f08b77931cde44f670b49f09ec6119231a1a869b41397bca18df9c6" -> "sha256:61034b4d9ff4354c1b4f6d20e593ae6b0d4af7250aac6531817b1593d5e566ce" [label=""];
  "sha256:46b329bae315a09294812f1749f941eb7c63e77841477f7243d08b8b59cb1b8f" -> "sha256:61034b4d9ff4354c1b4f6d20e593ae6b0d4af7250aac6531817b1593d5e566ce" [label=""];
  "sha256:61034b4d9ff4354c1b4f6d20e593ae6b0d4af7250aac6531817b1593d5e566ce" -> "sha256:365b47e0b2fae72589689b12d59de461f4b5a97c0f2c52c883ce331df85708a6" [label=""];
}

