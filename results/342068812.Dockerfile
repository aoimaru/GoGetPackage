[app/sources/342068812.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:37a6007284ec1706788259c9832a869db70dae7806bc4c9bdaca3a615461d405" [label="local://context" shape="ellipse"];
  "sha256:0175e4971c7b408cdcdd0aed577855d0debfb2d966ccd9ea78ee90f86133a5bb" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:ca43a5f506c6f8fc27522c2742f262b79d7cd3d90cdd430005273a2a55edae44" [label="pip install matplotlib" shape="box"];
  "sha256:5753abb8b838152fcd544a90ddf11adec4587a78db602c01130426949ce30b07" [label="sha256:5753abb8b838152fcd544a90ddf11adec4587a78db602c01130426949ce30b07" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:0175e4971c7b408cdcdd0aed577855d0debfb2d966ccd9ea78ee90f86133a5bb" [label=""];
  "sha256:37a6007284ec1706788259c9832a869db70dae7806bc4c9bdaca3a615461d405" -> "sha256:0175e4971c7b408cdcdd0aed577855d0debfb2d966ccd9ea78ee90f86133a5bb" [label=""];
  "sha256:0175e4971c7b408cdcdd0aed577855d0debfb2d966ccd9ea78ee90f86133a5bb" -> "sha256:ca43a5f506c6f8fc27522c2742f262b79d7cd3d90cdd430005273a2a55edae44" [label=""];
  "sha256:ca43a5f506c6f8fc27522c2742f262b79d7cd3d90cdd430005273a2a55edae44" -> "sha256:5753abb8b838152fcd544a90ddf11adec4587a78db602c01130426949ce30b07" [label=""];
}

