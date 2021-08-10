[app/sources/341904861.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:167d95a17e6a0e81ea9e61eb332f655f9e74d710091e1d62a424ab8aa537866f" [label="local://context" shape="ellipse"];
  "sha256:48964be93224dd7d58784260eac4441ab4f0cdb3d00ba2c857854d0d707c37f1" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:58e6f5849b81e0eb3a163be6e42db3fa096b8d1f168b6503c12e812fdf03baf4" [label="sha256:58e6f5849b81e0eb3a163be6e42db3fa096b8d1f168b6503c12e812fdf03baf4" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:48964be93224dd7d58784260eac4441ab4f0cdb3d00ba2c857854d0d707c37f1" [label=""];
  "sha256:167d95a17e6a0e81ea9e61eb332f655f9e74d710091e1d62a424ab8aa537866f" -> "sha256:48964be93224dd7d58784260eac4441ab4f0cdb3d00ba2c857854d0d707c37f1" [label=""];
  "sha256:48964be93224dd7d58784260eac4441ab4f0cdb3d00ba2c857854d0d707c37f1" -> "sha256:58e6f5849b81e0eb3a163be6e42db3fa096b8d1f168b6503c12e812fdf03baf4" [label=""];
}

