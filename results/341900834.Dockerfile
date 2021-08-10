[app/sources/341900834.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:6eb3b63b6a0120bee6731ff01f7e93bc24ea4288a9076e64098b564da8770fa6" [label="local://context" shape="ellipse"];
  "sha256:b85f11eefe584359eaf65bd72bf5823c4669cd12a2d863c76a26839821e92e25" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:4daa795f302ab54d5f53348727c53408ae418172869051e7e72fe1dac7e86a34" [label="pip install reportlab" shape="box"];
  "sha256:85a9bb2c99b4edcea7d6c87f85ed003b7f7569ad29df1132a4d738a6e0ccdf72" [label="pip install pyPdf" shape="box"];
  "sha256:ca13c221f7b63d1c575576bdfb2edc2b1f3f166768f20991943364a7f4282d60" [label="pip install reportlab" shape="box"];
  "sha256:a80a29dbbeae12e7b01554de1387b7000d508f6ab9f470fdde7b6938970f6f2c" [label="sha256:a80a29dbbeae12e7b01554de1387b7000d508f6ab9f470fdde7b6938970f6f2c" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:b85f11eefe584359eaf65bd72bf5823c4669cd12a2d863c76a26839821e92e25" [label=""];
  "sha256:6eb3b63b6a0120bee6731ff01f7e93bc24ea4288a9076e64098b564da8770fa6" -> "sha256:b85f11eefe584359eaf65bd72bf5823c4669cd12a2d863c76a26839821e92e25" [label=""];
  "sha256:b85f11eefe584359eaf65bd72bf5823c4669cd12a2d863c76a26839821e92e25" -> "sha256:4daa795f302ab54d5f53348727c53408ae418172869051e7e72fe1dac7e86a34" [label=""];
  "sha256:4daa795f302ab54d5f53348727c53408ae418172869051e7e72fe1dac7e86a34" -> "sha256:85a9bb2c99b4edcea7d6c87f85ed003b7f7569ad29df1132a4d738a6e0ccdf72" [label=""];
  "sha256:85a9bb2c99b4edcea7d6c87f85ed003b7f7569ad29df1132a4d738a6e0ccdf72" -> "sha256:ca13c221f7b63d1c575576bdfb2edc2b1f3f166768f20991943364a7f4282d60" [label=""];
  "sha256:ca13c221f7b63d1c575576bdfb2edc2b1f3f166768f20991943364a7f4282d60" -> "sha256:a80a29dbbeae12e7b01554de1387b7000d508f6ab9f470fdde7b6938970f6f2c" [label=""];
}

