[app/sources/342066512.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:b399cb11e2e2f9c9b910d2859f47b4c38d3b1b18d2875054cd36a0e3efe343c3" [label="local://context" shape="ellipse"];
  "sha256:a76565f0cea48b2f5682f8d102325d898118dfc100510046ebf2c3088a0d213a" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:378af38c12f5ad9f6d97c1898762d6219f1d079ccbeaf097ea83e4b5c911319f" [label="sha256:378af38c12f5ad9f6d97c1898762d6219f1d079ccbeaf097ea83e4b5c911319f" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:a76565f0cea48b2f5682f8d102325d898118dfc100510046ebf2c3088a0d213a" [label=""];
  "sha256:b399cb11e2e2f9c9b910d2859f47b4c38d3b1b18d2875054cd36a0e3efe343c3" -> "sha256:a76565f0cea48b2f5682f8d102325d898118dfc100510046ebf2c3088a0d213a" [label=""];
  "sha256:a76565f0cea48b2f5682f8d102325d898118dfc100510046ebf2c3088a0d213a" -> "sha256:378af38c12f5ad9f6d97c1898762d6219f1d079ccbeaf097ea83e4b5c911319f" [label=""];
}
