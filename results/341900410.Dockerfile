[app/sources/341900410.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:5a36cbfc1174f74cd29c7578d05980cc570a417b009e2ae296676b8f51c2555c" [label="local://context" shape="ellipse"];
  "sha256:f1e76b567068b9a7a6d06ae34dca7327bb5a05c96903c068e2a6ae58172e303d" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:0dbfa6f0794d4fb996ffefde82af64e53b57a24f7d08eb5844b2f3fa1d954902" [label="pip install requests" shape="box"];
  "sha256:e6c82044d82316bb5f3c43bb27d4984b2abb42399c1ffdca17a713347339bd70" [label="sha256:e6c82044d82316bb5f3c43bb27d4984b2abb42399c1ffdca17a713347339bd70" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:f1e76b567068b9a7a6d06ae34dca7327bb5a05c96903c068e2a6ae58172e303d" [label=""];
  "sha256:5a36cbfc1174f74cd29c7578d05980cc570a417b009e2ae296676b8f51c2555c" -> "sha256:f1e76b567068b9a7a6d06ae34dca7327bb5a05c96903c068e2a6ae58172e303d" [label=""];
  "sha256:f1e76b567068b9a7a6d06ae34dca7327bb5a05c96903c068e2a6ae58172e303d" -> "sha256:0dbfa6f0794d4fb996ffefde82af64e53b57a24f7d08eb5844b2f3fa1d954902" [label=""];
  "sha256:0dbfa6f0794d4fb996ffefde82af64e53b57a24f7d08eb5844b2f3fa1d954902" -> "sha256:e6c82044d82316bb5f3c43bb27d4984b2abb42399c1ffdca17a713347339bd70" [label=""];
}

