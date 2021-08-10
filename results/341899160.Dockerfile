[app/sources/341899160.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:8fcd4353de43210898493bd3398ad4fb170cd4f9b53c5ed2ac8bf9172bad2196" [label="local://context" shape="ellipse"];
  "sha256:19236a331e0719cf1799445c0967d3b4ea08bb299caaf5ac399de37579a99050" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:38ed7aa12f6c1003b9b4c80c41f41abbc3cae55bb0dfd1a5597e5515e1d09130" [label="sha256:38ed7aa12f6c1003b9b4c80c41f41abbc3cae55bb0dfd1a5597e5515e1d09130" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:19236a331e0719cf1799445c0967d3b4ea08bb299caaf5ac399de37579a99050" [label=""];
  "sha256:8fcd4353de43210898493bd3398ad4fb170cd4f9b53c5ed2ac8bf9172bad2196" -> "sha256:19236a331e0719cf1799445c0967d3b4ea08bb299caaf5ac399de37579a99050" [label=""];
  "sha256:19236a331e0719cf1799445c0967d3b4ea08bb299caaf5ac399de37579a99050" -> "sha256:38ed7aa12f6c1003b9b4c80c41f41abbc3cae55bb0dfd1a5597e5515e1d09130" [label=""];
}

