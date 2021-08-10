[app/sources/310298784.Dockerfile]
digraph {
  "sha256:bf80f3ad339bfbe6935383fd4e32cc81b90a0a95720d4c0383bc6f6310983847" [label="docker-image://gcr.io/tensorflow/tensorflow:latest" shape="ellipse"];
  "sha256:b7498e7277b3949ac35a60c7d7a30540cb8900588ddd776849093782cc2926d7" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         libjpeg8-dev         &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:cdb97341d75f7c32db6cfd6e070792d3ebbed987fb6c34f0801ce41dc2c23786" [label="/bin/sh -c pip install scikit-learn pyreadline Pillow" shape="box"];
  "sha256:abc30bf8ad3470ab8d733bb4567174d60a48bd51378e37ac2b4d78e1fac46fe3" [label="/bin/sh -c rm -rf /notebooks/*" shape="box"];
  "sha256:82ffa53e1a8185d04c6c1a71180ee50c01b59f74babe6b97f5f8635bf881eaa7" [label="local://context" shape="ellipse"];
  "sha256:50714d6d6cd501b5e7b947553feaf8c214d689af52b3347e76b5aefa79fc9664" [label="copy{src=/*.ipynb, dest=/notebooks/}" shape="note"];
  "sha256:ddd5278c7f6221e88bd1998854ccafd63e26800c517c34e4adffc9db1f6bb7f5" [label="mkdir{path=/notebooks}" shape="note"];
  "sha256:2e7d04bb97770e207c9aa0a695679e0a2a7e2ebc4c7d1015302e21f4e26b6589" [label="sha256:2e7d04bb97770e207c9aa0a695679e0a2a7e2ebc4c7d1015302e21f4e26b6589" shape="plaintext"];
  "sha256:bf80f3ad339bfbe6935383fd4e32cc81b90a0a95720d4c0383bc6f6310983847" -> "sha256:b7498e7277b3949ac35a60c7d7a30540cb8900588ddd776849093782cc2926d7" [label=""];
  "sha256:b7498e7277b3949ac35a60c7d7a30540cb8900588ddd776849093782cc2926d7" -> "sha256:cdb97341d75f7c32db6cfd6e070792d3ebbed987fb6c34f0801ce41dc2c23786" [label=""];
  "sha256:cdb97341d75f7c32db6cfd6e070792d3ebbed987fb6c34f0801ce41dc2c23786" -> "sha256:abc30bf8ad3470ab8d733bb4567174d60a48bd51378e37ac2b4d78e1fac46fe3" [label=""];
  "sha256:abc30bf8ad3470ab8d733bb4567174d60a48bd51378e37ac2b4d78e1fac46fe3" -> "sha256:50714d6d6cd501b5e7b947553feaf8c214d689af52b3347e76b5aefa79fc9664" [label=""];
  "sha256:82ffa53e1a8185d04c6c1a71180ee50c01b59f74babe6b97f5f8635bf881eaa7" -> "sha256:50714d6d6cd501b5e7b947553feaf8c214d689af52b3347e76b5aefa79fc9664" [label=""];
  "sha256:50714d6d6cd501b5e7b947553feaf8c214d689af52b3347e76b5aefa79fc9664" -> "sha256:ddd5278c7f6221e88bd1998854ccafd63e26800c517c34e4adffc9db1f6bb7f5" [label=""];
  "sha256:ddd5278c7f6221e88bd1998854ccafd63e26800c517c34e4adffc9db1f6bb7f5" -> "sha256:2e7d04bb97770e207c9aa0a695679e0a2a7e2ebc4c7d1015302e21f4e26b6589" [label=""];
}

