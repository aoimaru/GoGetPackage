[app/sources/346893573.Dockerfile]
digraph {
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" [label="docker-image://docker.io/library/golang:alpine" shape="ellipse"];
  "sha256:267aabde75679edca644b650f6574a8709e24ae3ca9e54b8ba4a757098b5900c" [label="local://context" shape="ellipse"];
  "sha256:39c85a137e846ab80f3f39a712969825c4e3ba2080cb5d019aac8df0be207be2" [label="copy{src=/, dest=/go/src/github.com/CiscoCloud/consul-cli}" shape="note"];
  "sha256:3eb823c9e44df6f770b06ec7cb1aaf8ce6502d14c9e27ad3ccd554b299f50d2f" [label="/bin/sh -c apk add --update go git mercurial \t&& cd /go/src/github.com/CiscoCloud/consul-cli \t&& export GOPATH=/go \t&& go get \t&& go build -o /bin/consul-cli \t&& rm -rf /go \t&& apk del --purge go git mercurial" shape="box"];
  "sha256:0deec8779a34811115d2aa4abe5aea8ef02af7fcc232829cc34947d02f4aaa9b" [label="sha256:0deec8779a34811115d2aa4abe5aea8ef02af7fcc232829cc34947d02f4aaa9b" shape="plaintext"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" -> "sha256:39c85a137e846ab80f3f39a712969825c4e3ba2080cb5d019aac8df0be207be2" [label=""];
  "sha256:267aabde75679edca644b650f6574a8709e24ae3ca9e54b8ba4a757098b5900c" -> "sha256:39c85a137e846ab80f3f39a712969825c4e3ba2080cb5d019aac8df0be207be2" [label=""];
  "sha256:39c85a137e846ab80f3f39a712969825c4e3ba2080cb5d019aac8df0be207be2" -> "sha256:3eb823c9e44df6f770b06ec7cb1aaf8ce6502d14c9e27ad3ccd554b299f50d2f" [label=""];
  "sha256:3eb823c9e44df6f770b06ec7cb1aaf8ce6502d14c9e27ad3ccd554b299f50d2f" -> "sha256:0deec8779a34811115d2aa4abe5aea8ef02af7fcc232829cc34947d02f4aaa9b" [label=""];
}

