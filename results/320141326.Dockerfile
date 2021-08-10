[app/sources/320141326.Dockerfile]
digraph {
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" [label="docker-image://docker.io/library/golang:alpine" shape="ellipse"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:088a363106c5ec69e7dd1bc99a468c6f4f7e9062316bfb714c6474c7beddf793" [label="local://context" shape="ellipse"];
  "sha256:99c1f673f11951e2249cec4cdb5340dc6cce44b554f2647fc99ab4e15c97dca7" [label="copy{src=/, dest=/go/src/github.com/knative/docs/docs/serving/samples/gitwebhook-go}" shape="note"];
  "sha256:cd3c14f87f0e47903eadd1a4b8b610a33fbd69c88f3e6f00a965fc0a624eef04" [label="mkdir{path=/go/src/github.com/knative/docs/docs/serving/samples/gitwebhook-go}" shape="note"];
  "sha256:13a828099acb49011fa4ce2cefaf186c562e390eb27732d53a33b4184ccb9c7a" [label="/bin/sh -c go get github.com/google/go-github/github" shape="box"];
  "sha256:19fcd43406f0c32e44eebaa271f6fa8fcf5802086b51336e1b4dff9c741e679e" [label="/bin/sh -c go get golang.org/x/oauth2" shape="box"];
  "sha256:b2242fcf3e035be4cc4dd9a38e49b020c96e2c3e44c8029c5fb47cb015a75df5" [label="/bin/sh -c go get gopkg.in/go-playground/webhooks.v3" shape="box"];
  "sha256:bc4728abd6a35bf51ac4f3c84a83277ebed135a21d523f17966bc7d513528d05" [label="/bin/sh -c go get gopkg.in/go-playground/webhooks.v3/github" shape="box"];
  "sha256:08b65e6d92e03f6123c7a375caae9c8a6619a0faedfa6904aa882d7afd117ea9" [label="/bin/sh -c CGO_ENABLED=0 go build -o /go/bin/webhook-sample ." shape="box"];
  "sha256:e5e5e71b7dfa096f256ecea8ce9c9137473285117c10c6e1f8924ba1a6ff65ca" [label="copy{src=/go/bin/webhook-sample, dest=/app/webhook-sample}" shape="note"];
  "sha256:d5aebd71543cf6f901105619f8c5187a1b2c56f5dc479b952b8cf220393139f9" [label="sha256:d5aebd71543cf6f901105619f8c5187a1b2c56f5dc479b952b8cf220393139f9" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:99c1f673f11951e2249cec4cdb5340dc6cce44b554f2647fc99ab4e15c97dca7" [label=""];
  "sha256:088a363106c5ec69e7dd1bc99a468c6f4f7e9062316bfb714c6474c7beddf793" -> "sha256:99c1f673f11951e2249cec4cdb5340dc6cce44b554f2647fc99ab4e15c97dca7" [label=""];
  "sha256:99c1f673f11951e2249cec4cdb5340dc6cce44b554f2647fc99ab4e15c97dca7" -> "sha256:cd3c14f87f0e47903eadd1a4b8b610a33fbd69c88f3e6f00a965fc0a624eef04" [label=""];
  "sha256:cd3c14f87f0e47903eadd1a4b8b610a33fbd69c88f3e6f00a965fc0a624eef04" -> "sha256:13a828099acb49011fa4ce2cefaf186c562e390eb27732d53a33b4184ccb9c7a" [label=""];
  "sha256:13a828099acb49011fa4ce2cefaf186c562e390eb27732d53a33b4184ccb9c7a" -> "sha256:19fcd43406f0c32e44eebaa271f6fa8fcf5802086b51336e1b4dff9c741e679e" [label=""];
  "sha256:19fcd43406f0c32e44eebaa271f6fa8fcf5802086b51336e1b4dff9c741e679e" -> "sha256:b2242fcf3e035be4cc4dd9a38e49b020c96e2c3e44c8029c5fb47cb015a75df5" [label=""];
  "sha256:b2242fcf3e035be4cc4dd9a38e49b020c96e2c3e44c8029c5fb47cb015a75df5" -> "sha256:bc4728abd6a35bf51ac4f3c84a83277ebed135a21d523f17966bc7d513528d05" [label=""];
  "sha256:bc4728abd6a35bf51ac4f3c84a83277ebed135a21d523f17966bc7d513528d05" -> "sha256:08b65e6d92e03f6123c7a375caae9c8a6619a0faedfa6904aa882d7afd117ea9" [label=""];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" -> "sha256:e5e5e71b7dfa096f256ecea8ce9c9137473285117c10c6e1f8924ba1a6ff65ca" [label=""];
  "sha256:08b65e6d92e03f6123c7a375caae9c8a6619a0faedfa6904aa882d7afd117ea9" -> "sha256:e5e5e71b7dfa096f256ecea8ce9c9137473285117c10c6e1f8924ba1a6ff65ca" [label=""];
  "sha256:e5e5e71b7dfa096f256ecea8ce9c9137473285117c10c6e1f8924ba1a6ff65ca" -> "sha256:d5aebd71543cf6f901105619f8c5187a1b2c56f5dc479b952b8cf220393139f9" [label=""];
}

