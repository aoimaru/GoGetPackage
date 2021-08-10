[app/sources/444037911.Dockerfile]
digraph {
  "sha256:d1a6123fcd53665b5d5907d457138d252b04072dce5ddb398ce053b34a7cc614" [label="docker-image://docker.io/library/centos:centos6" shape="ellipse"];
  "sha256:4d41856cf39caa779f6773d650101a98fba721b3be28f01574a3b21f978a6ef6" [label="/bin/sh -c yum install -y python-2.6.6 python-setuptools" shape="box"];
  "sha256:a024977ea287ad15e242d2e07c41fe86c85decb30bc38217f2a594f1112ce5ae" [label="/bin/sh -c easy_install pip" shape="box"];
  "sha256:f5a731f7e911bf03d51ebca555b1d2a0486871e927d3f1cc2772476ed5410520" [label="local://context" shape="ellipse"];
  "sha256:3a35ac418e1218176b65e98f01d764dea8d5ea5417e15cf31517c3c2257134c1" [label="copy{src=/requirements.txt, dest=/requirements.txt}" shape="note"];
  "sha256:d68c1451c290113d02c22028f12b5d02c234c2c161da98df791c42ee60b389c3" [label="/bin/sh -c pip2.6 install -r /requirements.txt" shape="box"];
  "sha256:83fca340a58ec2f86e106dc81e3bc2551a970c33419ebd7e44196efd0e83a287" [label="sha256:83fca340a58ec2f86e106dc81e3bc2551a970c33419ebd7e44196efd0e83a287" shape="plaintext"];
  "sha256:d1a6123fcd53665b5d5907d457138d252b04072dce5ddb398ce053b34a7cc614" -> "sha256:4d41856cf39caa779f6773d650101a98fba721b3be28f01574a3b21f978a6ef6" [label=""];
  "sha256:4d41856cf39caa779f6773d650101a98fba721b3be28f01574a3b21f978a6ef6" -> "sha256:a024977ea287ad15e242d2e07c41fe86c85decb30bc38217f2a594f1112ce5ae" [label=""];
  "sha256:a024977ea287ad15e242d2e07c41fe86c85decb30bc38217f2a594f1112ce5ae" -> "sha256:3a35ac418e1218176b65e98f01d764dea8d5ea5417e15cf31517c3c2257134c1" [label=""];
  "sha256:f5a731f7e911bf03d51ebca555b1d2a0486871e927d3f1cc2772476ed5410520" -> "sha256:3a35ac418e1218176b65e98f01d764dea8d5ea5417e15cf31517c3c2257134c1" [label=""];
  "sha256:3a35ac418e1218176b65e98f01d764dea8d5ea5417e15cf31517c3c2257134c1" -> "sha256:d68c1451c290113d02c22028f12b5d02c234c2c161da98df791c42ee60b389c3" [label=""];
  "sha256:d68c1451c290113d02c22028f12b5d02c234c2c161da98df791c42ee60b389c3" -> "sha256:83fca340a58ec2f86e106dc81e3bc2551a970c33419ebd7e44196efd0e83a287" [label=""];
}

