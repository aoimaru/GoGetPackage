[app/sub_sources/128531600.Dockerfile]
digraph {
  "sha256:b81b4961721701e30f6eeb88a73860e857cc4230dcb40e02ec712275a1895cb7" [label="docker-image://docker.io/library/golang@sha256:5cdc91c9e67e7b95ef5a1c9156af24aaccbb4e339799efd441fd7e961b3e2e75" shape="ellipse"];
  "sha256:ed8dd69aac7d82a38b205dd4822b3bdc382505cbdbbd94e300acaf6bd6fe2d34" [label="/bin/sh -c mkdir -p $GOPATH/src/github.com/hpcloud/tail/" shape="box"];
  "sha256:5dc4949d0a526e46b9aa75904cbe5a005ed343335d06585466359b0608be189e" [label="local://context" shape="ellipse"];
  "sha256:c8a6118da5299adb4e8af4c7fdc392ac518c54dfe367c69e66c28f2411b77d28" [label="copy{src=/, dest=/go/src/github.com/hpcloud/tail/}" shape="note"];
  "sha256:5c0365437bb192b5c0ffb3a6d5f3505559d19df139be236ec51670409719a29e" [label="/bin/sh -c go get -v github.com/hpcloud/tail" shape="box"];
  "sha256:e96e5caa27c6b347811dc10db58ffb457c16c2522280cce8a25098c3c6d62565" [label="/bin/sh -c go test -v github.com/hpcloud/tail" shape="box"];
  "sha256:3e31eff3d60323d279e3b424d70589fc6df2d1e577af2f497bf81fdff04ae79d" [label="/bin/sh -c go install -v github.com/hpcloud/tail" shape="box"];
  "sha256:740d1ee889950cee75614a5a51cf891f64fa11fb9f241f8116a00fed0ec3a603" [label="/bin/sh -c go install -v github.com/hpcloud/tail/cmd/gotail" shape="box"];
  "sha256:4595f7cea8bbe290473300274b9a08310a413f44cf0c3ebf947ce6656de461b8" [label="/bin/sh -c $GOPATH/bin/gotail -h || true" shape="box"];
  "sha256:363ceea1e45fae751dd2c4c9f963a24243d13ee478226b90e68403ea9645dcd6" [label="sha256:363ceea1e45fae751dd2c4c9f963a24243d13ee478226b90e68403ea9645dcd6" shape="plaintext"];
  "sha256:b81b4961721701e30f6eeb88a73860e857cc4230dcb40e02ec712275a1895cb7" -> "sha256:ed8dd69aac7d82a38b205dd4822b3bdc382505cbdbbd94e300acaf6bd6fe2d34" [label=""];
  "sha256:ed8dd69aac7d82a38b205dd4822b3bdc382505cbdbbd94e300acaf6bd6fe2d34" -> "sha256:c8a6118da5299adb4e8af4c7fdc392ac518c54dfe367c69e66c28f2411b77d28" [label=""];
  "sha256:5dc4949d0a526e46b9aa75904cbe5a005ed343335d06585466359b0608be189e" -> "sha256:c8a6118da5299adb4e8af4c7fdc392ac518c54dfe367c69e66c28f2411b77d28" [label=""];
  "sha256:c8a6118da5299adb4e8af4c7fdc392ac518c54dfe367c69e66c28f2411b77d28" -> "sha256:5c0365437bb192b5c0ffb3a6d5f3505559d19df139be236ec51670409719a29e" [label=""];
  "sha256:5c0365437bb192b5c0ffb3a6d5f3505559d19df139be236ec51670409719a29e" -> "sha256:e96e5caa27c6b347811dc10db58ffb457c16c2522280cce8a25098c3c6d62565" [label=""];
  "sha256:e96e5caa27c6b347811dc10db58ffb457c16c2522280cce8a25098c3c6d62565" -> "sha256:3e31eff3d60323d279e3b424d70589fc6df2d1e577af2f497bf81fdff04ae79d" [label=""];
  "sha256:3e31eff3d60323d279e3b424d70589fc6df2d1e577af2f497bf81fdff04ae79d" -> "sha256:740d1ee889950cee75614a5a51cf891f64fa11fb9f241f8116a00fed0ec3a603" [label=""];
  "sha256:740d1ee889950cee75614a5a51cf891f64fa11fb9f241f8116a00fed0ec3a603" -> "sha256:4595f7cea8bbe290473300274b9a08310a413f44cf0c3ebf947ce6656de461b8" [label=""];
  "sha256:4595f7cea8bbe290473300274b9a08310a413f44cf0c3ebf947ce6656de461b8" -> "sha256:363ceea1e45fae751dd2c4c9f963a24243d13ee478226b90e68403ea9645dcd6" [label=""];
}

