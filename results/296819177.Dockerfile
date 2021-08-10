[app/sources/296819177.Dockerfile]
digraph {
  "sha256:c75195e762116c0f57dfcc525e15f33187c6595b42ae6d2f9e313e730e56e0e2" [label="docker-image://docker.io/library/nginx:alpine" shape="ellipse"];
  "sha256:b510f22975c204ade6d43558a4866d31f9da6e5239a76ac4bf20ee5d6cb4d843" [label="local://context" shape="ellipse"];
  "sha256:81c981d49d120421c546f18d2c12b61e8381c265ded1fe63a1ca551d2a4bfb08" [label="copy{src=/dist, dest=/opt/luna/}" shape="note"];
  "sha256:0360a56fc82e700638463064d62706a94a818bacfa59cf03f24cd499e499cf2a" [label="copy{src=/nginx.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:077e629f7cf34b09c4652ed9032536987fa12857af672ccdb9ca986c64e145b9" [label="sha256:077e629f7cf34b09c4652ed9032536987fa12857af672ccdb9ca986c64e145b9" shape="plaintext"];
  "sha256:c75195e762116c0f57dfcc525e15f33187c6595b42ae6d2f9e313e730e56e0e2" -> "sha256:81c981d49d120421c546f18d2c12b61e8381c265ded1fe63a1ca551d2a4bfb08" [label=""];
  "sha256:b510f22975c204ade6d43558a4866d31f9da6e5239a76ac4bf20ee5d6cb4d843" -> "sha256:81c981d49d120421c546f18d2c12b61e8381c265ded1fe63a1ca551d2a4bfb08" [label=""];
  "sha256:81c981d49d120421c546f18d2c12b61e8381c265ded1fe63a1ca551d2a4bfb08" -> "sha256:0360a56fc82e700638463064d62706a94a818bacfa59cf03f24cd499e499cf2a" [label=""];
  "sha256:b510f22975c204ade6d43558a4866d31f9da6e5239a76ac4bf20ee5d6cb4d843" -> "sha256:0360a56fc82e700638463064d62706a94a818bacfa59cf03f24cd499e499cf2a" [label=""];
  "sha256:0360a56fc82e700638463064d62706a94a818bacfa59cf03f24cd499e499cf2a" -> "sha256:077e629f7cf34b09c4652ed9032536987fa12857af672ccdb9ca986c64e145b9" [label=""];
}

