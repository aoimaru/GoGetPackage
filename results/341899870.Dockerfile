[app/sources/341899870.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:dea8c7edda48f4c8786da267a80012ba560c8ef0446fdfd3c8252be40ef72c45" [label="local://context" shape="ellipse"];
  "sha256:21d752ff18ddd9a4876024adb46eaa0358351ca59ee525f789fc9bf2f95574e8" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:5b0797869258ff0f3c54a0ad8ca28d62ad4f62c34c20ef02363736ccece511fd" [label="sha256:5b0797869258ff0f3c54a0ad8ca28d62ad4f62c34c20ef02363736ccece511fd" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:21d752ff18ddd9a4876024adb46eaa0358351ca59ee525f789fc9bf2f95574e8" [label=""];
  "sha256:dea8c7edda48f4c8786da267a80012ba560c8ef0446fdfd3c8252be40ef72c45" -> "sha256:21d752ff18ddd9a4876024adb46eaa0358351ca59ee525f789fc9bf2f95574e8" [label=""];
  "sha256:21d752ff18ddd9a4876024adb46eaa0358351ca59ee525f789fc9bf2f95574e8" -> "sha256:5b0797869258ff0f3c54a0ad8ca28d62ad4f62c34c20ef02363736ccece511fd" [label=""];
}

