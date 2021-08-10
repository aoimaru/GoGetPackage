[app/sources/241291656.Dockerfile]
digraph {
  "sha256:3ba99a5837d4bcdc79adebf627eea483ab265b658638c65573be7be710b165c0" [label="docker-image://quay.io/prometheus/busybox:latest@sha256:a56e11cce1c09f50a71290d65733ebe976adc8654395091d5379c7f294cc891e" shape="ellipse"];
  "sha256:6e63c59ce471ea569977fd8664714b0299b5319f38b79752e21f000c97ec9cd1" [label="local://context" shape="ellipse"];
  "sha256:605e24e50470286e1506276e9358f1096530b4bb48739e4adceb7b5b769affd3" [label="copy{src=/fake-webserver, dest=/bin/webserver}" shape="note"];
  "sha256:ce5f7309e0f1fe30680c81bbc7e419af4fb2ef4663265325b7c439c69bc9c31b" [label="sha256:ce5f7309e0f1fe30680c81bbc7e419af4fb2ef4663265325b7c439c69bc9c31b" shape="plaintext"];
  "sha256:3ba99a5837d4bcdc79adebf627eea483ab265b658638c65573be7be710b165c0" -> "sha256:605e24e50470286e1506276e9358f1096530b4bb48739e4adceb7b5b769affd3" [label=""];
  "sha256:6e63c59ce471ea569977fd8664714b0299b5319f38b79752e21f000c97ec9cd1" -> "sha256:605e24e50470286e1506276e9358f1096530b4bb48739e4adceb7b5b769affd3" [label=""];
  "sha256:605e24e50470286e1506276e9358f1096530b4bb48739e4adceb7b5b769affd3" -> "sha256:ce5f7309e0f1fe30680c81bbc7e419af4fb2ef4663265325b7c439c69bc9c31b" [label=""];
}

