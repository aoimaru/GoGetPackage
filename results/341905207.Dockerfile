[app/sources/341905207.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:4ec8135715ff3e9e17b3faa7b041b352eb264cce6ea9c4bb6a298840e0db1c14" [label="local://context" shape="ellipse"];
  "sha256:14dbc2343132a28eb8ac35034ed1201f0ccc12d081437a4b3870d0efc42e524a" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:5a28d2fcc31a9d8a8ed3af2b3b3a6c9ec1284de931b510acd5cb098663cb3dd8" [label="sha256:5a28d2fcc31a9d8a8ed3af2b3b3a6c9ec1284de931b510acd5cb098663cb3dd8" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:14dbc2343132a28eb8ac35034ed1201f0ccc12d081437a4b3870d0efc42e524a" [label=""];
  "sha256:4ec8135715ff3e9e17b3faa7b041b352eb264cce6ea9c4bb6a298840e0db1c14" -> "sha256:14dbc2343132a28eb8ac35034ed1201f0ccc12d081437a4b3870d0efc42e524a" [label=""];
  "sha256:14dbc2343132a28eb8ac35034ed1201f0ccc12d081437a4b3870d0efc42e524a" -> "sha256:5a28d2fcc31a9d8a8ed3af2b3b3a6c9ec1284de931b510acd5cb098663cb3dd8" [label=""];
}

