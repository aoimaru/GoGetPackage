[app/sources/137842118.Dockerfile]
digraph {
  "sha256:79ed003a818cdba4d6289e73d6c9a0346edc2c749bd659284c8b35ab71a8eb51" [label="local://context" shape="ellipse"];
  "sha256:b150da432c7a40066a95bb13c63c745492fdd7212cf68b9867ca367c7b6abf96" [label="docker-image://docker.io/library/golang:1.8" shape="ellipse"];
  "sha256:6dd0b508a757541b38a0866fa86deab1cfa0a122dc3fa44cb798d7e966e28633" [label="/bin/sh -c apt-get update && apt-get install --no-install-recommends -y -q build-essential git" shape="box"];
  "sha256:881170c361ca6ffed2f76c7e4ea77c7833c30e090bb8b2a9efca24dbb49fa98a" [label="/bin/sh -c go get -d golang.org/x/crypto/acme/autocert" shape="box"];
  "sha256:21e6f51de6b2bb04764797346ece2ba33be7f7cfa7912d6fe1415a151389f47c" [label="copy{src=/, dest=/go/src/tip}" shape="note"];
  "sha256:b6036e4f56212cba3f0a99d12d1168accfb2d8984479af5cb998129ca4c2093c" [label="/bin/sh -c go install tip" shape="box"];
  "sha256:1d6bd0b232ff6febf4fdfa6a40070ecdb6d4c7af04fba646f31e86f8127dd514" [label="sha256:1d6bd0b232ff6febf4fdfa6a40070ecdb6d4c7af04fba646f31e86f8127dd514" shape="plaintext"];
  "sha256:b150da432c7a40066a95bb13c63c745492fdd7212cf68b9867ca367c7b6abf96" -> "sha256:6dd0b508a757541b38a0866fa86deab1cfa0a122dc3fa44cb798d7e966e28633" [label=""];
  "sha256:6dd0b508a757541b38a0866fa86deab1cfa0a122dc3fa44cb798d7e966e28633" -> "sha256:881170c361ca6ffed2f76c7e4ea77c7833c30e090bb8b2a9efca24dbb49fa98a" [label=""];
  "sha256:881170c361ca6ffed2f76c7e4ea77c7833c30e090bb8b2a9efca24dbb49fa98a" -> "sha256:21e6f51de6b2bb04764797346ece2ba33be7f7cfa7912d6fe1415a151389f47c" [label=""];
  "sha256:79ed003a818cdba4d6289e73d6c9a0346edc2c749bd659284c8b35ab71a8eb51" -> "sha256:21e6f51de6b2bb04764797346ece2ba33be7f7cfa7912d6fe1415a151389f47c" [label=""];
  "sha256:21e6f51de6b2bb04764797346ece2ba33be7f7cfa7912d6fe1415a151389f47c" -> "sha256:b6036e4f56212cba3f0a99d12d1168accfb2d8984479af5cb998129ca4c2093c" [label=""];
  "sha256:b6036e4f56212cba3f0a99d12d1168accfb2d8984479af5cb998129ca4c2093c" -> "sha256:1d6bd0b232ff6febf4fdfa6a40070ecdb6d4c7af04fba646f31e86f8127dd514" [label=""];
}

