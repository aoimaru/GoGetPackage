[app/sources/226404112.Dockerfile]
digraph {
  "sha256:3ba99a5837d4bcdc79adebf627eea483ab265b658638c65573be7be710b165c0" [label="docker-image://quay.io/prometheus/busybox:latest@sha256:a56e11cce1c09f50a71290d65733ebe976adc8654395091d5379c7f294cc891e" shape="ellipse"];
  "sha256:04a7e946033362275cbc711648907da10cdec61b12df500ac5363074f0819ce3" [label="local://context" shape="ellipse"];
  "sha256:98b97555662a0fbed93ff0f9962b006d9c68da4e4fa0d5a352e0294d02f9ac8d" [label="copy{src=/cf_exporter, dest=/bin/cf_exporter}" shape="note"];
  "sha256:035c89b19f70376d505182b26dcfff6eef0ef538a17d90aa4f4736f6af2e6d30" [label="sha256:035c89b19f70376d505182b26dcfff6eef0ef538a17d90aa4f4736f6af2e6d30" shape="plaintext"];
  "sha256:3ba99a5837d4bcdc79adebf627eea483ab265b658638c65573be7be710b165c0" -> "sha256:98b97555662a0fbed93ff0f9962b006d9c68da4e4fa0d5a352e0294d02f9ac8d" [label=""];
  "sha256:04a7e946033362275cbc711648907da10cdec61b12df500ac5363074f0819ce3" -> "sha256:98b97555662a0fbed93ff0f9962b006d9c68da4e4fa0d5a352e0294d02f9ac8d" [label=""];
  "sha256:98b97555662a0fbed93ff0f9962b006d9c68da4e4fa0d5a352e0294d02f9ac8d" -> "sha256:035c89b19f70376d505182b26dcfff6eef0ef538a17d90aa4f4736f6af2e6d30" [label=""];
}

