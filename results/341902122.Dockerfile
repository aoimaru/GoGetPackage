[app/sources/341902122.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:28aed5f2eab90627a92ed0889881a8af9e01c940890b1ff4411cdf97df5ce1f7" [label="local://context" shape="ellipse"];
  "sha256:e12da52753a1f38caac9ae694d8c74fc673851b22c8f6fc3226f71edcc5bb7af" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:f9fe6f7bfb65fb747b990b913d660a39f857f5c4db585d4d368e432983b80a25" [label="sha256:f9fe6f7bfb65fb747b990b913d660a39f857f5c4db585d4d368e432983b80a25" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:e12da52753a1f38caac9ae694d8c74fc673851b22c8f6fc3226f71edcc5bb7af" [label=""];
  "sha256:28aed5f2eab90627a92ed0889881a8af9e01c940890b1ff4411cdf97df5ce1f7" -> "sha256:e12da52753a1f38caac9ae694d8c74fc673851b22c8f6fc3226f71edcc5bb7af" [label=""];
  "sha256:e12da52753a1f38caac9ae694d8c74fc673851b22c8f6fc3226f71edcc5bb7af" -> "sha256:f9fe6f7bfb65fb747b990b913d660a39f857f5c4db585d4d368e432983b80a25" [label=""];
}

