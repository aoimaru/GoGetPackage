[app/sources/275670824.Dockerfile]
digraph {
  "sha256:8ea2f586633c0f95626a5e588e5c8eea9d5a774ab3710d5766a92739ad0e95e7" [label="docker-image://docker.io/library/mysql:5" shape="ellipse"];
  "sha256:72065546a21e030f338842a003d39b1c1dcc42bc6f3af8cc905742b5c9ab7114" [label="local://context" shape="ellipse"];
  "sha256:0db5d0311e6f067613511956db28ae54d4da16b34109f9fc28badb933016ad87" [label="copy{src=/gbook.sql, dest=/docker-entrypoint-initdb.d}" shape="note"];
  "sha256:9c97f05b1c40650660282d58354a7cf26b6bcfa79098e42e91a78eaed2f16ea1" [label="sha256:9c97f05b1c40650660282d58354a7cf26b6bcfa79098e42e91a78eaed2f16ea1" shape="plaintext"];
  "sha256:8ea2f586633c0f95626a5e588e5c8eea9d5a774ab3710d5766a92739ad0e95e7" -> "sha256:0db5d0311e6f067613511956db28ae54d4da16b34109f9fc28badb933016ad87" [label=""];
  "sha256:72065546a21e030f338842a003d39b1c1dcc42bc6f3af8cc905742b5c9ab7114" -> "sha256:0db5d0311e6f067613511956db28ae54d4da16b34109f9fc28badb933016ad87" [label=""];
  "sha256:0db5d0311e6f067613511956db28ae54d4da16b34109f9fc28badb933016ad87" -> "sha256:9c97f05b1c40650660282d58354a7cf26b6bcfa79098e42e91a78eaed2f16ea1" [label=""];
}

