[app/sources/320111224.Dockerfile]
digraph {
  "sha256:597b25c9e7e5d90b1aaa58bd0f722196150b274d720fc28379a42fd6d0a68fd9" [label="docker-image://docker.io/library/golang:1.10.1-alpine3.7" shape="ellipse"];
  "sha256:ed43fd1afcf5685b07c4c39518ed58e015f51b48e0cd19f94e07209407edff6d" [label="mkdir{path=/go/src/github.com/keelerh/omniscience}" shape="note"];
  "sha256:5ffb43ad4e090605f1a52370395c9658bc911fee9541f9178530b23f13bf2150" [label="local://context" shape="ellipse"];
  "sha256:59f43cad34bceb8ae832d0d9d45f9801c24bd6100f72b4bbf27be1987c99d8b7" [label="copy{src=/, dest=/go/src/github.com/keelerh/omniscience/}" shape="note"];
  "sha256:34b79b134803452ca2c70eecc58373500ceee006bf70931954c493a2a0a1c7da" [label="/bin/sh -c go build -o /ingester-github cmd/ingester/github/main.go" shape="box"];
  "sha256:2578402dd02b77e3b1b8e17584d8604340b647989b97a7c605723bd435070dc3" [label="copy{src=/ingester-github, dest=/}" shape="note"];
  "sha256:e38bf9abfcaedada7329eae4d407b46e2f09781bb7eb3b8ed17ddbc9417b974b" [label="sha256:e38bf9abfcaedada7329eae4d407b46e2f09781bb7eb3b8ed17ddbc9417b974b" shape="plaintext"];
  "sha256:597b25c9e7e5d90b1aaa58bd0f722196150b274d720fc28379a42fd6d0a68fd9" -> "sha256:ed43fd1afcf5685b07c4c39518ed58e015f51b48e0cd19f94e07209407edff6d" [label=""];
  "sha256:ed43fd1afcf5685b07c4c39518ed58e015f51b48e0cd19f94e07209407edff6d" -> "sha256:59f43cad34bceb8ae832d0d9d45f9801c24bd6100f72b4bbf27be1987c99d8b7" [label=""];
  "sha256:5ffb43ad4e090605f1a52370395c9658bc911fee9541f9178530b23f13bf2150" -> "sha256:59f43cad34bceb8ae832d0d9d45f9801c24bd6100f72b4bbf27be1987c99d8b7" [label=""];
  "sha256:59f43cad34bceb8ae832d0d9d45f9801c24bd6100f72b4bbf27be1987c99d8b7" -> "sha256:34b79b134803452ca2c70eecc58373500ceee006bf70931954c493a2a0a1c7da" [label=""];
  "sha256:597b25c9e7e5d90b1aaa58bd0f722196150b274d720fc28379a42fd6d0a68fd9" -> "sha256:2578402dd02b77e3b1b8e17584d8604340b647989b97a7c605723bd435070dc3" [label=""];
  "sha256:34b79b134803452ca2c70eecc58373500ceee006bf70931954c493a2a0a1c7da" -> "sha256:2578402dd02b77e3b1b8e17584d8604340b647989b97a7c605723bd435070dc3" [label=""];
  "sha256:2578402dd02b77e3b1b8e17584d8604340b647989b97a7c605723bd435070dc3" -> "sha256:e38bf9abfcaedada7329eae4d407b46e2f09781bb7eb3b8ed17ddbc9417b974b" [label=""];
}

