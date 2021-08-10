[app/sources/341903440.Dockerfile]
digraph {
  "sha256:f620639d6e3c1bdb925ee2bc1393bc7770ac63de37470107dc3b4edfafcae11e" [label="local://context" shape="ellipse"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:b5903ba9d039cf5a7f62f4aa2002a9a64b657dde653b511459949df76f12e8e3" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:6cf3b4422b25c267bab1a62499d43d9308798edf16819c0ddb07d7d244b7e3a8" [label="pip install boto3" shape="box"];
  "sha256:61364c0d6b9d2e954ea5a6af59fa62c76e2b8b496753c02bb9feed11d0cc4556" [label="sha256:61364c0d6b9d2e954ea5a6af59fa62c76e2b8b496753c02bb9feed11d0cc4556" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:b5903ba9d039cf5a7f62f4aa2002a9a64b657dde653b511459949df76f12e8e3" [label=""];
  "sha256:f620639d6e3c1bdb925ee2bc1393bc7770ac63de37470107dc3b4edfafcae11e" -> "sha256:b5903ba9d039cf5a7f62f4aa2002a9a64b657dde653b511459949df76f12e8e3" [label=""];
  "sha256:b5903ba9d039cf5a7f62f4aa2002a9a64b657dde653b511459949df76f12e8e3" -> "sha256:6cf3b4422b25c267bab1a62499d43d9308798edf16819c0ddb07d7d244b7e3a8" [label=""];
  "sha256:6cf3b4422b25c267bab1a62499d43d9308798edf16819c0ddb07d7d244b7e3a8" -> "sha256:61364c0d6b9d2e954ea5a6af59fa62c76e2b8b496753c02bb9feed11d0cc4556" [label=""];
}

