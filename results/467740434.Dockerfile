[app/sources/467740434.Dockerfile]
digraph {
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" [label="docker-image://docker.io/library/golang:alpine" shape="ellipse"];
  "sha256:327b6df25ff457cab4b07b067f17150440cebe8b2b45fc475a7f7230626d80d7" [label="/bin/sh -c apk add --update git" shape="box"];
  "sha256:70f22462e6dd98185b4d5611f90a0f40af011c3d20892a395e1ebb6036cbf89e" [label="mkdir{path=/go/src/github.com/friendsofgo/graphiql}" shape="note"];
  "sha256:52f91a68ab55725f8f6dcbe11915bc27f0ccc1c0bc7fee4746f6aac08265a462" [label="local://context" shape="ellipse"];
  "sha256:f46f76cbe20e682e372a760bfeaf2c321cc1e329c2d7f31e1f06488523f88531" [label="copy{src=/, dest=/go/src/github.com/friendsofgo/graphiql/}" shape="note"];
  "sha256:d08fdf0c460e521e6ef4269b4e6538e2e66cf4e095ff85fa40d5557004d807f9" [label="/bin/sh -c TAG=$(git describe --tags --abbrev=0)     && LDFLAGS=$(echo \"-s -w -X main.version=\"$TAG)     && CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -installsuffix cgo -o /go/bin/graphiql -ldflags \"$LDFLAGS\" cmd/graphiql/main.go" shape="box"];
  "sha256:e3228866ccfec955e790362f721987296cad2b777ec34ae6101a0e43b77a7e6c" [label="copy{src=/go/bin/graphiql, dest=/go/bin/graphiql}" shape="note"];
  "sha256:815c09d0f17b2a2d758d6acf5644dd71b9ba390c57fa4a38f6fde37effbb8d32" [label="sha256:815c09d0f17b2a2d758d6acf5644dd71b9ba390c57fa4a38f6fde37effbb8d32" shape="plaintext"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" -> "sha256:327b6df25ff457cab4b07b067f17150440cebe8b2b45fc475a7f7230626d80d7" [label=""];
  "sha256:327b6df25ff457cab4b07b067f17150440cebe8b2b45fc475a7f7230626d80d7" -> "sha256:70f22462e6dd98185b4d5611f90a0f40af011c3d20892a395e1ebb6036cbf89e" [label=""];
  "sha256:70f22462e6dd98185b4d5611f90a0f40af011c3d20892a395e1ebb6036cbf89e" -> "sha256:f46f76cbe20e682e372a760bfeaf2c321cc1e329c2d7f31e1f06488523f88531" [label=""];
  "sha256:52f91a68ab55725f8f6dcbe11915bc27f0ccc1c0bc7fee4746f6aac08265a462" -> "sha256:f46f76cbe20e682e372a760bfeaf2c321cc1e329c2d7f31e1f06488523f88531" [label=""];
  "sha256:f46f76cbe20e682e372a760bfeaf2c321cc1e329c2d7f31e1f06488523f88531" -> "sha256:d08fdf0c460e521e6ef4269b4e6538e2e66cf4e095ff85fa40d5557004d807f9" [label=""];
  "sha256:d08fdf0c460e521e6ef4269b4e6538e2e66cf4e095ff85fa40d5557004d807f9" -> "sha256:e3228866ccfec955e790362f721987296cad2b777ec34ae6101a0e43b77a7e6c" [label=""];
  "sha256:e3228866ccfec955e790362f721987296cad2b777ec34ae6101a0e43b77a7e6c" -> "sha256:815c09d0f17b2a2d758d6acf5644dd71b9ba390c57fa4a38f6fde37effbb8d32" [label=""];
}

