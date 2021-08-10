[app/sources/167007050.Dockerfile]
digraph {
  "sha256:0c4ec03469913070a3936340dd7ac22cb2e1ddae5a075259012acaab1a70dcca" [label="docker-image://docker.io/aldrinleal/godeb-base:latest" shape="ellipse"];
  "sha256:6f2c80e92b9b041fccb6800f90915f8c9e312aa274d60ad97a931823a4a8daa7" [label="/bin/sh -c go get github.com/fsouza/go-dockerclient" shape="box"];
  "sha256:988fdfb4c720a042aaafe871bd17cc001d5fd61151b592da9f8268d176d5022c" [label="/bin/sh -c go get -v github.com/didip/dogestry/dogestry" shape="box"];
  "sha256:47030722bc5131d695db753ba201fdbf2d2d05b5d4b02a0050b0c793e0c44af8" [label="sha256:47030722bc5131d695db753ba201fdbf2d2d05b5d4b02a0050b0c793e0c44af8" shape="plaintext"];
  "sha256:0c4ec03469913070a3936340dd7ac22cb2e1ddae5a075259012acaab1a70dcca" -> "sha256:6f2c80e92b9b041fccb6800f90915f8c9e312aa274d60ad97a931823a4a8daa7" [label=""];
  "sha256:6f2c80e92b9b041fccb6800f90915f8c9e312aa274d60ad97a931823a4a8daa7" -> "sha256:988fdfb4c720a042aaafe871bd17cc001d5fd61151b592da9f8268d176d5022c" [label=""];
  "sha256:988fdfb4c720a042aaafe871bd17cc001d5fd61151b592da9f8268d176d5022c" -> "sha256:47030722bc5131d695db753ba201fdbf2d2d05b5d4b02a0050b0c793e0c44af8" [label=""];
}

