[app/sources/270522474.Dockerfile]
digraph {
  "sha256:c025c2da0d4d82d45d5f2a98b1f20c0a4531302b79db8d32af1dd6e94eee8fa3" [label="docker-image://docker.io/library/python:3" shape="ellipse"];
  "sha256:b4aaf5fb18f4e9103ebc29dce7130cc7e89b7110777186cf7cc01d8e44b9fdb9" [label="/bin/sh -c apt-get update && apt-get -y install python-numpy python-scipy libsdl1.2-dev libsdl-gfx1.2-dev libsdl-image1.2-dev cmake swig" shape="box"];
  "sha256:a2f28704529db4e43ea70bce89c42a796019b2e448ce38b9dce441f4864c7577" [label="/bin/sh -c pip install http://download.pytorch.org/whl/cu75/torch-0.1.12.post2-cp36-cp36m-linux_x86_64.whl" shape="box"];
  "sha256:de64c53850368e387e27b01e4aaa51b4278c72f289ab7dbde99736179135687b" [label="/bin/sh -c pip install torchvision" shape="box"];
  "sha256:19dba294876935e8789bd9c57dea1e130c55f632d6c9e39b4486ab275590ab2b" [label="local://context" shape="ellipse"];
  "sha256:c75e9fca124699b456a3f82c1120ba9d6eb488437c94790d3ac660976f154fa1" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:72905ea821a7e09e68b8ef04f0be60e22d94c4331f35c851ea2632f911f8b9c7" [label="mkdir{path=/app}" shape="note"];
  "sha256:853c559ad8d203784ccccc6b340ef17a5e2500a1f828a3595a7645c5baf34682" [label="/bin/sh -c pip install -e ." shape="box"];
  "sha256:ad96e0c9d1441ac40730db62abd56814d7e3c82e91100644eab1f85ff0a61b44" [label="/bin/sh -c pip install -r requirements.examples.txt" shape="box"];
  "sha256:fe2c4693322929a771a75cff139483cba9d9e29da1ea1694a6bb084557b7cc22" [label="sha256:fe2c4693322929a771a75cff139483cba9d9e29da1ea1694a6bb084557b7cc22" shape="plaintext"];
  "sha256:c025c2da0d4d82d45d5f2a98b1f20c0a4531302b79db8d32af1dd6e94eee8fa3" -> "sha256:b4aaf5fb18f4e9103ebc29dce7130cc7e89b7110777186cf7cc01d8e44b9fdb9" [label=""];
  "sha256:b4aaf5fb18f4e9103ebc29dce7130cc7e89b7110777186cf7cc01d8e44b9fdb9" -> "sha256:a2f28704529db4e43ea70bce89c42a796019b2e448ce38b9dce441f4864c7577" [label=""];
  "sha256:a2f28704529db4e43ea70bce89c42a796019b2e448ce38b9dce441f4864c7577" -> "sha256:de64c53850368e387e27b01e4aaa51b4278c72f289ab7dbde99736179135687b" [label=""];
  "sha256:de64c53850368e387e27b01e4aaa51b4278c72f289ab7dbde99736179135687b" -> "sha256:c75e9fca124699b456a3f82c1120ba9d6eb488437c94790d3ac660976f154fa1" [label=""];
  "sha256:19dba294876935e8789bd9c57dea1e130c55f632d6c9e39b4486ab275590ab2b" -> "sha256:c75e9fca124699b456a3f82c1120ba9d6eb488437c94790d3ac660976f154fa1" [label=""];
  "sha256:c75e9fca124699b456a3f82c1120ba9d6eb488437c94790d3ac660976f154fa1" -> "sha256:72905ea821a7e09e68b8ef04f0be60e22d94c4331f35c851ea2632f911f8b9c7" [label=""];
  "sha256:72905ea821a7e09e68b8ef04f0be60e22d94c4331f35c851ea2632f911f8b9c7" -> "sha256:853c559ad8d203784ccccc6b340ef17a5e2500a1f828a3595a7645c5baf34682" [label=""];
  "sha256:853c559ad8d203784ccccc6b340ef17a5e2500a1f828a3595a7645c5baf34682" -> "sha256:ad96e0c9d1441ac40730db62abd56814d7e3c82e91100644eab1f85ff0a61b44" [label=""];
  "sha256:ad96e0c9d1441ac40730db62abd56814d7e3c82e91100644eab1f85ff0a61b44" -> "sha256:fe2c4693322929a771a75cff139483cba9d9e29da1ea1694a6bb084557b7cc22" [label=""];
}

