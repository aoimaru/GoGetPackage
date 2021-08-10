[app/sources/341900472.Dockerfile]
digraph {
  "sha256:cae364cc87af2117d685a696313202590d5814499f232def8d0170bad14ded4d" [label="local://context" shape="ellipse"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:2b831089a5fd7f46a2c6e1a5c0b8452819b8f2348bdeb85108678ac4634fccb0" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:80418f6ef0266056e0e0a24a3d700ebeb626a8ca5b59dbdce1ff9be9ffdc7ee1" [label="pip install simplejson" shape="box"];
  "sha256:6e9eebf57c7a68988318f4f9333fcc59a033960f29fd1103fbe8e4fd66679f62" [label="sha256:6e9eebf57c7a68988318f4f9333fcc59a033960f29fd1103fbe8e4fd66679f62" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:2b831089a5fd7f46a2c6e1a5c0b8452819b8f2348bdeb85108678ac4634fccb0" [label=""];
  "sha256:cae364cc87af2117d685a696313202590d5814499f232def8d0170bad14ded4d" -> "sha256:2b831089a5fd7f46a2c6e1a5c0b8452819b8f2348bdeb85108678ac4634fccb0" [label=""];
  "sha256:2b831089a5fd7f46a2c6e1a5c0b8452819b8f2348bdeb85108678ac4634fccb0" -> "sha256:80418f6ef0266056e0e0a24a3d700ebeb626a8ca5b59dbdce1ff9be9ffdc7ee1" [label=""];
  "sha256:80418f6ef0266056e0e0a24a3d700ebeb626a8ca5b59dbdce1ff9be9ffdc7ee1" -> "sha256:6e9eebf57c7a68988318f4f9333fcc59a033960f29fd1103fbe8e4fd66679f62" [label=""];
}

