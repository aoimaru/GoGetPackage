[app/sources/323548125.Dockerfile]
digraph {
  "sha256:0c716ade9bab3436eff1e227d6c5bcf7ce6f1e9480b440846e2da9516e4c7e0c" [label="local://context" shape="ellipse"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:04a0df67bc931892b8e44bf1fbde9fca76a948e73293f543af9987b2b79a9499" [label="docker-image://docker.io/library/golang:1.10-alpine" shape="ellipse"];
  "sha256:e6eed67f7bf71be3bf65ccf71ee778070154a7ed29307b7cb948e27867af0943" [label="mkdir{path=/src/github.com/ltcsuite/ltcd}" shape="note"];
  "sha256:a71a06cc5472499c7749b98626c781ac58a3024e1153a3b2d22ac7aa0fba98ac" [label="/bin/sh -c apk add --no-cache git &&  git clone https://github.com/ltcsuite/ltcd ./ &&  go get -u github.com/Masterminds/glide &&  glide install &&  go install . ./cmd/ltcctl ./cmd/gencerts" shape="box"];
  "sha256:3773b5d231c8b089bea4d9915cc1673c8874cbd965c2902d4c44bf7d2d116a14" [label="copy{src=/go/bin/ltcctl, dest=/bin/}" shape="note"];
  "sha256:b022aee1d61bc8d76af86d81db486f2d11088ebf180222695c06fbd2dfa05de6" [label="copy{src=/go/bin/ltcd, dest=/bin/}" shape="note"];
  "sha256:152c8629bd48d0ad91cc53bd0e390064cbb71990a6b12db5665d89b1b052fadf" [label="copy{src=/go/bin/gencerts, dest=/bin/}" shape="note"];
  "sha256:ee8f83d4e3027ddfa5fc24301816b5188e1a0ba91aa4ab04b630c71a64fad523" [label="copy{src=/start-ltcctl.sh, dest=/}" shape="note"];
  "sha256:15dc560e5fa69bced7a112faf92a992edbe01d2a9d6d99e3d6d61d9dab127a3a" [label="copy{src=/start-ltcd.sh, dest=/}" shape="note"];
  "sha256:35724ca96bf03fc6725a86d7f6d4ba06e71b0d833c576ff1b8f3b3d25b25d6de" [label="/bin/sh -c apk add --no-cache     bash     ca-certificates &&  chmod +x start-ltcctl.sh &&  chmod +x start-ltcd.sh &&  mkdir \"/rpc\" \"/root/.ltcd\" \"/root/.ltcctl\" &&  touch \"/root/.ltcd/ltcd.conf\" &&  \"/bin/gencerts\" --host=\"*\" --directory=\"/rpc\" --force" shape="box"];
  "sha256:6505ddf8ef4e616627f35322964d825ab751f48e3c54605260e05ff9c2ac76ca" [label="sha256:6505ddf8ef4e616627f35322964d825ab751f48e3c54605260e05ff9c2ac76ca" shape="plaintext"];
  "sha256:04a0df67bc931892b8e44bf1fbde9fca76a948e73293f543af9987b2b79a9499" -> "sha256:e6eed67f7bf71be3bf65ccf71ee778070154a7ed29307b7cb948e27867af0943" [label=""];
  "sha256:e6eed67f7bf71be3bf65ccf71ee778070154a7ed29307b7cb948e27867af0943" -> "sha256:a71a06cc5472499c7749b98626c781ac58a3024e1153a3b2d22ac7aa0fba98ac" [label=""];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:3773b5d231c8b089bea4d9915cc1673c8874cbd965c2902d4c44bf7d2d116a14" [label=""];
  "sha256:a71a06cc5472499c7749b98626c781ac58a3024e1153a3b2d22ac7aa0fba98ac" -> "sha256:3773b5d231c8b089bea4d9915cc1673c8874cbd965c2902d4c44bf7d2d116a14" [label=""];
  "sha256:3773b5d231c8b089bea4d9915cc1673c8874cbd965c2902d4c44bf7d2d116a14" -> "sha256:b022aee1d61bc8d76af86d81db486f2d11088ebf180222695c06fbd2dfa05de6" [label=""];
  "sha256:a71a06cc5472499c7749b98626c781ac58a3024e1153a3b2d22ac7aa0fba98ac" -> "sha256:b022aee1d61bc8d76af86d81db486f2d11088ebf180222695c06fbd2dfa05de6" [label=""];
  "sha256:b022aee1d61bc8d76af86d81db486f2d11088ebf180222695c06fbd2dfa05de6" -> "sha256:152c8629bd48d0ad91cc53bd0e390064cbb71990a6b12db5665d89b1b052fadf" [label=""];
  "sha256:a71a06cc5472499c7749b98626c781ac58a3024e1153a3b2d22ac7aa0fba98ac" -> "sha256:152c8629bd48d0ad91cc53bd0e390064cbb71990a6b12db5665d89b1b052fadf" [label=""];
  "sha256:152c8629bd48d0ad91cc53bd0e390064cbb71990a6b12db5665d89b1b052fadf" -> "sha256:ee8f83d4e3027ddfa5fc24301816b5188e1a0ba91aa4ab04b630c71a64fad523" [label=""];
  "sha256:0c716ade9bab3436eff1e227d6c5bcf7ce6f1e9480b440846e2da9516e4c7e0c" -> "sha256:ee8f83d4e3027ddfa5fc24301816b5188e1a0ba91aa4ab04b630c71a64fad523" [label=""];
  "sha256:ee8f83d4e3027ddfa5fc24301816b5188e1a0ba91aa4ab04b630c71a64fad523" -> "sha256:15dc560e5fa69bced7a112faf92a992edbe01d2a9d6d99e3d6d61d9dab127a3a" [label=""];
  "sha256:0c716ade9bab3436eff1e227d6c5bcf7ce6f1e9480b440846e2da9516e4c7e0c" -> "sha256:15dc560e5fa69bced7a112faf92a992edbe01d2a9d6d99e3d6d61d9dab127a3a" [label=""];
  "sha256:15dc560e5fa69bced7a112faf92a992edbe01d2a9d6d99e3d6d61d9dab127a3a" -> "sha256:35724ca96bf03fc6725a86d7f6d4ba06e71b0d833c576ff1b8f3b3d25b25d6de" [label=""];
  "sha256:35724ca96bf03fc6725a86d7f6d4ba06e71b0d833c576ff1b8f3b3d25b25d6de" -> "sha256:6505ddf8ef4e616627f35322964d825ab751f48e3c54605260e05ff9c2ac76ca" [label=""];
}

