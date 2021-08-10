[app/sources/374746279.Dockerfile]
digraph {
  "sha256:73a441601f65914ab3ce3f35f099cddee9b07bb5a52e7c30bbb54e3df3880a41" [label="docker-image://docker.io/library/golang:1.8-alpine3.6" shape="ellipse"];
  "sha256:2af82eab9712a06ca80f4aa7232752d37980ad0165427bc0a25732e4f60399bd" [label="local://context" shape="ellipse"];
  "sha256:9b5704da74b2eb6304b13179f32c71d1cf1b2e656a2f09ba6d8c98bac175519d" [label="copy{src=/, dest=/go/src/github.com/jldeen/croc-hunter}" shape="note"];
  "sha256:b07359f98f2e1d0d25bb6b0931b536d349b28933b9eff3fd2e963eddc268fccf" [label="copy{src=/static, dest=/static/}" shape="note"];
  "sha256:82e2d6ac4e1c3c8fe3ec885b94565f240d18b11ad4396b32c3748373e90b667e" [label="/bin/sh -c cd $GOPATH/src/github.com/jldeen/croc-hunter && go install -v ." shape="box"];
  "sha256:5ff0ffc0827ee76fc9658387f8da11ab1148bb83218bdb20256f6af6d8d18e9d" [label="sha256:5ff0ffc0827ee76fc9658387f8da11ab1148bb83218bdb20256f6af6d8d18e9d" shape="plaintext"];
  "sha256:73a441601f65914ab3ce3f35f099cddee9b07bb5a52e7c30bbb54e3df3880a41" -> "sha256:9b5704da74b2eb6304b13179f32c71d1cf1b2e656a2f09ba6d8c98bac175519d" [label=""];
  "sha256:2af82eab9712a06ca80f4aa7232752d37980ad0165427bc0a25732e4f60399bd" -> "sha256:9b5704da74b2eb6304b13179f32c71d1cf1b2e656a2f09ba6d8c98bac175519d" [label=""];
  "sha256:9b5704da74b2eb6304b13179f32c71d1cf1b2e656a2f09ba6d8c98bac175519d" -> "sha256:b07359f98f2e1d0d25bb6b0931b536d349b28933b9eff3fd2e963eddc268fccf" [label=""];
  "sha256:2af82eab9712a06ca80f4aa7232752d37980ad0165427bc0a25732e4f60399bd" -> "sha256:b07359f98f2e1d0d25bb6b0931b536d349b28933b9eff3fd2e963eddc268fccf" [label=""];
  "sha256:b07359f98f2e1d0d25bb6b0931b536d349b28933b9eff3fd2e963eddc268fccf" -> "sha256:82e2d6ac4e1c3c8fe3ec885b94565f240d18b11ad4396b32c3748373e90b667e" [label=""];
  "sha256:82e2d6ac4e1c3c8fe3ec885b94565f240d18b11ad4396b32c3748373e90b667e" -> "sha256:5ff0ffc0827ee76fc9658387f8da11ab1148bb83218bdb20256f6af6d8d18e9d" [label=""];
}

