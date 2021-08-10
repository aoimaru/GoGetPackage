[app/sources/342067070.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:e7b5f40162c9a1340d5ec3cae270c5520836a274c7f7a0094a6ebd96d9a21f82" [label="local://context" shape="ellipse"];
  "sha256:7ad70ba6c8cf3a185a9eb0515f3fa57c4939053fd39988c275e0b05354d47dbe" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:21515f55b397fc2cba49280c8738306a91ca60f8018bae9e86f120bca5a61786" [label="sha256:21515f55b397fc2cba49280c8738306a91ca60f8018bae9e86f120bca5a61786" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:7ad70ba6c8cf3a185a9eb0515f3fa57c4939053fd39988c275e0b05354d47dbe" [label=""];
  "sha256:e7b5f40162c9a1340d5ec3cae270c5520836a274c7f7a0094a6ebd96d9a21f82" -> "sha256:7ad70ba6c8cf3a185a9eb0515f3fa57c4939053fd39988c275e0b05354d47dbe" [label=""];
  "sha256:7ad70ba6c8cf3a185a9eb0515f3fa57c4939053fd39988c275e0b05354d47dbe" -> "sha256:21515f55b397fc2cba49280c8738306a91ca60f8018bae9e86f120bca5a61786" [label=""];
}

