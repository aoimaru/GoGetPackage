[app/sources/189917483.Dockerfile]
digraph {
  "sha256:56bd40041e666d4e73b7d73f47228939a8b9c7c4cb23441e3f1e5619b3dd0241" [label="docker-image://docker.io/library/fedora:21" shape="ellipse"];
  "sha256:2dd9b5e31308bc42958863393bef5f52fb805503505758d4491f1a1844e5400c" [label="/bin/sh -c yum -y install nfs-utils" shape="box"];
  "sha256:eae8681a5fac109c147b5347204ca51450d2339d85b5fdd08ff3147cefdc19ca" [label="/bin/sh -c yum clean all" shape="box"];
  "sha256:4bbbd5fb8e526d67ced4f6223d3334e50cc65c09fb0b54d4b86ecd7fb478b32e" [label="local://context" shape="ellipse"];
  "sha256:9e03d3214beaae8e6d106fa9e191a03ea6bbca0cf6da2c74d97ca28beda74755" [label="copy{src=/run_nfs, dest=/usr/local/bin/run_nfs}" shape="note"];
  "sha256:d262a6fbfa2853d91487a1064f3171216beca8070f597530c681239ee2c7a956" [label="sha256:d262a6fbfa2853d91487a1064f3171216beca8070f597530c681239ee2c7a956" shape="plaintext"];
  "sha256:56bd40041e666d4e73b7d73f47228939a8b9c7c4cb23441e3f1e5619b3dd0241" -> "sha256:2dd9b5e31308bc42958863393bef5f52fb805503505758d4491f1a1844e5400c" [label=""];
  "sha256:2dd9b5e31308bc42958863393bef5f52fb805503505758d4491f1a1844e5400c" -> "sha256:eae8681a5fac109c147b5347204ca51450d2339d85b5fdd08ff3147cefdc19ca" [label=""];
  "sha256:eae8681a5fac109c147b5347204ca51450d2339d85b5fdd08ff3147cefdc19ca" -> "sha256:9e03d3214beaae8e6d106fa9e191a03ea6bbca0cf6da2c74d97ca28beda74755" [label=""];
  "sha256:4bbbd5fb8e526d67ced4f6223d3334e50cc65c09fb0b54d4b86ecd7fb478b32e" -> "sha256:9e03d3214beaae8e6d106fa9e191a03ea6bbca0cf6da2c74d97ca28beda74755" [label=""];
  "sha256:9e03d3214beaae8e6d106fa9e191a03ea6bbca0cf6da2c74d97ca28beda74755" -> "sha256:d262a6fbfa2853d91487a1064f3171216beca8070f597530c681239ee2c7a956" [label=""];
}

