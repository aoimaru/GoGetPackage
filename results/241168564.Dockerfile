[app/sources/241168564.Dockerfile]
digraph {
  "sha256:e418a2bfe5a7e0ca884125c3c2de6fef2d138a033b7ae1abe7dcc09c07ef9665" [label="local://context" shape="ellipse"];
  "sha256:434eb611513f772103810b67aba252f978e5b157e4e0454c83b0297a735c49d4" [label="docker-image://docker.io/library/golang:1.12.1-alpine" shape="ellipse"];
  "sha256:b9ac8237fc646a9a18c5c107286ff218156a6166c01924bc85ce98390cdf066e" [label="mkdir{path=/usr/src/signalfx-agent}" shape="note"];
  "sha256:1925cd36d7c0da24c7c2c057e1ac5045b20e103bb3f795bde9f846bb9f2991f7" [label="copy{src=/vendor, dest=/usr/src/signalfx-agent/vendor/}" shape="note"];
  "sha256:b505bf3d988a49e3574c6800e50e35ae265ad9bdc3da8bb410fc27042a2b0eb4" [label="copy{src=/go.mod, dest=/usr/src/signalfx-agent/},copy{src=/go.sum, dest=/usr/src/signalfx-agent/}" shape="note"];
  "sha256:7dcc56fa483e2e0f7e65d40e3caa770f3c649e8faf936009832edf690c023044" [label="copy{src=/cmd/fakek8s, dest=/usr/src/signalfx-agent/cmd/fakek8s/}" shape="note"];
  "sha256:81df37eeac9cf36f5f00995ae8024586b613fda9139da385bd908b06f85e5730" [label="copy{src=/internal/neotest/k8s/testhelpers/fakek8s, dest=/usr/src/signalfx-agent/internal/neotest/k8s/testhelpers/fakek8s/}" shape="note"];
  "sha256:573c988a5b44fd50e815a9cf6abf2e6ece95ac0d1a7ea166225db7773ac269a9" [label="/bin/sh -c go build -mod vendor -o fakek8s ./cmd/fakek8s" shape="box"];
  "sha256:0e89cbc9d6b0b3c30ae9fa53f63d67aa9c7439ecc24f133689395e99dd6fc0f1" [label="sha256:0e89cbc9d6b0b3c30ae9fa53f63d67aa9c7439ecc24f133689395e99dd6fc0f1" shape="plaintext"];
  "sha256:434eb611513f772103810b67aba252f978e5b157e4e0454c83b0297a735c49d4" -> "sha256:b9ac8237fc646a9a18c5c107286ff218156a6166c01924bc85ce98390cdf066e" [label=""];
  "sha256:b9ac8237fc646a9a18c5c107286ff218156a6166c01924bc85ce98390cdf066e" -> "sha256:1925cd36d7c0da24c7c2c057e1ac5045b20e103bb3f795bde9f846bb9f2991f7" [label=""];
  "sha256:e418a2bfe5a7e0ca884125c3c2de6fef2d138a033b7ae1abe7dcc09c07ef9665" -> "sha256:1925cd36d7c0da24c7c2c057e1ac5045b20e103bb3f795bde9f846bb9f2991f7" [label=""];
  "sha256:1925cd36d7c0da24c7c2c057e1ac5045b20e103bb3f795bde9f846bb9f2991f7" -> "sha256:b505bf3d988a49e3574c6800e50e35ae265ad9bdc3da8bb410fc27042a2b0eb4" [label=""];
  "sha256:e418a2bfe5a7e0ca884125c3c2de6fef2d138a033b7ae1abe7dcc09c07ef9665" -> "sha256:b505bf3d988a49e3574c6800e50e35ae265ad9bdc3da8bb410fc27042a2b0eb4" [label=""];
  "sha256:b505bf3d988a49e3574c6800e50e35ae265ad9bdc3da8bb410fc27042a2b0eb4" -> "sha256:7dcc56fa483e2e0f7e65d40e3caa770f3c649e8faf936009832edf690c023044" [label=""];
  "sha256:e418a2bfe5a7e0ca884125c3c2de6fef2d138a033b7ae1abe7dcc09c07ef9665" -> "sha256:7dcc56fa483e2e0f7e65d40e3caa770f3c649e8faf936009832edf690c023044" [label=""];
  "sha256:7dcc56fa483e2e0f7e65d40e3caa770f3c649e8faf936009832edf690c023044" -> "sha256:81df37eeac9cf36f5f00995ae8024586b613fda9139da385bd908b06f85e5730" [label=""];
  "sha256:e418a2bfe5a7e0ca884125c3c2de6fef2d138a033b7ae1abe7dcc09c07ef9665" -> "sha256:81df37eeac9cf36f5f00995ae8024586b613fda9139da385bd908b06f85e5730" [label=""];
  "sha256:81df37eeac9cf36f5f00995ae8024586b613fda9139da385bd908b06f85e5730" -> "sha256:573c988a5b44fd50e815a9cf6abf2e6ece95ac0d1a7ea166225db7773ac269a9" [label=""];
  "sha256:573c988a5b44fd50e815a9cf6abf2e6ece95ac0d1a7ea166225db7773ac269a9" -> "sha256:0e89cbc9d6b0b3c30ae9fa53f63d67aa9c7439ecc24f133689395e99dd6fc0f1" [label=""];
}

