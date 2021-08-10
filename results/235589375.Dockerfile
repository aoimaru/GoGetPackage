[app/sources/235589375.Dockerfile]
digraph {
  "sha256:d3575ac41a0b0874a0b92f2376b4357024823d0228fc1c0f154ab0100b2b60d9" [label="docker-image://docker.io/library/golang:1.6" shape="ellipse"];
  "sha256:80ef1ef239e5dfdf233e57d25ab95ad8a061e8b1797464dd2eaf836958363749" [label="mkdir{path=/go/src/github.com/cloudflare/cfssl}" shape="note"];
  "sha256:483de2d959977d5c722d36556ddc870a57dda9bf42b8bb3d447aeadcfe28b0db" [label="local://context" shape="ellipse"];
  "sha256:efab09ceaf5c77547f97b6f8b9bc9d9fd3bc2848b676d9e2464245671ddc7833" [label="copy{src=/, dest=/go/src/github.com/cloudflare/cfssl/}" shape="note"];
  "sha256:ad3885e8b09be307f599c76a8dd8193789901109116dbddd6799022432ce9164" [label="/bin/sh -c go get github.com/GeertJohan/go.rice/rice && rice embed-go -i=./cli/serve && \tcp -R /go/src/github.com/cloudflare/cfssl/vendor/github.com/cloudflare/cfssl_trust /etc/cfssl && \tgo install ./cmd/..." shape="box"];
  "sha256:d3d41c5f8f4cf7a90df64e10374a397618d771ac4f647734bddad51739bf5ea1" [label="sha256:d3d41c5f8f4cf7a90df64e10374a397618d771ac4f647734bddad51739bf5ea1" shape="plaintext"];
  "sha256:d3575ac41a0b0874a0b92f2376b4357024823d0228fc1c0f154ab0100b2b60d9" -> "sha256:80ef1ef239e5dfdf233e57d25ab95ad8a061e8b1797464dd2eaf836958363749" [label=""];
  "sha256:80ef1ef239e5dfdf233e57d25ab95ad8a061e8b1797464dd2eaf836958363749" -> "sha256:efab09ceaf5c77547f97b6f8b9bc9d9fd3bc2848b676d9e2464245671ddc7833" [label=""];
  "sha256:483de2d959977d5c722d36556ddc870a57dda9bf42b8bb3d447aeadcfe28b0db" -> "sha256:efab09ceaf5c77547f97b6f8b9bc9d9fd3bc2848b676d9e2464245671ddc7833" [label=""];
  "sha256:efab09ceaf5c77547f97b6f8b9bc9d9fd3bc2848b676d9e2464245671ddc7833" -> "sha256:ad3885e8b09be307f599c76a8dd8193789901109116dbddd6799022432ce9164" [label=""];
  "sha256:ad3885e8b09be307f599c76a8dd8193789901109116dbddd6799022432ce9164" -> "sha256:d3d41c5f8f4cf7a90df64e10374a397618d771ac4f647734bddad51739bf5ea1" [label=""];
}

