[app/sources/282450888.Dockerfile]
digraph {
  "sha256:b150da432c7a40066a95bb13c63c745492fdd7212cf68b9867ca367c7b6abf96" [label="docker-image://docker.io/library/golang:1.8" shape="ellipse"];
  "sha256:f59141df0cd1ed947de3624c53f448e85a2a4bd2e121aa12ac3e23f7ae396bf7" [label="local://context" shape="ellipse"];
  "sha256:651430a105d6795f34e263e8f61a5c411ff51717e5c5f39068335330fea06608" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:9b10918c427062089ca93a4620eea3c80e8c8aee5f3034884c2e898ffe6a4fd8" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tvim \t&& rm -rf /var/list/apt/lists/*" shape="box"];
  "sha256:c4acb10192d447559e9fd3632e5654ffb8fd2da42d72a45ff65a5608077ff6b2" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:be086746710518e2411e5177f076a0622f00b5bdf07aadd74ae526d54567dee0" [label="sha256:be086746710518e2411e5177f076a0622f00b5bdf07aadd74ae526d54567dee0" shape="plaintext"];
  "sha256:b150da432c7a40066a95bb13c63c745492fdd7212cf68b9867ca367c7b6abf96" -> "sha256:651430a105d6795f34e263e8f61a5c411ff51717e5c5f39068335330fea06608" [label=""];
  "sha256:f59141df0cd1ed947de3624c53f448e85a2a4bd2e121aa12ac3e23f7ae396bf7" -> "sha256:651430a105d6795f34e263e8f61a5c411ff51717e5c5f39068335330fea06608" [label=""];
  "sha256:651430a105d6795f34e263e8f61a5c411ff51717e5c5f39068335330fea06608" -> "sha256:9b10918c427062089ca93a4620eea3c80e8c8aee5f3034884c2e898ffe6a4fd8" [label=""];
  "sha256:9b10918c427062089ca93a4620eea3c80e8c8aee5f3034884c2e898ffe6a4fd8" -> "sha256:c4acb10192d447559e9fd3632e5654ffb8fd2da42d72a45ff65a5608077ff6b2" [label=""];
  "sha256:c4acb10192d447559e9fd3632e5654ffb8fd2da42d72a45ff65a5608077ff6b2" -> "sha256:be086746710518e2411e5177f076a0622f00b5bdf07aadd74ae526d54567dee0" [label=""];
}

