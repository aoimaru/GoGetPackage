[app/sources/345959953.Dockerfile]
digraph {
  "sha256:c025c2da0d4d82d45d5f2a98b1f20c0a4531302b79db8d32af1dd6e94eee8fa3" [label="docker-image://docker.io/library/python:3" shape="ellipse"];
  "sha256:7154f64420f382eb5b0ea34a03b5d756f33de08133543960f296fd6f6d3a7e4e" [label="/bin/sh -c pip install slack-webhook-cli" shape="box"];
  "sha256:cb8b8c577df03d007044e66fbcd9c2fcb6cfc68fd3cfc1e08234fdd8b9032705" [label="sha256:cb8b8c577df03d007044e66fbcd9c2fcb6cfc68fd3cfc1e08234fdd8b9032705" shape="plaintext"];
  "sha256:c025c2da0d4d82d45d5f2a98b1f20c0a4531302b79db8d32af1dd6e94eee8fa3" -> "sha256:7154f64420f382eb5b0ea34a03b5d756f33de08133543960f296fd6f6d3a7e4e" [label=""];
  "sha256:7154f64420f382eb5b0ea34a03b5d756f33de08133543960f296fd6f6d3a7e4e" -> "sha256:cb8b8c577df03d007044e66fbcd9c2fcb6cfc68fd3cfc1e08234fdd8b9032705" [label=""];
}

