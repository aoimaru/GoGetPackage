[app/sources/293018198.Dockerfile]
digraph {
  "sha256:b150da432c7a40066a95bb13c63c745492fdd7212cf68b9867ca367c7b6abf96" [label="docker-image://docker.io/library/golang:1.8" shape="ellipse"];
  "sha256:3af95a8f0de6d210f5557ce63401bd695e07cf92a090b1bd2d216486226444ae" [label="local://context" shape="ellipse"];
  "sha256:d104271a7817a036988b88eceecfba6baff1a1fae8b13e1a61604fde723d74ed" [label="copy{src=/, dest=/go/src/app}" shape="note"];
  "sha256:b96358c50eefbc98e8f5a6ab0d8c2a38fd873d2859502843b08da13c086cd897" [label="mkdir{path=/go/src/app}" shape="note"];
  "sha256:6051f6ec104f7c67a4be4621091f89f8fdf2cc29e3f70bcb1b25854026f6cbf4" [label="/bin/sh -c go get -v" shape="box"];
  "sha256:5a135927114039f7bb4e0f108d5f36c00856fac05e144655274c9475755be6f3" [label="/bin/sh -c go build" shape="box"];
  "sha256:cd7e9a4ff2bfbf35c7e3b57886e59f5820944ca5049342ace54206adc6a83654" [label="sha256:cd7e9a4ff2bfbf35c7e3b57886e59f5820944ca5049342ace54206adc6a83654" shape="plaintext"];
  "sha256:b150da432c7a40066a95bb13c63c745492fdd7212cf68b9867ca367c7b6abf96" -> "sha256:d104271a7817a036988b88eceecfba6baff1a1fae8b13e1a61604fde723d74ed" [label=""];
  "sha256:3af95a8f0de6d210f5557ce63401bd695e07cf92a090b1bd2d216486226444ae" -> "sha256:d104271a7817a036988b88eceecfba6baff1a1fae8b13e1a61604fde723d74ed" [label=""];
  "sha256:d104271a7817a036988b88eceecfba6baff1a1fae8b13e1a61604fde723d74ed" -> "sha256:b96358c50eefbc98e8f5a6ab0d8c2a38fd873d2859502843b08da13c086cd897" [label=""];
  "sha256:b96358c50eefbc98e8f5a6ab0d8c2a38fd873d2859502843b08da13c086cd897" -> "sha256:6051f6ec104f7c67a4be4621091f89f8fdf2cc29e3f70bcb1b25854026f6cbf4" [label=""];
  "sha256:6051f6ec104f7c67a4be4621091f89f8fdf2cc29e3f70bcb1b25854026f6cbf4" -> "sha256:5a135927114039f7bb4e0f108d5f36c00856fac05e144655274c9475755be6f3" [label=""];
  "sha256:5a135927114039f7bb4e0f108d5f36c00856fac05e144655274c9475755be6f3" -> "sha256:cd7e9a4ff2bfbf35c7e3b57886e59f5820944ca5049342ace54206adc6a83654" [label=""];
}

