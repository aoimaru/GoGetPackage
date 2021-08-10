[app/sources/454868024.Dockerfile]
digraph {
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:e2c562f4cdcbfdbde8116a3d88b214216cf2f72ef0292ea3960967833775363d" [label="local://context" shape="ellipse"];
  "sha256:6180bb7def4db836434ece8d56b82906d3ffe59e2fd898aa6098c6f31d8712c4" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:afad09c64afd7685c8d136fe614e3cfeb429e7c17d4f60626960e9784da70340" [label="sha256:afad09c64afd7685c8d136fe614e3cfeb429e7c17d4f60626960e9784da70340" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:6180bb7def4db836434ece8d56b82906d3ffe59e2fd898aa6098c6f31d8712c4" [label=""];
  "sha256:e2c562f4cdcbfdbde8116a3d88b214216cf2f72ef0292ea3960967833775363d" -> "sha256:6180bb7def4db836434ece8d56b82906d3ffe59e2fd898aa6098c6f31d8712c4" [label=""];
  "sha256:6180bb7def4db836434ece8d56b82906d3ffe59e2fd898aa6098c6f31d8712c4" -> "sha256:afad09c64afd7685c8d136fe614e3cfeb429e7c17d4f60626960e9784da70340" [label=""];
}

