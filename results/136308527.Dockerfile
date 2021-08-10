[app/sources/136308527.Dockerfile]
digraph {
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" [label="docker-image://docker.io/library/golang:1.9" shape="ellipse"];
  "sha256:324a74cd4e838e9b467a9fdb93d24ea64672fcce19ba4b17a8b244dd5126ddc4" [label="local://context" shape="ellipse"];
  "sha256:a4ced79379b0b1526447d6b594990b2d0d765c07664645f5eeda8c0a1d7f03a0" [label="copy{src=/, dest=/src/github.com/bradford-hamilton/go-graphql-api}" shape="note"];
  "sha256:3c34358068eb19a4996aaf3d2d4c66d22c2706954151f8f4c89d8bacc1496dde" [label="mkdir{path=/src/github.com/bradford-hamilton/go-graphql-api}" shape="note"];
  "sha256:79d64c08bd222a8bcaa90ff8ad7ac432430da4fcaa16de72fff497bc58610fe4" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -installsuffix cgo -o /go/bin/api" shape="box"];
  "sha256:f42f4b18887aeefdd3695ee001bf9d1e1279b279c7d26ccee2275584fff70fed" [label="copy{src=/go/bin/api, dest=/}" shape="note"];
  "sha256:dfb12af23691bc2ef482874b3b99090b28f961ea01ad365d63cfb03be203acde" [label="sha256:dfb12af23691bc2ef482874b3b99090b28f961ea01ad365d63cfb03be203acde" shape="plaintext"];
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" -> "sha256:a4ced79379b0b1526447d6b594990b2d0d765c07664645f5eeda8c0a1d7f03a0" [label=""];
  "sha256:324a74cd4e838e9b467a9fdb93d24ea64672fcce19ba4b17a8b244dd5126ddc4" -> "sha256:a4ced79379b0b1526447d6b594990b2d0d765c07664645f5eeda8c0a1d7f03a0" [label=""];
  "sha256:a4ced79379b0b1526447d6b594990b2d0d765c07664645f5eeda8c0a1d7f03a0" -> "sha256:3c34358068eb19a4996aaf3d2d4c66d22c2706954151f8f4c89d8bacc1496dde" [label=""];
  "sha256:3c34358068eb19a4996aaf3d2d4c66d22c2706954151f8f4c89d8bacc1496dde" -> "sha256:79d64c08bd222a8bcaa90ff8ad7ac432430da4fcaa16de72fff497bc58610fe4" [label=""];
  "sha256:79d64c08bd222a8bcaa90ff8ad7ac432430da4fcaa16de72fff497bc58610fe4" -> "sha256:f42f4b18887aeefdd3695ee001bf9d1e1279b279c7d26ccee2275584fff70fed" [label=""];
  "sha256:f42f4b18887aeefdd3695ee001bf9d1e1279b279c7d26ccee2275584fff70fed" -> "sha256:dfb12af23691bc2ef482874b3b99090b28f961ea01ad365d63cfb03be203acde" [label=""];
}

