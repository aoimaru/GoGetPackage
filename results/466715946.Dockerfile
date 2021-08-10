[app/sources/466715946.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:8fc72e16a4281280e82e4102efaa030fd98d6302b22e0900a8e0d6001ee63944" [label="/bin/sh -c apk --no-cache add   ca-certificates" shape="box"];
  "sha256:14c42e6e039b32ee2b0d4102c75c452274af1ce24a8695bd1abfba26f9307a2e" [label="docker-image://docker.io/library/golang:1.11-alpine" shape="ellipse"];
  "sha256:6a3112eaa10e8521d9ab00fc4bc130bcc7da5e23fddc97e653c30acf5ffda58b" [label="/bin/sh -c apk --no-cache add     g++     git     make" shape="box"];
  "sha256:46a38303f336b206a4dd4127a60ec819300252c26711b21a951729da8896eb0f" [label="mkdir{path=/src}" shape="note"];
  "sha256:248e715567def0dee74067968f078be9c5492c96a93f62edd95146fe4922f97f" [label="local://context" shape="ellipse"];
  "sha256:9360e63dd4eb3bb87da50dc74d5b7d746afbc730cb075e0869c807ed9accfe34" [label="copy{src=/, dest=/src/}" shape="note"];
  "sha256:c92ecc93aabf283a6db92725808e6b8703230a506f7c8f98c609bdd61a6f367a" [label="/bin/sh -c ./hack/scripts/build-binary.sh" shape="box"];
  "sha256:21b15018da1c7aa9b2df5c72fe4543631aeddb80bae8c6cc859d852fc04a5741" [label="copy{src=/src/bin/service-level-operator, dest=/usr/local/bin/service-level-operator}" shape="note"];
  "sha256:80f7c34fd96eaccd555d7be283acb07ce045f46f4c5260da1663dcc4069ebf67" [label="sha256:80f7c34fd96eaccd555d7be283acb07ce045f46f4c5260da1663dcc4069ebf67" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:8fc72e16a4281280e82e4102efaa030fd98d6302b22e0900a8e0d6001ee63944" [label=""];
  "sha256:14c42e6e039b32ee2b0d4102c75c452274af1ce24a8695bd1abfba26f9307a2e" -> "sha256:6a3112eaa10e8521d9ab00fc4bc130bcc7da5e23fddc97e653c30acf5ffda58b" [label=""];
  "sha256:6a3112eaa10e8521d9ab00fc4bc130bcc7da5e23fddc97e653c30acf5ffda58b" -> "sha256:46a38303f336b206a4dd4127a60ec819300252c26711b21a951729da8896eb0f" [label=""];
  "sha256:46a38303f336b206a4dd4127a60ec819300252c26711b21a951729da8896eb0f" -> "sha256:9360e63dd4eb3bb87da50dc74d5b7d746afbc730cb075e0869c807ed9accfe34" [label=""];
  "sha256:248e715567def0dee74067968f078be9c5492c96a93f62edd95146fe4922f97f" -> "sha256:9360e63dd4eb3bb87da50dc74d5b7d746afbc730cb075e0869c807ed9accfe34" [label=""];
  "sha256:9360e63dd4eb3bb87da50dc74d5b7d746afbc730cb075e0869c807ed9accfe34" -> "sha256:c92ecc93aabf283a6db92725808e6b8703230a506f7c8f98c609bdd61a6f367a" [label=""];
  "sha256:8fc72e16a4281280e82e4102efaa030fd98d6302b22e0900a8e0d6001ee63944" -> "sha256:21b15018da1c7aa9b2df5c72fe4543631aeddb80bae8c6cc859d852fc04a5741" [label=""];
  "sha256:c92ecc93aabf283a6db92725808e6b8703230a506f7c8f98c609bdd61a6f367a" -> "sha256:21b15018da1c7aa9b2df5c72fe4543631aeddb80bae8c6cc859d852fc04a5741" [label=""];
  "sha256:21b15018da1c7aa9b2df5c72fe4543631aeddb80bae8c6cc859d852fc04a5741" -> "sha256:80f7c34fd96eaccd555d7be283acb07ce045f46f4c5260da1663dcc4069ebf67" [label=""];
}

