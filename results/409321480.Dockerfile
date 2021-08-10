[app/sources/409321480.Dockerfile]
digraph {
  "sha256:5abe008f753ada64c81a3d7a4d1aff76e5a30b26dd85b9413c2f1a9edd20870f" [label="local://context" shape="ellipse"];
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" [label="docker-image://docker.io/library/golang:1.9" shape="ellipse"];
  "sha256:80dfdc77fa2269510d2f59c9f075014b2df9f867f2c5e58b7374eb55b5aebbbc" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:8c29fac9ac2debfb7ec4ca448cd8ec14c9a5963a95844fd5ed1cdbb17018b0f3" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tvim \t&& rm -rf /var/list/apt/lists/*" shape="box"];
  "sha256:1a5b7db51675f190057f26b043058c51a7f801ae3c0b31c6dccfe2398b1ba8ec" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:b334da62b996d3cfe16fb92e4cf084f7c7ba0dbf0b0db6c53d6ecf8b0983ff02" [label="sha256:b334da62b996d3cfe16fb92e4cf084f7c7ba0dbf0b0db6c53d6ecf8b0983ff02" shape="plaintext"];
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" -> "sha256:80dfdc77fa2269510d2f59c9f075014b2df9f867f2c5e58b7374eb55b5aebbbc" [label=""];
  "sha256:5abe008f753ada64c81a3d7a4d1aff76e5a30b26dd85b9413c2f1a9edd20870f" -> "sha256:80dfdc77fa2269510d2f59c9f075014b2df9f867f2c5e58b7374eb55b5aebbbc" [label=""];
  "sha256:80dfdc77fa2269510d2f59c9f075014b2df9f867f2c5e58b7374eb55b5aebbbc" -> "sha256:8c29fac9ac2debfb7ec4ca448cd8ec14c9a5963a95844fd5ed1cdbb17018b0f3" [label=""];
  "sha256:8c29fac9ac2debfb7ec4ca448cd8ec14c9a5963a95844fd5ed1cdbb17018b0f3" -> "sha256:1a5b7db51675f190057f26b043058c51a7f801ae3c0b31c6dccfe2398b1ba8ec" [label=""];
  "sha256:1a5b7db51675f190057f26b043058c51a7f801ae3c0b31c6dccfe2398b1ba8ec" -> "sha256:b334da62b996d3cfe16fb92e4cf084f7c7ba0dbf0b0db6c53d6ecf8b0983ff02" [label=""];
}

