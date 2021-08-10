[app/sources/475283342.Dockerfile]
digraph {
  "sha256:09a16241f72aeddf42083abdc584056b7c99d636fd5335694e841061ba5c90f4" [label="docker-image://docker.io/library/golang:1.3.3" shape="ellipse"];
  "sha256:5476750011774680983dddb1cf21fb0abfd78166a0fe239e99fc6831bbe4ba7c" [label="local://context" shape="ellipse"];
  "sha256:cd19391828e7fd5e99c4e5f1fb5d1aa666d9a4d188c78c0d33c55b9bb7401fa9" [label="copy{src=/, dest=/go/src/github.com/bsphere/lecat}" shape="note"];
  "sha256:84c3be9fb9df947d2fea86079536461f760c3afb184a5032a471ce5b863e82ae" [label="/bin/sh -c go get github.com/bsphere/lecat" shape="box"];
  "sha256:2c6142a1b433878a643c8c3170c31e886fcf77ff70c43247f0a48aba17455c1c" [label="/bin/sh -c go install github.com/bsphere/lecat" shape="box"];
  "sha256:9bd6e637139b7ac71f2d8441e8f92783a9d1a504620588f7e8566baa8d89cf94" [label="sha256:9bd6e637139b7ac71f2d8441e8f92783a9d1a504620588f7e8566baa8d89cf94" shape="plaintext"];
  "sha256:09a16241f72aeddf42083abdc584056b7c99d636fd5335694e841061ba5c90f4" -> "sha256:cd19391828e7fd5e99c4e5f1fb5d1aa666d9a4d188c78c0d33c55b9bb7401fa9" [label=""];
  "sha256:5476750011774680983dddb1cf21fb0abfd78166a0fe239e99fc6831bbe4ba7c" -> "sha256:cd19391828e7fd5e99c4e5f1fb5d1aa666d9a4d188c78c0d33c55b9bb7401fa9" [label=""];
  "sha256:cd19391828e7fd5e99c4e5f1fb5d1aa666d9a4d188c78c0d33c55b9bb7401fa9" -> "sha256:84c3be9fb9df947d2fea86079536461f760c3afb184a5032a471ce5b863e82ae" [label=""];
  "sha256:84c3be9fb9df947d2fea86079536461f760c3afb184a5032a471ce5b863e82ae" -> "sha256:2c6142a1b433878a643c8c3170c31e886fcf77ff70c43247f0a48aba17455c1c" [label=""];
  "sha256:2c6142a1b433878a643c8c3170c31e886fcf77ff70c43247f0a48aba17455c1c" -> "sha256:9bd6e637139b7ac71f2d8441e8f92783a9d1a504620588f7e8566baa8d89cf94" [label=""];
}

