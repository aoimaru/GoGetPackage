[app/sources/341901004.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:a60e954f9b8793d6037e8395afb4854dc6d695206c7e1e17a44e96d3f55b48b1" [label="local://context" shape="ellipse"];
  "sha256:23d54b0fe6590abc9ddf75fe24299e639ed69a5f67f1e6a08b084182f2be0732" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:a37ae0ec6589e27ee1ba2ea3a16b882b3d6b5c25516deefd337934dcfb16fac3" [label="sha256:a37ae0ec6589e27ee1ba2ea3a16b882b3d6b5c25516deefd337934dcfb16fac3" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:23d54b0fe6590abc9ddf75fe24299e639ed69a5f67f1e6a08b084182f2be0732" [label=""];
  "sha256:a60e954f9b8793d6037e8395afb4854dc6d695206c7e1e17a44e96d3f55b48b1" -> "sha256:23d54b0fe6590abc9ddf75fe24299e639ed69a5f67f1e6a08b084182f2be0732" [label=""];
  "sha256:23d54b0fe6590abc9ddf75fe24299e639ed69a5f67f1e6a08b084182f2be0732" -> "sha256:a37ae0ec6589e27ee1ba2ea3a16b882b3d6b5c25516deefd337934dcfb16fac3" [label=""];
}

