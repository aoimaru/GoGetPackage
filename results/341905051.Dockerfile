[app/sources/341905051.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:f7f8be0aeb2fb376a5d8c34f0437a4ef646b356fdd3ea3f096dc0e21af166f4a" [label="local://context" shape="ellipse"];
  "sha256:06efc7c155b13bf4ac772a244d4ea22d3621e64a7661ded7a4b606d9e6c5b652" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:2a113b618c2916e3bbcc431a4dd65d6ada45cb4733b090cbd4c03289fbc3b111" [label="sha256:2a113b618c2916e3bbcc431a4dd65d6ada45cb4733b090cbd4c03289fbc3b111" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:06efc7c155b13bf4ac772a244d4ea22d3621e64a7661ded7a4b606d9e6c5b652" [label=""];
  "sha256:f7f8be0aeb2fb376a5d8c34f0437a4ef646b356fdd3ea3f096dc0e21af166f4a" -> "sha256:06efc7c155b13bf4ac772a244d4ea22d3621e64a7661ded7a4b606d9e6c5b652" [label=""];
  "sha256:06efc7c155b13bf4ac772a244d4ea22d3621e64a7661ded7a4b606d9e6c5b652" -> "sha256:2a113b618c2916e3bbcc431a4dd65d6ada45cb4733b090cbd4c03289fbc3b111" [label=""];
}

