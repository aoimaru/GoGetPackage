[app/sources/341902202.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:e8022758a1ffbb3247ec00b8f2f207fb442a108dbeba0c3e2877e22f3c53fe27" [label="local://context" shape="ellipse"];
  "sha256:3f241deb2f6ae20bbafaef391f814f07ae57a45054f61c55e299400af719c481" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:7328828bec7fce9f4b7bbcb20ee7f49cda80d2482c3620f1b06a68d7a51f119d" [label="sha256:7328828bec7fce9f4b7bbcb20ee7f49cda80d2482c3620f1b06a68d7a51f119d" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:3f241deb2f6ae20bbafaef391f814f07ae57a45054f61c55e299400af719c481" [label=""];
  "sha256:e8022758a1ffbb3247ec00b8f2f207fb442a108dbeba0c3e2877e22f3c53fe27" -> "sha256:3f241deb2f6ae20bbafaef391f814f07ae57a45054f61c55e299400af719c481" [label=""];
  "sha256:3f241deb2f6ae20bbafaef391f814f07ae57a45054f61c55e299400af719c481" -> "sha256:7328828bec7fce9f4b7bbcb20ee7f49cda80d2482c3620f1b06a68d7a51f119d" [label=""];
}

