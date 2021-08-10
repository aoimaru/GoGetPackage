[app/sources/286547494.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:ad0f69e665498f3b0e14d14f4f4ed2e1886706bc69ab6223eda5c2cbd826d6ac" [label="/bin/sh -c mkdir -p $GOPATH/src/github.com/hpcloud/tail/" shape="box"];
  "sha256:5fba3c4fc947336aa188f38b06ade1137f290805887e92f38b61c032a995bf73" [label="local://context" shape="ellipse"];
  "sha256:b4cb83624009dda7fa3521df26c5186ec99db26085212ae422d0444d30022c60" [label="copy{src=/, dest=/src/github.com/hpcloud/tail/}" shape="note"];
  "sha256:0b65b5d881432c177634ccf0afbe6eca32069d629c520a0ef93bf04dfdd6cfde" [label="/bin/sh -c go get -v github.com/hpcloud/tail" shape="box"];
  "sha256:56dfaf5efc1f4975daa17825be0b41d9876f488c93ff12df16c758ad5fcece0f" [label="/bin/sh -c go test -v github.com/hpcloud/tail" shape="box"];
  "sha256:51351cba8358f424eefe9bd5af2a97f880090096a99e575c11a7070d8c19526c" [label="/bin/sh -c go install -v github.com/hpcloud/tail" shape="box"];
  "sha256:da802f63a061fbf3204d9ebd8830721d7d15fb76e9b5efc0755c98b57daaf772" [label="/bin/sh -c go install -v github.com/hpcloud/tail/cmd/gotail" shape="box"];
  "sha256:597e5f00219cacc2aba69d6a38f55566cf57f9d28f7e2fa1f0bfdef950fc358c" [label="/bin/sh -c $GOPATH/bin/gotail -h || true" shape="box"];
  "sha256:22c7027770398d2b9a91cf6e56b9827ec8ace8d6b1cb9e7715952a8eed11aff4" [label="sha256:22c7027770398d2b9a91cf6e56b9827ec8ace8d6b1cb9e7715952a8eed11aff4" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:ad0f69e665498f3b0e14d14f4f4ed2e1886706bc69ab6223eda5c2cbd826d6ac" [label=""];
  "sha256:ad0f69e665498f3b0e14d14f4f4ed2e1886706bc69ab6223eda5c2cbd826d6ac" -> "sha256:b4cb83624009dda7fa3521df26c5186ec99db26085212ae422d0444d30022c60" [label=""];
  "sha256:5fba3c4fc947336aa188f38b06ade1137f290805887e92f38b61c032a995bf73" -> "sha256:b4cb83624009dda7fa3521df26c5186ec99db26085212ae422d0444d30022c60" [label=""];
  "sha256:b4cb83624009dda7fa3521df26c5186ec99db26085212ae422d0444d30022c60" -> "sha256:0b65b5d881432c177634ccf0afbe6eca32069d629c520a0ef93bf04dfdd6cfde" [label=""];
  "sha256:0b65b5d881432c177634ccf0afbe6eca32069d629c520a0ef93bf04dfdd6cfde" -> "sha256:56dfaf5efc1f4975daa17825be0b41d9876f488c93ff12df16c758ad5fcece0f" [label=""];
  "sha256:56dfaf5efc1f4975daa17825be0b41d9876f488c93ff12df16c758ad5fcece0f" -> "sha256:51351cba8358f424eefe9bd5af2a97f880090096a99e575c11a7070d8c19526c" [label=""];
  "sha256:51351cba8358f424eefe9bd5af2a97f880090096a99e575c11a7070d8c19526c" -> "sha256:da802f63a061fbf3204d9ebd8830721d7d15fb76e9b5efc0755c98b57daaf772" [label=""];
  "sha256:da802f63a061fbf3204d9ebd8830721d7d15fb76e9b5efc0755c98b57daaf772" -> "sha256:597e5f00219cacc2aba69d6a38f55566cf57f9d28f7e2fa1f0bfdef950fc358c" [label=""];
  "sha256:597e5f00219cacc2aba69d6a38f55566cf57f9d28f7e2fa1f0bfdef950fc358c" -> "sha256:22c7027770398d2b9a91cf6e56b9827ec8ace8d6b1cb9e7715952a8eed11aff4" [label=""];
}

