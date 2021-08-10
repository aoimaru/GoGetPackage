[app/sources/239295385.Dockerfile]
digraph {
  "sha256:44456f46a54408bf7086aeaf39dbe43e061fa42c4ef0652ed974ea9ab84d7f34" [label="docker-image://docker.io/bamos/ubuntu-opencv-dlib-torch:ubuntu_14.04-opencv_2.4.11-dlib_19.0-torch_2016.07.12" shape="ellipse"];
  "sha256:e34cb52d413aed41c877103165d18fe3a86ec0fbcedb16f4d3afb0f0012363a2" [label="/bin/sh -c ln -s /root/torch/install/bin/* /usr/local/bin" shape="box"];
  "sha256:418bd62f5776060004601a754152997701b9b201645371c2642639f018f76324" [label="/bin/sh -c apt-get update && apt-get install -y     curl     git     graphicsmagick     python-dev     python-pip     python-numpy     python-nose     python-scipy     python-pandas     python-protobuf    wget     zip     && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:0aa5e829290f8410cc8bbae96adad228d62d7858d33cdff61c83eadb262b65c8" [label="local://context" shape="ellipse"];
  "sha256:e8a2a089caeb0ea6b8e7cdce9c2c974aa25d68a17b9e7242d3c360c2cbcce0f8" [label="copy{src=/, dest=/root/openface}" shape="note"];
  "sha256:7ca5880a87d981b9d6da08701a0ccc7e807f9b6d232b250219a098f47cad675a" [label="/bin/sh -c cd ~/openface &&     ./models/get-models.sh &&     pip2 install -r requirements.txt &&     python2 setup.py install &&     pip2 install -r demos/web/requirements.txt &&     pip2 install -r training/requirements.txt" shape="box"];
  "sha256:49f66b11611bacff93b0c5a8d9f09b2add22acabaffa77a33bd669dd8fb8a9dd" [label="sha256:49f66b11611bacff93b0c5a8d9f09b2add22acabaffa77a33bd669dd8fb8a9dd" shape="plaintext"];
  "sha256:44456f46a54408bf7086aeaf39dbe43e061fa42c4ef0652ed974ea9ab84d7f34" -> "sha256:e34cb52d413aed41c877103165d18fe3a86ec0fbcedb16f4d3afb0f0012363a2" [label=""];
  "sha256:e34cb52d413aed41c877103165d18fe3a86ec0fbcedb16f4d3afb0f0012363a2" -> "sha256:418bd62f5776060004601a754152997701b9b201645371c2642639f018f76324" [label=""];
  "sha256:418bd62f5776060004601a754152997701b9b201645371c2642639f018f76324" -> "sha256:e8a2a089caeb0ea6b8e7cdce9c2c974aa25d68a17b9e7242d3c360c2cbcce0f8" [label=""];
  "sha256:0aa5e829290f8410cc8bbae96adad228d62d7858d33cdff61c83eadb262b65c8" -> "sha256:e8a2a089caeb0ea6b8e7cdce9c2c974aa25d68a17b9e7242d3c360c2cbcce0f8" [label=""];
  "sha256:e8a2a089caeb0ea6b8e7cdce9c2c974aa25d68a17b9e7242d3c360c2cbcce0f8" -> "sha256:7ca5880a87d981b9d6da08701a0ccc7e807f9b6d232b250219a098f47cad675a" [label=""];
  "sha256:7ca5880a87d981b9d6da08701a0ccc7e807f9b6d232b250219a098f47cad675a" -> "sha256:49f66b11611bacff93b0c5a8d9f09b2add22acabaffa77a33bd669dd8fb8a9dd" [label=""];
}

