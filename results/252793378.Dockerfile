[app/sources/252793378.Dockerfile]
digraph {
  "sha256:1417833ff4632b26aaa6fe4648b808f1f0cd51f4bb9775e466d4e31f66be1315" [label="docker-image://docker.io/prom/prometheus:v1.5.2" shape="ellipse"];
  "sha256:3dda8ea69e93f8418b2978fdd195ed96a8973749a687d977f62d9636d84e04ca" [label="local://context" shape="ellipse"];
  "sha256:3e21b60d4a0a80d4637250aef7304ea950e8458d78d8d6737d923614c7bad795" [label="copy{src=/prometheus.yml, dest=/etc/prometheus/}" shape="note"];
  "sha256:9d86e6c3d629467c892ca3e70922b7da59a13022870fa4da702f85ebb0e11a05" [label="sha256:9d86e6c3d629467c892ca3e70922b7da59a13022870fa4da702f85ebb0e11a05" shape="plaintext"];
  "sha256:1417833ff4632b26aaa6fe4648b808f1f0cd51f4bb9775e466d4e31f66be1315" -> "sha256:3e21b60d4a0a80d4637250aef7304ea950e8458d78d8d6737d923614c7bad795" [label=""];
  "sha256:3dda8ea69e93f8418b2978fdd195ed96a8973749a687d977f62d9636d84e04ca" -> "sha256:3e21b60d4a0a80d4637250aef7304ea950e8458d78d8d6737d923614c7bad795" [label=""];
  "sha256:3e21b60d4a0a80d4637250aef7304ea950e8458d78d8d6737d923614c7bad795" -> "sha256:9d86e6c3d629467c892ca3e70922b7da59a13022870fa4da702f85ebb0e11a05" [label=""];
}

