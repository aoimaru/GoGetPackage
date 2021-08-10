[app/sources/341901230.Dockerfile]
digraph {
  "sha256:c8a8a4aec4065a6b76bce11cb1c7a9b56fa366421961bb004659be3402289b4a" [label="local://context" shape="ellipse"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:6ba1281b9f22f31878fcac87b168a38765a18eb3b899a6b87306f457d6dc0c11" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:8f4e1d2f12002d642824de0e645457763edcd9ccb1922f967d2991dabbe4d617" [label="pip install bs4" shape="box"];
  "sha256:483922878b0e169734230e1ac31bfebf1b84cb7fbd48d3dcb27ecda9a1ce0f8d" [label="sha256:483922878b0e169734230e1ac31bfebf1b84cb7fbd48d3dcb27ecda9a1ce0f8d" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:6ba1281b9f22f31878fcac87b168a38765a18eb3b899a6b87306f457d6dc0c11" [label=""];
  "sha256:c8a8a4aec4065a6b76bce11cb1c7a9b56fa366421961bb004659be3402289b4a" -> "sha256:6ba1281b9f22f31878fcac87b168a38765a18eb3b899a6b87306f457d6dc0c11" [label=""];
  "sha256:6ba1281b9f22f31878fcac87b168a38765a18eb3b899a6b87306f457d6dc0c11" -> "sha256:8f4e1d2f12002d642824de0e645457763edcd9ccb1922f967d2991dabbe4d617" [label=""];
  "sha256:8f4e1d2f12002d642824de0e645457763edcd9ccb1922f967d2991dabbe4d617" -> "sha256:483922878b0e169734230e1ac31bfebf1b84cb7fbd48d3dcb27ecda9a1ce0f8d" [label=""];
}

