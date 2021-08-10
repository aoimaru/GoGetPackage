[app/sources/331019184.Dockerfile]
digraph {
  "sha256:33194b56d1e1dcac371e861ae687cdd1171033315fca1d4b37753ba031515b60" [label="docker-image://docker.io/w251/keras:dev-tx2-4.2_b158-py3" shape="ellipse"];
  "sha256:771cd991e782f250052ba471e603238e067756a291149049763abe9b69355ec7" [label="/bin/sh -c mkdir -p notebooks" shape="box"];
  "sha256:6ef006f6159f86cb759b9727311875c9a82be79e1b7df09789ee0b7672d69314" [label="mkdir{path=/notebooks}" shape="note"];
  "sha256:6db12caea9f5dfb201820c734039250b2383399a03711e5867035635af2f3104" [label="/bin/sh -c wget https://s3-eu-west-1.amazonaws.com/darraghdog1/train.csv.zip" shape="box"];
  "sha256:01050ac876bc1e20d6c2aae38da291e2d1424c7ef4af833efb60ec6940181f48" [label="/bin/sh -c wget https://raw.githubusercontent.com/MIDS-scaling-up/v2/darragh_hw04/week04/hw/w251_homework04.ipynb" shape="box"];
  "sha256:1b16430fb5ba8ad5073c4687c4052f8c4cbc193b536cce3173c2a467ece41974" [label="sha256:1b16430fb5ba8ad5073c4687c4052f8c4cbc193b536cce3173c2a467ece41974" shape="plaintext"];
  "sha256:33194b56d1e1dcac371e861ae687cdd1171033315fca1d4b37753ba031515b60" -> "sha256:771cd991e782f250052ba471e603238e067756a291149049763abe9b69355ec7" [label=""];
  "sha256:771cd991e782f250052ba471e603238e067756a291149049763abe9b69355ec7" -> "sha256:6ef006f6159f86cb759b9727311875c9a82be79e1b7df09789ee0b7672d69314" [label=""];
  "sha256:6ef006f6159f86cb759b9727311875c9a82be79e1b7df09789ee0b7672d69314" -> "sha256:6db12caea9f5dfb201820c734039250b2383399a03711e5867035635af2f3104" [label=""];
  "sha256:6db12caea9f5dfb201820c734039250b2383399a03711e5867035635af2f3104" -> "sha256:01050ac876bc1e20d6c2aae38da291e2d1424c7ef4af833efb60ec6940181f48" [label=""];
  "sha256:01050ac876bc1e20d6c2aae38da291e2d1424c7ef4af833efb60ec6940181f48" -> "sha256:1b16430fb5ba8ad5073c4687c4052f8c4cbc193b536cce3173c2a467ece41974" [label=""];
}

