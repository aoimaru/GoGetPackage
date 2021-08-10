[app/sources/341902054.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:22ef8bcc63cc7e960aea7caf20e4a7f0393ecbcbd1cfb25d27b436e6eb410488" [label="local://context" shape="ellipse"];
  "sha256:1a00bf917bf167f24d300fe8d5b6622a9c2a13ca8b3c6c134a41de05f2e08b78" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:391e81435115b36ec6cc3b7f486be186fa942c58e91ee56f45299d9d841d001f" [label="sha256:391e81435115b36ec6cc3b7f486be186fa942c58e91ee56f45299d9d841d001f" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:1a00bf917bf167f24d300fe8d5b6622a9c2a13ca8b3c6c134a41de05f2e08b78" [label=""];
  "sha256:22ef8bcc63cc7e960aea7caf20e4a7f0393ecbcbd1cfb25d27b436e6eb410488" -> "sha256:1a00bf917bf167f24d300fe8d5b6622a9c2a13ca8b3c6c134a41de05f2e08b78" [label=""];
  "sha256:1a00bf917bf167f24d300fe8d5b6622a9c2a13ca8b3c6c134a41de05f2e08b78" -> "sha256:391e81435115b36ec6cc3b7f486be186fa942c58e91ee56f45299d9d841d001f" [label=""];
}

