[app/sources/465581871.Dockerfile]
digraph {
  "sha256:1f850a5239555125178f822f39a1d9b2ff2ecbc13631337f3c5400b484f24013" [label="local://context" shape="ellipse"];
  "sha256:57fe48d890ff3806e1691b2f7b9595dd7f6d41e10d97caa70c429fb17db922bd" [label="copy{src=/ca-certificates.crt, dest=/etc/ssl/certs/}" shape="note"];
  "sha256:510886fc080d1dcc1e1c9f71543feccb3e39ae875c705b6763f4551111a6c803" [label="copy{src=/h2demo, dest=/}" shape="note"];
  "sha256:3a93ce9954b7a51839d37258ffb2562cc2b59400366a9a55a393ca7179c5fb07" [label="sha256:3a93ce9954b7a51839d37258ffb2562cc2b59400366a9a55a393ca7179c5fb07" shape="plaintext"];
  "sha256:1f850a5239555125178f822f39a1d9b2ff2ecbc13631337f3c5400b484f24013" -> "sha256:57fe48d890ff3806e1691b2f7b9595dd7f6d41e10d97caa70c429fb17db922bd" [label=""];
  "sha256:57fe48d890ff3806e1691b2f7b9595dd7f6d41e10d97caa70c429fb17db922bd" -> "sha256:510886fc080d1dcc1e1c9f71543feccb3e39ae875c705b6763f4551111a6c803" [label=""];
  "sha256:1f850a5239555125178f822f39a1d9b2ff2ecbc13631337f3c5400b484f24013" -> "sha256:510886fc080d1dcc1e1c9f71543feccb3e39ae875c705b6763f4551111a6c803" [label=""];
  "sha256:510886fc080d1dcc1e1c9f71543feccb3e39ae875c705b6763f4551111a6c803" -> "sha256:3a93ce9954b7a51839d37258ffb2562cc2b59400366a9a55a393ca7179c5fb07" [label=""];
}

