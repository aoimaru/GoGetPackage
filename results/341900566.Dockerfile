[app/sources/341900566.Dockerfile]
digraph {
  "sha256:0dc760c792518d04277f7ae3cfb743a71f20baaee4a80b8f555aa7bbd6f59687" [label="local://context" shape="ellipse"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:e2e7aef8719c271fc12187ae6ca66fb862a4c1cc248d59665f9a8295cd066e6c" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:faf7016983422c6669b3cd80fe3823aaf6a7f64996ac5f7484ebf5cd8c31c38c" [label="sha256:faf7016983422c6669b3cd80fe3823aaf6a7f64996ac5f7484ebf5cd8c31c38c" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:e2e7aef8719c271fc12187ae6ca66fb862a4c1cc248d59665f9a8295cd066e6c" [label=""];
  "sha256:0dc760c792518d04277f7ae3cfb743a71f20baaee4a80b8f555aa7bbd6f59687" -> "sha256:e2e7aef8719c271fc12187ae6ca66fb862a4c1cc248d59665f9a8295cd066e6c" [label=""];
  "sha256:e2e7aef8719c271fc12187ae6ca66fb862a4c1cc248d59665f9a8295cd066e6c" -> "sha256:faf7016983422c6669b3cd80fe3823aaf6a7f64996ac5f7484ebf5cd8c31c38c" [label=""];
}

