[app/sources/341900692.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:8f214e38899a3c07e2a61150602cf2dbad254a656522483491276199c6d3b8b6" [label="local://context" shape="ellipse"];
  "sha256:1a5f39b3035a38c500efd54fea2b9c607e7c61a570e79d255ab2161b30baa403" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:e868654cd0fcf23647edfa1898ce33ee27db2cc7d76affaf9fa03f3dcabfbcef" [label="pip install requests" shape="box"];
  "sha256:d6838039bd973c09d3b4d4f224da1bfc82e9b8252a8a985963786ec90f1b858a" [label="sha256:d6838039bd973c09d3b4d4f224da1bfc82e9b8252a8a985963786ec90f1b858a" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:1a5f39b3035a38c500efd54fea2b9c607e7c61a570e79d255ab2161b30baa403" [label=""];
  "sha256:8f214e38899a3c07e2a61150602cf2dbad254a656522483491276199c6d3b8b6" -> "sha256:1a5f39b3035a38c500efd54fea2b9c607e7c61a570e79d255ab2161b30baa403" [label=""];
  "sha256:1a5f39b3035a38c500efd54fea2b9c607e7c61a570e79d255ab2161b30baa403" -> "sha256:e868654cd0fcf23647edfa1898ce33ee27db2cc7d76affaf9fa03f3dcabfbcef" [label=""];
  "sha256:e868654cd0fcf23647edfa1898ce33ee27db2cc7d76affaf9fa03f3dcabfbcef" -> "sha256:d6838039bd973c09d3b4d4f224da1bfc82e9b8252a8a985963786ec90f1b858a" [label=""];
}

