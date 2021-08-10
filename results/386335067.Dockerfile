[app/sources/386335067.Dockerfile]
digraph {
  "sha256:fce9289873bc06187472daa69e2145194b6f3a18cda236e3db8a98fea0a45c6f" [label="docker-image://docker.io/keeb/blog:latest" shape="ellipse"];
  "sha256:1589e711b90e72c1918c4da698b0ea1b14868b7b5d247e84a2abb4b7c118a79a" [label="local://context" shape="ellipse"];
  "sha256:f7d6bddd3c320489e958f9dbebf36fa73fb98eeeedf919b50b3a6658bd72bdf5" [label="copy{src=/, dest=/website}" shape="note"];
  "sha256:5d7f175040481e110bed55d1285b792c2bea12eb3a8777d128d80d600bd7aed5" [label="/bin/sh -c apt-get install -y python-setuptools" shape="box"];
  "sha256:c7d93458104a03f7bfe25f969b1a5d1a64305d7e7e67d10a011e792632f7d9bc" [label="/bin/sh -c easy_install pip" shape="box"];
  "sha256:c5ba2c53a57541160576a7ad40f5ed91ad34d6bed5a325cd4cb8e6d062b2f38f" [label="/bin/sh -c pip install -r /website/requirements.txt" shape="box"];
  "sha256:4fccfe9c2966f7cdc3e5b05de439862f7c4da3ba599d2df2c605df2a8d505e34" [label="sha256:4fccfe9c2966f7cdc3e5b05de439862f7c4da3ba599d2df2c605df2a8d505e34" shape="plaintext"];
  "sha256:fce9289873bc06187472daa69e2145194b6f3a18cda236e3db8a98fea0a45c6f" -> "sha256:f7d6bddd3c320489e958f9dbebf36fa73fb98eeeedf919b50b3a6658bd72bdf5" [label=""];
  "sha256:1589e711b90e72c1918c4da698b0ea1b14868b7b5d247e84a2abb4b7c118a79a" -> "sha256:f7d6bddd3c320489e958f9dbebf36fa73fb98eeeedf919b50b3a6658bd72bdf5" [label=""];
  "sha256:f7d6bddd3c320489e958f9dbebf36fa73fb98eeeedf919b50b3a6658bd72bdf5" -> "sha256:5d7f175040481e110bed55d1285b792c2bea12eb3a8777d128d80d600bd7aed5" [label=""];
  "sha256:5d7f175040481e110bed55d1285b792c2bea12eb3a8777d128d80d600bd7aed5" -> "sha256:c7d93458104a03f7bfe25f969b1a5d1a64305d7e7e67d10a011e792632f7d9bc" [label=""];
  "sha256:c7d93458104a03f7bfe25f969b1a5d1a64305d7e7e67d10a011e792632f7d9bc" -> "sha256:c5ba2c53a57541160576a7ad40f5ed91ad34d6bed5a325cd4cb8e6d062b2f38f" [label=""];
  "sha256:c5ba2c53a57541160576a7ad40f5ed91ad34d6bed5a325cd4cb8e6d062b2f38f" -> "sha256:4fccfe9c2966f7cdc3e5b05de439862f7c4da3ba599d2df2c605df2a8d505e34" [label=""];
}

