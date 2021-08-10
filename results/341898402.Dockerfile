[app/sources/341898402.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:f98fd2fba4cf9f0fff0f9238e2bf18148ac1c0828bf6923ffca3df5f50143925" [label="local://context" shape="ellipse"];
  "sha256:351991a99f5831de505bdd17e3617b89bfed1c5e8c6ebece134380982d23c2cb" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:ad96cd82f5e8ead3abe5201501de5d6c1165beeabc527eb4483054d5fc2b4ab5" [label="sha256:ad96cd82f5e8ead3abe5201501de5d6c1165beeabc527eb4483054d5fc2b4ab5" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:351991a99f5831de505bdd17e3617b89bfed1c5e8c6ebece134380982d23c2cb" [label=""];
  "sha256:f98fd2fba4cf9f0fff0f9238e2bf18148ac1c0828bf6923ffca3df5f50143925" -> "sha256:351991a99f5831de505bdd17e3617b89bfed1c5e8c6ebece134380982d23c2cb" [label=""];
  "sha256:351991a99f5831de505bdd17e3617b89bfed1c5e8c6ebece134380982d23c2cb" -> "sha256:ad96cd82f5e8ead3abe5201501de5d6c1165beeabc527eb4483054d5fc2b4ab5" [label=""];
}

