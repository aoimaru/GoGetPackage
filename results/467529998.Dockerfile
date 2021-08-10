[app/sources/467529998.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:fa8096d76f1ec78ca2335b02bb6b72ae21041485e2d5f6c771f39338fb05424f" [label="mkdir{path=/root}" shape="note"];
  "sha256:4c5fa895c149f55d3241b583e74e24d91f2b155e2404505405de8537e8f33b6a" [label="local://context" shape="ellipse"];
  "sha256:f03b5db9e148e2b718ae3696983f55e2736ade4850ef4ba4ed4922e186b8dd37" [label="copy{src=/manager, dest=/root}" shape="note"];
  "sha256:4dcac120efbdd3bbf79eed356c730e00f4c079cfcf1bea7b9e2c1d8aa7376c7c" [label="sha256:4dcac120efbdd3bbf79eed356c730e00f4c079cfcf1bea7b9e2c1d8aa7376c7c" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:fa8096d76f1ec78ca2335b02bb6b72ae21041485e2d5f6c771f39338fb05424f" [label=""];
  "sha256:fa8096d76f1ec78ca2335b02bb6b72ae21041485e2d5f6c771f39338fb05424f" -> "sha256:f03b5db9e148e2b718ae3696983f55e2736ade4850ef4ba4ed4922e186b8dd37" [label=""];
  "sha256:4c5fa895c149f55d3241b583e74e24d91f2b155e2404505405de8537e8f33b6a" -> "sha256:f03b5db9e148e2b718ae3696983f55e2736ade4850ef4ba4ed4922e186b8dd37" [label=""];
  "sha256:f03b5db9e148e2b718ae3696983f55e2736ade4850ef4ba4ed4922e186b8dd37" -> "sha256:4dcac120efbdd3bbf79eed356c730e00f4c079cfcf1bea7b9e2c1d8aa7376c7c" [label=""];
}

