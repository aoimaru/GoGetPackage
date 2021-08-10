[app/sources/291618490.Dockerfile]
digraph {
  "sha256:35a9fd5f760d2b90d030c37766257a29fa1b6c8f91945b42dd16eb8d2fc2c867" [label="docker-image://docker.io/library/mysql:5.7" shape="ellipse"];
  "sha256:84f46499659a5c1d7f1f6d52bd5e702b67b785be4d5b4e3f78ebc5c2d4e471b9" [label="local://context" shape="ellipse"];
  "sha256:5d4dced94230c9a4f8c6295ad28b4cb7b5c459edfcd6dcde641f281c8dcca0be" [label="copy{src=/mysql.cnf, dest=/etc/mysql/conf.d/custom.cnf}" shape="note"];
  "sha256:bf14f08f717d1fc850b91bc479e7bd5f7ddb1e68df1787e6010845e97a4493c4" [label="sha256:bf14f08f717d1fc850b91bc479e7bd5f7ddb1e68df1787e6010845e97a4493c4" shape="plaintext"];
  "sha256:35a9fd5f760d2b90d030c37766257a29fa1b6c8f91945b42dd16eb8d2fc2c867" -> "sha256:5d4dced94230c9a4f8c6295ad28b4cb7b5c459edfcd6dcde641f281c8dcca0be" [label=""];
  "sha256:84f46499659a5c1d7f1f6d52bd5e702b67b785be4d5b4e3f78ebc5c2d4e471b9" -> "sha256:5d4dced94230c9a4f8c6295ad28b4cb7b5c459edfcd6dcde641f281c8dcca0be" [label=""];
  "sha256:5d4dced94230c9a4f8c6295ad28b4cb7b5c459edfcd6dcde641f281c8dcca0be" -> "sha256:bf14f08f717d1fc850b91bc479e7bd5f7ddb1e68df1787e6010845e97a4493c4" [label=""];
}

