[app/sources/252766782.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:0fb43c2f0332f5c05d7a1b4b55c738a4a5e41abe598938463a86553a36c9fc1b" [label="local://context" shape="ellipse"];
  "sha256:5f5da1c421372d5e8298c4199e45f13bda0d7824f610451cf9ffdb81447b71da" [label="copy{src=/redis-server_2.8.19.deb, dest=/redis-server.deb}" shape="note"];
  "sha256:e0a2fd0903899c8891259fc919ad8c56db5e0ae43b6d8f792c14446d367be305" [label="/bin/sh -c dpkg -i redis-server.deb" shape="box"];
  "sha256:8bd194529e14fc25bb981483da28a4300a0245c9421494316cae7f62d927b0ed" [label="sha256:8bd194529e14fc25bb981483da28a4300a0245c9421494316cae7f62d927b0ed" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:5f5da1c421372d5e8298c4199e45f13bda0d7824f610451cf9ffdb81447b71da" [label=""];
  "sha256:0fb43c2f0332f5c05d7a1b4b55c738a4a5e41abe598938463a86553a36c9fc1b" -> "sha256:5f5da1c421372d5e8298c4199e45f13bda0d7824f610451cf9ffdb81447b71da" [label=""];
  "sha256:5f5da1c421372d5e8298c4199e45f13bda0d7824f610451cf9ffdb81447b71da" -> "sha256:e0a2fd0903899c8891259fc919ad8c56db5e0ae43b6d8f792c14446d367be305" [label=""];
  "sha256:e0a2fd0903899c8891259fc919ad8c56db5e0ae43b6d8f792c14446d367be305" -> "sha256:8bd194529e14fc25bb981483da28a4300a0245c9421494316cae7f62d927b0ed" [label=""];
}

