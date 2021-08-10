[app/sources/342067590.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:1fc302f5395b93058b665563f04a7e02264d50497073fcc0ce95e7f0f1c58aea" [label="local://context" shape="ellipse"];
  "sha256:9fdf0a3f0cd84110ddf9a7f3c36e088d463c6e2492dd0b5283f687eefa102563" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:09fb554495d1bcc267dcedee86aecd22b57872f870b6ee5dabce3aef540a487a" [label="pip install numpy" shape="box"];
  "sha256:bcbe3b552eb5eba50bb784e0416d8365e7fd798c19925dd73bfd8930241ebb0f" [label="sha256:bcbe3b552eb5eba50bb784e0416d8365e7fd798c19925dd73bfd8930241ebb0f" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:9fdf0a3f0cd84110ddf9a7f3c36e088d463c6e2492dd0b5283f687eefa102563" [label=""];
  "sha256:1fc302f5395b93058b665563f04a7e02264d50497073fcc0ce95e7f0f1c58aea" -> "sha256:9fdf0a3f0cd84110ddf9a7f3c36e088d463c6e2492dd0b5283f687eefa102563" [label=""];
  "sha256:9fdf0a3f0cd84110ddf9a7f3c36e088d463c6e2492dd0b5283f687eefa102563" -> "sha256:09fb554495d1bcc267dcedee86aecd22b57872f870b6ee5dabce3aef540a487a" [label=""];
  "sha256:09fb554495d1bcc267dcedee86aecd22b57872f870b6ee5dabce3aef540a487a" -> "sha256:bcbe3b552eb5eba50bb784e0416d8365e7fd798c19925dd73bfd8930241ebb0f" [label=""];
}

