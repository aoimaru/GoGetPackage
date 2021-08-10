[app/sources/341904030.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:0d553117664edf26f702ed83d685e64095517f0e22e4306b94c5f92523074cfb" [label="local://context" shape="ellipse"];
  "sha256:419806010cadb9676d719a7675d81519929dd4aa1fc2e5117834813af3fc654e" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:16237753a6cd96d30775c84854089a8e4fcf3cb81339487484e547ad0e184967" [label="pip install boto3" shape="box"];
  "sha256:c0fe12a0f671f828e1ae9d1eda9e2c0876ec93137ad2cc1e26c39f31370f76e8" [label="sha256:c0fe12a0f671f828e1ae9d1eda9e2c0876ec93137ad2cc1e26c39f31370f76e8" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:419806010cadb9676d719a7675d81519929dd4aa1fc2e5117834813af3fc654e" [label=""];
  "sha256:0d553117664edf26f702ed83d685e64095517f0e22e4306b94c5f92523074cfb" -> "sha256:419806010cadb9676d719a7675d81519929dd4aa1fc2e5117834813af3fc654e" [label=""];
  "sha256:419806010cadb9676d719a7675d81519929dd4aa1fc2e5117834813af3fc654e" -> "sha256:16237753a6cd96d30775c84854089a8e4fcf3cb81339487484e547ad0e184967" [label=""];
  "sha256:16237753a6cd96d30775c84854089a8e4fcf3cb81339487484e547ad0e184967" -> "sha256:c0fe12a0f671f828e1ae9d1eda9e2c0876ec93137ad2cc1e26c39f31370f76e8" [label=""];
}

