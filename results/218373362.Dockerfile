[app/sources/218373362.Dockerfile]
digraph {
  "sha256:84e2858e623128aaca9366b254b7ca9d45684ef57e82098c1bd4a4eac14d3483" [label="docker-image://docker.io/library/python:2.7.11" shape="ellipse"];
  "sha256:33890424605a62d448ff605ccdeac9650796d3a01dc23d2819f110667ed1f7a0" [label="local://context" shape="ellipse"];
  "sha256:0ae1d8081c926c2e8db13f5043163eb129a90b5cae1460dd91269f713a67d585" [label="copy{src=/requirements.pip, dest=/tmp/}" shape="note"];
  "sha256:a436784330b72e3f5f8e0703cfa5496e6812340e0695190fcc841bb5edbbd818" [label="/bin/sh -c pip install -r /tmp/requirements.pip" shape="box"];
  "sha256:cf6bfa3ffec1def7b392522043330ebafc442967f14534fd959ad7383b10a193" [label="copy{src=/, dest=/usr/local/src/docker-make}" shape="note"];
  "sha256:6c5e0d64e9980b5f8f829c3b94e923d116fc213b54e8dbbe41099282092c5a11" [label="/bin/sh -c pip install /usr/local/src/docker-make" shape="box"];
  "sha256:984588a71f9fb3f7b6c9f0ec87afcf4e1383ec301a93fb9fe27bd2f9c23b10f6" [label="sha256:984588a71f9fb3f7b6c9f0ec87afcf4e1383ec301a93fb9fe27bd2f9c23b10f6" shape="plaintext"];
  "sha256:84e2858e623128aaca9366b254b7ca9d45684ef57e82098c1bd4a4eac14d3483" -> "sha256:0ae1d8081c926c2e8db13f5043163eb129a90b5cae1460dd91269f713a67d585" [label=""];
  "sha256:33890424605a62d448ff605ccdeac9650796d3a01dc23d2819f110667ed1f7a0" -> "sha256:0ae1d8081c926c2e8db13f5043163eb129a90b5cae1460dd91269f713a67d585" [label=""];
  "sha256:0ae1d8081c926c2e8db13f5043163eb129a90b5cae1460dd91269f713a67d585" -> "sha256:a436784330b72e3f5f8e0703cfa5496e6812340e0695190fcc841bb5edbbd818" [label=""];
  "sha256:a436784330b72e3f5f8e0703cfa5496e6812340e0695190fcc841bb5edbbd818" -> "sha256:cf6bfa3ffec1def7b392522043330ebafc442967f14534fd959ad7383b10a193" [label=""];
  "sha256:33890424605a62d448ff605ccdeac9650796d3a01dc23d2819f110667ed1f7a0" -> "sha256:cf6bfa3ffec1def7b392522043330ebafc442967f14534fd959ad7383b10a193" [label=""];
  "sha256:cf6bfa3ffec1def7b392522043330ebafc442967f14534fd959ad7383b10a193" -> "sha256:6c5e0d64e9980b5f8f829c3b94e923d116fc213b54e8dbbe41099282092c5a11" [label=""];
  "sha256:6c5e0d64e9980b5f8f829c3b94e923d116fc213b54e8dbbe41099282092c5a11" -> "sha256:984588a71f9fb3f7b6c9f0ec87afcf4e1383ec301a93fb9fe27bd2f9c23b10f6" [label=""];
}

