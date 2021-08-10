[app/sources/341903702.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:ed7111b3972df719926d7a6ffdca644447a992007dafd5e9e55e53206d0b8c8c" [label="local://context" shape="ellipse"];
  "sha256:3f4bbee60661372317fdd642a9bedaf3f08ee37345ac48f858cb6c05dc772a55" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:a3955324a47a2998b05df303a0965bcab267f4c29d09c0817a978f78eed15c39" [label="pip install numpy" shape="box"];
  "sha256:16a5fbf3e6d456c5b2452a9444a08d5b3ba03df20db6ddf5e3b7db5706436e2f" [label="sha256:16a5fbf3e6d456c5b2452a9444a08d5b3ba03df20db6ddf5e3b7db5706436e2f" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:3f4bbee60661372317fdd642a9bedaf3f08ee37345ac48f858cb6c05dc772a55" [label=""];
  "sha256:ed7111b3972df719926d7a6ffdca644447a992007dafd5e9e55e53206d0b8c8c" -> "sha256:3f4bbee60661372317fdd642a9bedaf3f08ee37345ac48f858cb6c05dc772a55" [label=""];
  "sha256:3f4bbee60661372317fdd642a9bedaf3f08ee37345ac48f858cb6c05dc772a55" -> "sha256:a3955324a47a2998b05df303a0965bcab267f4c29d09c0817a978f78eed15c39" [label=""];
  "sha256:a3955324a47a2998b05df303a0965bcab267f4c29d09c0817a978f78eed15c39" -> "sha256:16a5fbf3e6d456c5b2452a9444a08d5b3ba03df20db6ddf5e3b7db5706436e2f" [label=""];
}

