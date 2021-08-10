[app/sources/341898654.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:72ed5bed2d79d5744dcca012a03d0da8187c164275329e753bf70f6de5c7bd5f" [label="local://context" shape="ellipse"];
  "sha256:a411b53e24a9fb3fad0a5a4cf06971eb12caf0ca3e8d0208abe37bdd1c7c72e0" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:3077b6d3f1f9dcba4a07f379c0f073ddb5e4823fa52e030233ec53b01e6b6bec" [label="pip install numpy" shape="box"];
  "sha256:f5d1da57a2817946a27ace0d7facc15edaa14ce8e35c3422e56357091715f579" [label="sha256:f5d1da57a2817946a27ace0d7facc15edaa14ce8e35c3422e56357091715f579" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:a411b53e24a9fb3fad0a5a4cf06971eb12caf0ca3e8d0208abe37bdd1c7c72e0" [label=""];
  "sha256:72ed5bed2d79d5744dcca012a03d0da8187c164275329e753bf70f6de5c7bd5f" -> "sha256:a411b53e24a9fb3fad0a5a4cf06971eb12caf0ca3e8d0208abe37bdd1c7c72e0" [label=""];
  "sha256:a411b53e24a9fb3fad0a5a4cf06971eb12caf0ca3e8d0208abe37bdd1c7c72e0" -> "sha256:3077b6d3f1f9dcba4a07f379c0f073ddb5e4823fa52e030233ec53b01e6b6bec" [label=""];
  "sha256:3077b6d3f1f9dcba4a07f379c0f073ddb5e4823fa52e030233ec53b01e6b6bec" -> "sha256:f5d1da57a2817946a27ace0d7facc15edaa14ce8e35c3422e56357091715f579" [label=""];
}

