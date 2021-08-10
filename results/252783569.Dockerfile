[app/sources/252783569.Dockerfile]
digraph {
  "sha256:8dc2f22efb7350f8eb8f8c40ea5e274b5a1d390c8f6301e7f21313383ab9cad5" [label="docker-image://docker.io/tensorflow/tensorflow:1.6.0" shape="ellipse"];
  "sha256:d77357177f68f56415d79a8bb240391f86ec91912c8f62184b44ad5858f41180" [label="/bin/sh -c apt-get update && apt-get install -y python-tk protobuf-compiler python-lxml git&& pip install Cython && pip install git+https://github.com/crowdai/coco.git#subdirectory=PythonAPI" shape="box"];
  "sha256:98724fc11d330ba382ca592dfae5a5cdd6f747629bf3f528d261b4cf8be78a8f" [label="local://context" shape="ellipse"];
  "sha256:55eb3a2689ea3b7de9c4d50b99c3d1f8ae3ea36fd1067675c7b8db1b047707d8" [label="copy{src=/, dest=/tensorflow/models}" shape="note"];
  "sha256:1cbd279f9dc1a453c7bf6e0fe8a4c413c7f12e25dc6d5d5d097842ae86971623" [label="/bin/sh -c cd /tensorflow/models && protoc object_detection/protos/*.proto --python_out=. && python setup.py sdist && (cd slim && python setup.py sdist)" shape="box"];
  "sha256:d601cf44726bd3cd854523953e5d33bcbaef6d96f63dde5999f61b49871180d9" [label="sha256:d601cf44726bd3cd854523953e5d33bcbaef6d96f63dde5999f61b49871180d9" shape="plaintext"];
  "sha256:8dc2f22efb7350f8eb8f8c40ea5e274b5a1d390c8f6301e7f21313383ab9cad5" -> "sha256:d77357177f68f56415d79a8bb240391f86ec91912c8f62184b44ad5858f41180" [label=""];
  "sha256:d77357177f68f56415d79a8bb240391f86ec91912c8f62184b44ad5858f41180" -> "sha256:55eb3a2689ea3b7de9c4d50b99c3d1f8ae3ea36fd1067675c7b8db1b047707d8" [label=""];
  "sha256:98724fc11d330ba382ca592dfae5a5cdd6f747629bf3f528d261b4cf8be78a8f" -> "sha256:55eb3a2689ea3b7de9c4d50b99c3d1f8ae3ea36fd1067675c7b8db1b047707d8" [label=""];
  "sha256:55eb3a2689ea3b7de9c4d50b99c3d1f8ae3ea36fd1067675c7b8db1b047707d8" -> "sha256:1cbd279f9dc1a453c7bf6e0fe8a4c413c7f12e25dc6d5d5d097842ae86971623" [label=""];
  "sha256:1cbd279f9dc1a453c7bf6e0fe8a4c413c7f12e25dc6d5d5d097842ae86971623" -> "sha256:d601cf44726bd3cd854523953e5d33bcbaef6d96f63dde5999f61b49871180d9" [label=""];
}

