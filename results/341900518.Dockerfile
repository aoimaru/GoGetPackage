[app/sources/341900518.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:bcc75fa1578a45992896137700d7bf82d155c13af49ed63f626e31a7552df0b9" [label="local://context" shape="ellipse"];
  "sha256:bfa7afe182f3215461955633d643caba5ceb05fbd5bf39f91a6edbf6d23ff2fc" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:6d6be50b2141869995d63e16d3f6992bedf8a0a072b15e080e01d118e9884c98" [label="sha256:6d6be50b2141869995d63e16d3f6992bedf8a0a072b15e080e01d118e9884c98" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:bfa7afe182f3215461955633d643caba5ceb05fbd5bf39f91a6edbf6d23ff2fc" [label=""];
  "sha256:bcc75fa1578a45992896137700d7bf82d155c13af49ed63f626e31a7552df0b9" -> "sha256:bfa7afe182f3215461955633d643caba5ceb05fbd5bf39f91a6edbf6d23ff2fc" [label=""];
  "sha256:bfa7afe182f3215461955633d643caba5ceb05fbd5bf39f91a6edbf6d23ff2fc" -> "sha256:6d6be50b2141869995d63e16d3f6992bedf8a0a072b15e080e01d118e9884c98" [label=""];
}

