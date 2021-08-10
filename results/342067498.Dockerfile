[app/sources/342067498.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:dba6ebc23e27c0f4d744c4b55ecfee6073b9a89c387bb5a76e59a2498a4a09ce" [label="local://context" shape="ellipse"];
  "sha256:575db3df1e24508d9ef21ee3fc01bd0cdf5143c7bffeff9e18f3cb20906940c7" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:20bd5156138770a2ef3ba212ffd08df8371e1011323a236a8c1f2bf03ee08275" [label="sha256:20bd5156138770a2ef3ba212ffd08df8371e1011323a236a8c1f2bf03ee08275" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:575db3df1e24508d9ef21ee3fc01bd0cdf5143c7bffeff9e18f3cb20906940c7" [label=""];
  "sha256:dba6ebc23e27c0f4d744c4b55ecfee6073b9a89c387bb5a76e59a2498a4a09ce" -> "sha256:575db3df1e24508d9ef21ee3fc01bd0cdf5143c7bffeff9e18f3cb20906940c7" [label=""];
  "sha256:575db3df1e24508d9ef21ee3fc01bd0cdf5143c7bffeff9e18f3cb20906940c7" -> "sha256:20bd5156138770a2ef3ba212ffd08df8371e1011323a236a8c1f2bf03ee08275" [label=""];
}

