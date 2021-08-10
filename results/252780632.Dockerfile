[app/sources/252780632.Dockerfile]
digraph {
  "sha256:104d5fde58ac954e44d250b492e6fcc2abd6f0a6ef087723bc42a37f78c447e8" [label="docker-image://docker.io/library/python:3.4" shape="ellipse"];
  "sha256:118fa9af95cb4cb106445ca7b07b0127b16ab6fe84a702ab1eadf619ed06b833" [label="/bin/sh -c groupadd -r uwsgi && useradd -r -g uwsgi uwsgi" shape="box"];
  "sha256:ce7297715c4a1981f5b70a0e4ef19d36df6d4fd3d8645cafde6b633d36c97458" [label="/bin/sh -c pip install requests==2.5.1 Flask==0.10.1 uWSGI==2.0.8 redis==2.10.3" shape="box"];
  "sha256:cdce98d89ec5655e78d91aaeacfded2abac904c3be212d8cd234b640dbae727f" [label="mkdir{path=/app}" shape="note"];
  "sha256:ab76eee6e4d502ed453124bd44f19efc11237f8077092c233820e5a236e2cb61" [label="local://context" shape="ellipse"];
  "sha256:87cb9ae0e6e95bd8c71418d80075ed99d4c1fec02a03843a3501b5975b6a6c5e" [label="copy{src=/app, dest=/app}" shape="note"];
  "sha256:7d218a5f8e72510a91da5887a04fd139474603a9dee06e39b520404abddddbb4" [label="copy{src=/cmd.sh, dest=/}" shape="note"];
  "sha256:3d64ce29ca2d519a4d086524513148eb932817e38799011737e1a19411a2a37f" [label="sha256:3d64ce29ca2d519a4d086524513148eb932817e38799011737e1a19411a2a37f" shape="plaintext"];
  "sha256:104d5fde58ac954e44d250b492e6fcc2abd6f0a6ef087723bc42a37f78c447e8" -> "sha256:118fa9af95cb4cb106445ca7b07b0127b16ab6fe84a702ab1eadf619ed06b833" [label=""];
  "sha256:118fa9af95cb4cb106445ca7b07b0127b16ab6fe84a702ab1eadf619ed06b833" -> "sha256:ce7297715c4a1981f5b70a0e4ef19d36df6d4fd3d8645cafde6b633d36c97458" [label=""];
  "sha256:ce7297715c4a1981f5b70a0e4ef19d36df6d4fd3d8645cafde6b633d36c97458" -> "sha256:cdce98d89ec5655e78d91aaeacfded2abac904c3be212d8cd234b640dbae727f" [label=""];
  "sha256:cdce98d89ec5655e78d91aaeacfded2abac904c3be212d8cd234b640dbae727f" -> "sha256:87cb9ae0e6e95bd8c71418d80075ed99d4c1fec02a03843a3501b5975b6a6c5e" [label=""];
  "sha256:ab76eee6e4d502ed453124bd44f19efc11237f8077092c233820e5a236e2cb61" -> "sha256:87cb9ae0e6e95bd8c71418d80075ed99d4c1fec02a03843a3501b5975b6a6c5e" [label=""];
  "sha256:87cb9ae0e6e95bd8c71418d80075ed99d4c1fec02a03843a3501b5975b6a6c5e" -> "sha256:7d218a5f8e72510a91da5887a04fd139474603a9dee06e39b520404abddddbb4" [label=""];
  "sha256:ab76eee6e4d502ed453124bd44f19efc11237f8077092c233820e5a236e2cb61" -> "sha256:7d218a5f8e72510a91da5887a04fd139474603a9dee06e39b520404abddddbb4" [label=""];
  "sha256:7d218a5f8e72510a91da5887a04fd139474603a9dee06e39b520404abddddbb4" -> "sha256:3d64ce29ca2d519a4d086524513148eb932817e38799011737e1a19411a2a37f" [label=""];
}

