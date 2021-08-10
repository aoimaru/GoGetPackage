[app/sources/281867608.Dockerfile]
digraph {
  "sha256:c025c2da0d4d82d45d5f2a98b1f20c0a4531302b79db8d32af1dd6e94eee8fa3" [label="docker-image://docker.io/library/python:3" shape="ellipse"];
  "sha256:b8d06d3646a5b7c6d472689e2549a08d176c8cfe89df2395fe4c5b2b56fc414c" [label="/bin/sh -c pip install flask" shape="box"];
  "sha256:98485d4f1c56ab3eb5c32081606d3bb3787806b9c854b3c7b30917a2cea9fa7d" [label="sha256:98485d4f1c56ab3eb5c32081606d3bb3787806b9c854b3c7b30917a2cea9fa7d" shape="plaintext"];
  "sha256:c025c2da0d4d82d45d5f2a98b1f20c0a4531302b79db8d32af1dd6e94eee8fa3" -> "sha256:b8d06d3646a5b7c6d472689e2549a08d176c8cfe89df2395fe4c5b2b56fc414c" [label=""];
  "sha256:b8d06d3646a5b7c6d472689e2549a08d176c8cfe89df2395fe4c5b2b56fc414c" -> "sha256:98485d4f1c56ab3eb5c32081606d3bb3787806b9c854b3c7b30917a2cea9fa7d" [label=""];
}

