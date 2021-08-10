[app/sources/341900204.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:ce9be1a7cefab4cf42f414ad238c0fba537380af8ab9aee03fe369cf711c6c2a" [label="local://context" shape="ellipse"];
  "sha256:d07eeedad6025975ad2801755923ec3e41ae547bef6202e19b0c0c38f65e6f9e" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:881af87ba930775db8311150064d78a4fc7a44c9e59dde1da19ed927a9d5fdf0" [label="sha256:881af87ba930775db8311150064d78a4fc7a44c9e59dde1da19ed927a9d5fdf0" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:d07eeedad6025975ad2801755923ec3e41ae547bef6202e19b0c0c38f65e6f9e" [label=""];
  "sha256:ce9be1a7cefab4cf42f414ad238c0fba537380af8ab9aee03fe369cf711c6c2a" -> "sha256:d07eeedad6025975ad2801755923ec3e41ae547bef6202e19b0c0c38f65e6f9e" [label=""];
  "sha256:d07eeedad6025975ad2801755923ec3e41ae547bef6202e19b0c0c38f65e6f9e" -> "sha256:881af87ba930775db8311150064d78a4fc7a44c9e59dde1da19ed927a9d5fdf0" [label=""];
}

