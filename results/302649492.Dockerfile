[app/sources/302649492.Dockerfile]
digraph {
  "sha256:404ac04e21bed56157360a16f3a1d4607e2baca1789980552b24289972a2dc9e" [label="docker-image://docker.elastic.co/logstash/logstash:6.3.0@sha256:3f80943ab3bc4ca9ef50eb712cdd720a1e61edeecae5f15388724039e432435a" shape="ellipse"];
  "sha256:dc28418901b20b8b6c8ab645322da78127d9c6b42ae5df9bc626efa74b987127" [label="local://context" shape="ellipse"];
  "sha256:96c767aa78faab40f2b7550a71317a67c0ba6037ca16f4b6efd518eb05da6ea6" [label="copy{src=/healthcheck.sh, dest=/}" shape="note"];
  "sha256:8e08565131555ab1ebc6c205f62374f0514a88df0648fcdb3deede3776dc3d4f" [label="sha256:8e08565131555ab1ebc6c205f62374f0514a88df0648fcdb3deede3776dc3d4f" shape="plaintext"];
  "sha256:404ac04e21bed56157360a16f3a1d4607e2baca1789980552b24289972a2dc9e" -> "sha256:96c767aa78faab40f2b7550a71317a67c0ba6037ca16f4b6efd518eb05da6ea6" [label=""];
  "sha256:dc28418901b20b8b6c8ab645322da78127d9c6b42ae5df9bc626efa74b987127" -> "sha256:96c767aa78faab40f2b7550a71317a67c0ba6037ca16f4b6efd518eb05da6ea6" [label=""];
  "sha256:96c767aa78faab40f2b7550a71317a67c0ba6037ca16f4b6efd518eb05da6ea6" -> "sha256:8e08565131555ab1ebc6c205f62374f0514a88df0648fcdb3deede3776dc3d4f" [label=""];
}

