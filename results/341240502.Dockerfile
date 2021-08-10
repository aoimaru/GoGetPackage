[app/sources/341240502.Dockerfile]
digraph {
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" [label="docker-image://docker.io/library/python:2.7" shape="ellipse"];
  "sha256:a4df6a7434074757f8396aa8849858f2a36d8c5e58c86ab231f91a1205154ccb" [label="/bin/sh -c pip install jupyter" shape="box"];
  "sha256:fe62ddfeec23bf54775cdc04a9e30e6ce7f93b1efa8ae91c8c873abe78f8b3ac" [label="local://context" shape="ellipse"];
  "sha256:3e9f526d8105362dc3ce0934492b73f40e9c7dee31f2981297e4dac8a9b6766c" [label="copy{src=/jupyter_notebook_config.py, dest=/root/.jupyter/jupyter_notebook_config.py}" shape="note"];
  "sha256:57c594798eb667a0eabc4c51265de405168ad2cf13f7cf20cb592fea4da32985" [label="/bin/sh -c mkdir -p /opt/notebooks" shape="box"];
  "sha256:6ce08b62d48200b967a193b8ba18fabb63ea1a11f6dec24c687529fd600977b3" [label="sha256:6ce08b62d48200b967a193b8ba18fabb63ea1a11f6dec24c687529fd600977b3" shape="plaintext"];
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" -> "sha256:a4df6a7434074757f8396aa8849858f2a36d8c5e58c86ab231f91a1205154ccb" [label=""];
  "sha256:a4df6a7434074757f8396aa8849858f2a36d8c5e58c86ab231f91a1205154ccb" -> "sha256:3e9f526d8105362dc3ce0934492b73f40e9c7dee31f2981297e4dac8a9b6766c" [label=""];
  "sha256:fe62ddfeec23bf54775cdc04a9e30e6ce7f93b1efa8ae91c8c873abe78f8b3ac" -> "sha256:3e9f526d8105362dc3ce0934492b73f40e9c7dee31f2981297e4dac8a9b6766c" [label=""];
  "sha256:3e9f526d8105362dc3ce0934492b73f40e9c7dee31f2981297e4dac8a9b6766c" -> "sha256:57c594798eb667a0eabc4c51265de405168ad2cf13f7cf20cb592fea4da32985" [label=""];
  "sha256:57c594798eb667a0eabc4c51265de405168ad2cf13f7cf20cb592fea4da32985" -> "sha256:6ce08b62d48200b967a193b8ba18fabb63ea1a11f6dec24c687529fd600977b3" [label=""];
}

