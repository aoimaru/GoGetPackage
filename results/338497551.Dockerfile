[app/sources/338497551.Dockerfile]
digraph {
  "sha256:2602797ea67f298e18e18d51f2ccfd37239f15d4f16a9cea4e3aae86a4429df7" [label="docker-image://docker.io/library/python:3.7-alpine3.9" shape="ellipse"];
  "sha256:a39c6ace134646e8115f809ce03b6375d54b735bd0cb88a6fa019df68124c4f5" [label="/bin/sh -c pip install prometheus-client requests" shape="box"];
  "sha256:fe27ae4a0cfc50681e3f45a39b4dbb66f1ef03f19720a00964dd396aa367d37d" [label="local://context" shape="ellipse"];
  "sha256:0e100ef87fcab544fe99b4e8a11412b4135f1668ba74abc10fd638d0eff1c4f1" [label="copy{src=/stellar-core-prometheus-exporter.py, dest=/usr/local/bin/stellar-core-prometheus-exporter.py}" shape="note"];
  "sha256:17ab1a34ced3279b91f6e8b199272706c7e191f4cfb8b4ad037cdc3c069bae6f" [label="sha256:17ab1a34ced3279b91f6e8b199272706c7e191f4cfb8b4ad037cdc3c069bae6f" shape="plaintext"];
  "sha256:2602797ea67f298e18e18d51f2ccfd37239f15d4f16a9cea4e3aae86a4429df7" -> "sha256:a39c6ace134646e8115f809ce03b6375d54b735bd0cb88a6fa019df68124c4f5" [label=""];
  "sha256:a39c6ace134646e8115f809ce03b6375d54b735bd0cb88a6fa019df68124c4f5" -> "sha256:0e100ef87fcab544fe99b4e8a11412b4135f1668ba74abc10fd638d0eff1c4f1" [label=""];
  "sha256:fe27ae4a0cfc50681e3f45a39b4dbb66f1ef03f19720a00964dd396aa367d37d" -> "sha256:0e100ef87fcab544fe99b4e8a11412b4135f1668ba74abc10fd638d0eff1c4f1" [label=""];
  "sha256:0e100ef87fcab544fe99b4e8a11412b4135f1668ba74abc10fd638d0eff1c4f1" -> "sha256:17ab1a34ced3279b91f6e8b199272706c7e191f4cfb8b4ad037cdc3c069bae6f" [label=""];
}

