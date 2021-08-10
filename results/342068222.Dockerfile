[app/sources/342068222.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:ca33109508fc7e8b33b09cd22aa1b097731b9f73c7a908815652bb3a91763822" [label="local://context" shape="ellipse"];
  "sha256:6df02c65d76688b4fec0368adf8ba48dff797ccce1e9cfd616efddec8558248d" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:ae1d282701f7ecef515a67a683c22815b49b40a43c6a23980a89986005ff05d1" [label="pip install common" shape="box"];
  "sha256:574cc57a1d0379e6667aa9988705d5882f0667c044e3b299f0b97f72927fd01b" [label="pip install os" shape="box"];
  "sha256:b00925709e99e0d4f9b96f0b57d26e8fc729343f5106d962c23bb7a348804a66" [label="sha256:b00925709e99e0d4f9b96f0b57d26e8fc729343f5106d962c23bb7a348804a66" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:6df02c65d76688b4fec0368adf8ba48dff797ccce1e9cfd616efddec8558248d" [label=""];
  "sha256:ca33109508fc7e8b33b09cd22aa1b097731b9f73c7a908815652bb3a91763822" -> "sha256:6df02c65d76688b4fec0368adf8ba48dff797ccce1e9cfd616efddec8558248d" [label=""];
  "sha256:6df02c65d76688b4fec0368adf8ba48dff797ccce1e9cfd616efddec8558248d" -> "sha256:ae1d282701f7ecef515a67a683c22815b49b40a43c6a23980a89986005ff05d1" [label=""];
  "sha256:ae1d282701f7ecef515a67a683c22815b49b40a43c6a23980a89986005ff05d1" -> "sha256:574cc57a1d0379e6667aa9988705d5882f0667c044e3b299f0b97f72927fd01b" [label=""];
  "sha256:574cc57a1d0379e6667aa9988705d5882f0667c044e3b299f0b97f72927fd01b" -> "sha256:b00925709e99e0d4f9b96f0b57d26e8fc729343f5106d962c23bb7a348804a66" [label=""];
}

