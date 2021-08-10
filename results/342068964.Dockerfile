[app/sources/342068964.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:6eb3231603f9f5e8d6ff52a298a5179a2fb9f081de67f96a8216046988940046" [label="local://context" shape="ellipse"];
  "sha256:def3b1e0a1df46f7221a14199e22b71e099b06e587920dc12b671d2f2ad49f0b" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:c15a58c8e4a7f1e077fd119cb64c33160d521dfe010e88bd5e811073972df4e8" [label="pip install web3" shape="box"];
  "sha256:4ee276bcecc50199b592f019a57fb2de547a944f670c37bd028b389f45b73605" [label="sha256:4ee276bcecc50199b592f019a57fb2de547a944f670c37bd028b389f45b73605" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:def3b1e0a1df46f7221a14199e22b71e099b06e587920dc12b671d2f2ad49f0b" [label=""];
  "sha256:6eb3231603f9f5e8d6ff52a298a5179a2fb9f081de67f96a8216046988940046" -> "sha256:def3b1e0a1df46f7221a14199e22b71e099b06e587920dc12b671d2f2ad49f0b" [label=""];
  "sha256:def3b1e0a1df46f7221a14199e22b71e099b06e587920dc12b671d2f2ad49f0b" -> "sha256:c15a58c8e4a7f1e077fd119cb64c33160d521dfe010e88bd5e811073972df4e8" [label=""];
  "sha256:c15a58c8e4a7f1e077fd119cb64c33160d521dfe010e88bd5e811073972df4e8" -> "sha256:4ee276bcecc50199b592f019a57fb2de547a944f670c37bd028b389f45b73605" [label=""];
}

