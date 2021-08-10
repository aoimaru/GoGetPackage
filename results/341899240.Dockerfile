[app/sources/341899240.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:c6b1cc2376cb050c7e9717a9f12b07f08210609f5679ecce91bc330c8384bca9" [label="local://context" shape="ellipse"];
  "sha256:9cc4ccdbe81d4481a0ec65904c00d8afe6ef925fd87fe53fab032aeb5a5bee8f" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:1a9c26835dad855edeaeba2a4df9d22d26d214d24ff745004daf39e4ecd1543c" [label="pip install pygame" shape="box"];
  "sha256:cc1ba033b5b5f7fa0a040d2e37f283e1129b4b2ef6a76bdf05bcdb06f00b7147" [label="pip install pygame" shape="box"];
  "sha256:a930c71d32bcc1ee53db43c123d26af26f0bfb8ed87d2818b522eb5dc34b3ad9" [label="sha256:a930c71d32bcc1ee53db43c123d26af26f0bfb8ed87d2818b522eb5dc34b3ad9" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:9cc4ccdbe81d4481a0ec65904c00d8afe6ef925fd87fe53fab032aeb5a5bee8f" [label=""];
  "sha256:c6b1cc2376cb050c7e9717a9f12b07f08210609f5679ecce91bc330c8384bca9" -> "sha256:9cc4ccdbe81d4481a0ec65904c00d8afe6ef925fd87fe53fab032aeb5a5bee8f" [label=""];
  "sha256:9cc4ccdbe81d4481a0ec65904c00d8afe6ef925fd87fe53fab032aeb5a5bee8f" -> "sha256:1a9c26835dad855edeaeba2a4df9d22d26d214d24ff745004daf39e4ecd1543c" [label=""];
  "sha256:1a9c26835dad855edeaeba2a4df9d22d26d214d24ff745004daf39e4ecd1543c" -> "sha256:cc1ba033b5b5f7fa0a040d2e37f283e1129b4b2ef6a76bdf05bcdb06f00b7147" [label=""];
  "sha256:cc1ba033b5b5f7fa0a040d2e37f283e1129b4b2ef6a76bdf05bcdb06f00b7147" -> "sha256:a930c71d32bcc1ee53db43c123d26af26f0bfb8ed87d2818b522eb5dc34b3ad9" [label=""];
}

