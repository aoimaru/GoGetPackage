[app/sources/402649749.Dockerfile]
digraph {
  "sha256:3f0d5bbb54abe4ac9dfb3186933f3617f19f10e7205aa562caa326fdbd25713d" [label="docker-image://docker.io/library/golang:1.11.1-stretch" shape="ellipse"];
  "sha256:7f8e9eadcf958d6203a9c11967267360bf991dd727ebe680fda7bf0bd5709e55" [label="mkdir{path=/test}" shape="note"];
  "sha256:825c8f274cd900a36c99a03c25091f5a8ccdbc7e14ee1e4cb2e30e09ee276090" [label="local://context" shape="ellipse"];
  "sha256:b79dcbe6bfe038e0cbea7b76f455d9f393421138b90c139825e974832f4aa3b2" [label="copy{src=/, dest=/test}" shape="note"];
  "sha256:138403c52b712ef07c04d982da3b23d3606d17730188e2932efe87f5b270cb84" [label="/bin/sh -c rm -r .gotron .gotron-builder" shape="box"];
  "sha256:d5725c4bb2c6c9bd66ea99d99375882d4f9ad42671dd1e462c64194a12c70438" [label="/bin/sh -c GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -o ./example -a example/main.go" shape="box"];
  "sha256:b4570c7689552db210ae59531db23db8ce6e8199ddf466a9c7744bb9af135725" [label="sha256:b4570c7689552db210ae59531db23db8ce6e8199ddf466a9c7744bb9af135725" shape="plaintext"];
  "sha256:3f0d5bbb54abe4ac9dfb3186933f3617f19f10e7205aa562caa326fdbd25713d" -> "sha256:7f8e9eadcf958d6203a9c11967267360bf991dd727ebe680fda7bf0bd5709e55" [label=""];
  "sha256:7f8e9eadcf958d6203a9c11967267360bf991dd727ebe680fda7bf0bd5709e55" -> "sha256:b79dcbe6bfe038e0cbea7b76f455d9f393421138b90c139825e974832f4aa3b2" [label=""];
  "sha256:825c8f274cd900a36c99a03c25091f5a8ccdbc7e14ee1e4cb2e30e09ee276090" -> "sha256:b79dcbe6bfe038e0cbea7b76f455d9f393421138b90c139825e974832f4aa3b2" [label=""];
  "sha256:b79dcbe6bfe038e0cbea7b76f455d9f393421138b90c139825e974832f4aa3b2" -> "sha256:138403c52b712ef07c04d982da3b23d3606d17730188e2932efe87f5b270cb84" [label=""];
  "sha256:138403c52b712ef07c04d982da3b23d3606d17730188e2932efe87f5b270cb84" -> "sha256:d5725c4bb2c6c9bd66ea99d99375882d4f9ad42671dd1e462c64194a12c70438" [label=""];
  "sha256:d5725c4bb2c6c9bd66ea99d99375882d4f9ad42671dd1e462c64194a12c70438" -> "sha256:b4570c7689552db210ae59531db23db8ce6e8199ddf466a9c7744bb9af135725" [label=""];
}

