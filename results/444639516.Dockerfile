[app/sources/444639516.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:ad0f69e665498f3b0e14d14f4f4ed2e1886706bc69ab6223eda5c2cbd826d6ac" [label="/bin/sh -c mkdir -p $GOPATH/src/github.com/hpcloud/tail/" shape="box"];
  "sha256:6f3de335c4aa8e80bd2dad60a94b986fedccab7bbdea6dcb5de16d14538811e0" [label="local://context" shape="ellipse"];
  "sha256:7a28ab8422e1b0b3e30525b653d69c10eaf1ac9bd1b7a8cf3d86cb27455db59a" [label="copy{src=/, dest=/src/github.com/hpcloud/tail/}" shape="note"];
  "sha256:3a08a10235a13b18599dca5ab633e848ec7966f647eb4062cf9d7d47ce453709" [label="/bin/sh -c go get -v github.com/hpcloud/tail" shape="box"];
  "sha256:2898cd3b7433c997847a8af1e8036beede52a95042277caac42798a36e457b10" [label="/bin/sh -c go test -v github.com/hpcloud/tail" shape="box"];
  "sha256:682970ef6c190da884003223cbccea3ab369884c7bafa1f1ae9abedb02266142" [label="/bin/sh -c go install -v github.com/hpcloud/tail" shape="box"];
  "sha256:a1fff544e3500ba4a5f95674f870ceaead7ac4d9b42999a9d5262da8a2cc161c" [label="/bin/sh -c go install -v github.com/hpcloud/tail/cmd/gotail" shape="box"];
  "sha256:4f5373b28e975a479152e17e9dd0a60ae8bfc4fa29d904e1b22ff1bc2de89f46" [label="/bin/sh -c $GOPATH/bin/gotail -h || true" shape="box"];
  "sha256:4292b033a735881526b3eb8439f7297d3fd8659ba92f9c001e222249b634d3e5" [label="sha256:4292b033a735881526b3eb8439f7297d3fd8659ba92f9c001e222249b634d3e5" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:ad0f69e665498f3b0e14d14f4f4ed2e1886706bc69ab6223eda5c2cbd826d6ac" [label=""];
  "sha256:ad0f69e665498f3b0e14d14f4f4ed2e1886706bc69ab6223eda5c2cbd826d6ac" -> "sha256:7a28ab8422e1b0b3e30525b653d69c10eaf1ac9bd1b7a8cf3d86cb27455db59a" [label=""];
  "sha256:6f3de335c4aa8e80bd2dad60a94b986fedccab7bbdea6dcb5de16d14538811e0" -> "sha256:7a28ab8422e1b0b3e30525b653d69c10eaf1ac9bd1b7a8cf3d86cb27455db59a" [label=""];
  "sha256:7a28ab8422e1b0b3e30525b653d69c10eaf1ac9bd1b7a8cf3d86cb27455db59a" -> "sha256:3a08a10235a13b18599dca5ab633e848ec7966f647eb4062cf9d7d47ce453709" [label=""];
  "sha256:3a08a10235a13b18599dca5ab633e848ec7966f647eb4062cf9d7d47ce453709" -> "sha256:2898cd3b7433c997847a8af1e8036beede52a95042277caac42798a36e457b10" [label=""];
  "sha256:2898cd3b7433c997847a8af1e8036beede52a95042277caac42798a36e457b10" -> "sha256:682970ef6c190da884003223cbccea3ab369884c7bafa1f1ae9abedb02266142" [label=""];
  "sha256:682970ef6c190da884003223cbccea3ab369884c7bafa1f1ae9abedb02266142" -> "sha256:a1fff544e3500ba4a5f95674f870ceaead7ac4d9b42999a9d5262da8a2cc161c" [label=""];
  "sha256:a1fff544e3500ba4a5f95674f870ceaead7ac4d9b42999a9d5262da8a2cc161c" -> "sha256:4f5373b28e975a479152e17e9dd0a60ae8bfc4fa29d904e1b22ff1bc2de89f46" [label=""];
  "sha256:4f5373b28e975a479152e17e9dd0a60ae8bfc4fa29d904e1b22ff1bc2de89f46" -> "sha256:4292b033a735881526b3eb8439f7297d3fd8659ba92f9c001e222249b634d3e5" [label=""];
}

