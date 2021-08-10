[app/sources/463354604.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:ad0f69e665498f3b0e14d14f4f4ed2e1886706bc69ab6223eda5c2cbd826d6ac" [label="/bin/sh -c mkdir -p $GOPATH/src/github.com/hpcloud/tail/" shape="box"];
  "sha256:9e00de619c8cf1211605bfd1980472f8397393f0c72747f1efae5e82d9fd63f9" [label="local://context" shape="ellipse"];
  "sha256:178552b1f33af553905f1e3d42d6a12733941772feae54cf12f5f1ef9e4b2bc1" [label="copy{src=/, dest=/src/github.com/hpcloud/tail/}" shape="note"];
  "sha256:197fae418fcff476cc71f37fb903dbc4d9fd9ab6362c6ecd7552851234ccbf82" [label="/bin/sh -c go get -v github.com/hpcloud/tail" shape="box"];
  "sha256:c0bc96dbc9c6021e7804ecbfa6860d746c989bd2b80023c2176e7f4cabfaf5e6" [label="/bin/sh -c go test -v github.com/hpcloud/tail" shape="box"];
  "sha256:89336160aa2057a304bf8cacf51f619e2e63578919482be556ceb9d247451c94" [label="/bin/sh -c go install -v github.com/hpcloud/tail" shape="box"];
  "sha256:57af70d8a52f2a1d9f89a57adb887b71314640340a8ef6e0b7bcbbc084a10276" [label="/bin/sh -c go install -v github.com/hpcloud/tail/cmd/gotail" shape="box"];
  "sha256:04b3b0bf440fc95b1ba9a5d7d41c40b055713263ea5f2d0cdf150c94f56c6bab" [label="/bin/sh -c $GOPATH/bin/gotail -h || true" shape="box"];
  "sha256:1c1c97162bf6f553a286ca511dae3243ade69b3c5e1500cf6fd94fc43b62c741" [label="sha256:1c1c97162bf6f553a286ca511dae3243ade69b3c5e1500cf6fd94fc43b62c741" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:ad0f69e665498f3b0e14d14f4f4ed2e1886706bc69ab6223eda5c2cbd826d6ac" [label=""];
  "sha256:ad0f69e665498f3b0e14d14f4f4ed2e1886706bc69ab6223eda5c2cbd826d6ac" -> "sha256:178552b1f33af553905f1e3d42d6a12733941772feae54cf12f5f1ef9e4b2bc1" [label=""];
  "sha256:9e00de619c8cf1211605bfd1980472f8397393f0c72747f1efae5e82d9fd63f9" -> "sha256:178552b1f33af553905f1e3d42d6a12733941772feae54cf12f5f1ef9e4b2bc1" [label=""];
  "sha256:178552b1f33af553905f1e3d42d6a12733941772feae54cf12f5f1ef9e4b2bc1" -> "sha256:197fae418fcff476cc71f37fb903dbc4d9fd9ab6362c6ecd7552851234ccbf82" [label=""];
  "sha256:197fae418fcff476cc71f37fb903dbc4d9fd9ab6362c6ecd7552851234ccbf82" -> "sha256:c0bc96dbc9c6021e7804ecbfa6860d746c989bd2b80023c2176e7f4cabfaf5e6" [label=""];
  "sha256:c0bc96dbc9c6021e7804ecbfa6860d746c989bd2b80023c2176e7f4cabfaf5e6" -> "sha256:89336160aa2057a304bf8cacf51f619e2e63578919482be556ceb9d247451c94" [label=""];
  "sha256:89336160aa2057a304bf8cacf51f619e2e63578919482be556ceb9d247451c94" -> "sha256:57af70d8a52f2a1d9f89a57adb887b71314640340a8ef6e0b7bcbbc084a10276" [label=""];
  "sha256:57af70d8a52f2a1d9f89a57adb887b71314640340a8ef6e0b7bcbbc084a10276" -> "sha256:04b3b0bf440fc95b1ba9a5d7d41c40b055713263ea5f2d0cdf150c94f56c6bab" [label=""];
  "sha256:04b3b0bf440fc95b1ba9a5d7d41c40b055713263ea5f2d0cdf150c94f56c6bab" -> "sha256:1c1c97162bf6f553a286ca511dae3243ade69b3c5e1500cf6fd94fc43b62c741" [label=""];
}

