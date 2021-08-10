[app/sources/211515395.Dockerfile]
digraph {
  "sha256:8c71afdae5fbf4abc175ffa28d69e96d36e58e2d36683c701e196526b8da07cc" [label="docker-image://docker.io/library/golang:1.10.1" shape="ellipse"];
  "sha256:dc005dcac6f42364d4e7f56f14716c1950f171b63177f1d42c176be70a05e223" [label="/bin/sh -c curl -LO https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v1.37.0/pact-1.37.0-linux-x86_64.tar.gz;     tar -C /usr/local -xzf pact-1.37.0-linux-x86_64.tar.gz;     rm pact-1.37.0-linux-x86_64.tar.gz" shape="box"];
  "sha256:708ef189fea67b87dc83e4d4c018ba00c66a0d66ad861fdf58244fb2033b6b93" [label="local://context" shape="ellipse"];
  "sha256:96496a09a9a617c1d01c449fb0dd3cdc8f313f5b7d27ac9511e27757b23fa92f" [label="copy{src=/, dest=/go/src/github.com/pact-foundation/pact-go}" shape="note"];
  "sha256:234c6653d33b1c6b5ada667d76315800c044fa52354d7c7ae06de99f2f022915" [label="mkdir{path=/go/src/github.com/pact-foundation/pact-go}" shape="note"];
  "sha256:3bd9282ec862fc82a7b82cc298c15520d8ffc4c2c4327bcb0e833698e92a8d0c" [label="sha256:3bd9282ec862fc82a7b82cc298c15520d8ffc4c2c4327bcb0e833698e92a8d0c" shape="plaintext"];
  "sha256:8c71afdae5fbf4abc175ffa28d69e96d36e58e2d36683c701e196526b8da07cc" -> "sha256:dc005dcac6f42364d4e7f56f14716c1950f171b63177f1d42c176be70a05e223" [label=""];
  "sha256:dc005dcac6f42364d4e7f56f14716c1950f171b63177f1d42c176be70a05e223" -> "sha256:96496a09a9a617c1d01c449fb0dd3cdc8f313f5b7d27ac9511e27757b23fa92f" [label=""];
  "sha256:708ef189fea67b87dc83e4d4c018ba00c66a0d66ad861fdf58244fb2033b6b93" -> "sha256:96496a09a9a617c1d01c449fb0dd3cdc8f313f5b7d27ac9511e27757b23fa92f" [label=""];
  "sha256:96496a09a9a617c1d01c449fb0dd3cdc8f313f5b7d27ac9511e27757b23fa92f" -> "sha256:234c6653d33b1c6b5ada667d76315800c044fa52354d7c7ae06de99f2f022915" [label=""];
  "sha256:234c6653d33b1c6b5ada667d76315800c044fa52354d7c7ae06de99f2f022915" -> "sha256:3bd9282ec862fc82a7b82cc298c15520d8ffc4c2c4327bcb0e833698e92a8d0c" [label=""];
}

