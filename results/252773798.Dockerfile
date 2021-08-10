[app/sources/252773798.Dockerfile]
digraph {
  "sha256:104d5fde58ac954e44d250b492e6fcc2abd6f0a6ef087723bc42a37f78c447e8" [label="docker-image://docker.io/library/python:3.4" shape="ellipse"];
  "sha256:034bbba65c431b51886b640a0fd5c8a633bd4a71c174870937a9fed4eeb8acc1" [label="/bin/sh -c pip install invoke flake8 pytest pytest-cov markdown pygments numpy" shape="box"];
  "sha256:ad9c2483a7ead7d62570a17d648e9e4755f6ce714916860ebc187fc45fba0b01" [label="sha256:ad9c2483a7ead7d62570a17d648e9e4755f6ce714916860ebc187fc45fba0b01" shape="plaintext"];
  "sha256:104d5fde58ac954e44d250b492e6fcc2abd6f0a6ef087723bc42a37f78c447e8" -> "sha256:034bbba65c431b51886b640a0fd5c8a633bd4a71c174870937a9fed4eeb8acc1" [label=""];
  "sha256:034bbba65c431b51886b640a0fd5c8a633bd4a71c174870937a9fed4eeb8acc1" -> "sha256:ad9c2483a7ead7d62570a17d648e9e4755f6ce714916860ebc187fc45fba0b01" [label=""];
}

