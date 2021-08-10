[app/sources/341904969.Dockerfile]
digraph {
  "sha256:3322836ed235966d459871466d8ce082a50654fa4ee46d775c6f476ffd5b2443" [label="docker-image://docker.io/library/python:2.7.13@sha256:ac21ec6277f7da89c32f977b25224abbbbb0f4d3d10ce37461210c14019bc955" shape="ellipse"];
  "sha256:ad768497fafd949dec3082a4ea7ece59252b1c8afb58229daabd7dfb2b92282b" [label="local://context" shape="ellipse"];
  "sha256:40a6cf38dde22143b49aeb8e1b07c9abb62526e4462184924a31b86255911c45" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:42e98dc17366dcfb2beb8c9ecbc9b34854823fa4fd33b20affd9db574e75d848" [label="sha256:42e98dc17366dcfb2beb8c9ecbc9b34854823fa4fd33b20affd9db574e75d848" shape="plaintext"];
  "sha256:3322836ed235966d459871466d8ce082a50654fa4ee46d775c6f476ffd5b2443" -> "sha256:40a6cf38dde22143b49aeb8e1b07c9abb62526e4462184924a31b86255911c45" [label=""];
  "sha256:ad768497fafd949dec3082a4ea7ece59252b1c8afb58229daabd7dfb2b92282b" -> "sha256:40a6cf38dde22143b49aeb8e1b07c9abb62526e4462184924a31b86255911c45" [label=""];
  "sha256:40a6cf38dde22143b49aeb8e1b07c9abb62526e4462184924a31b86255911c45" -> "sha256:42e98dc17366dcfb2beb8c9ecbc9b34854823fa4fd33b20affd9db574e75d848" [label=""];
}

