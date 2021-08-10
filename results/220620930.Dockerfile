[app/sources/220620930.Dockerfile]
digraph {
  "sha256:547078c45b95acacd8409feedabd2902f7a63812c8c59530b850123717d55e9a" [label="docker-image://docker.io/library/buildpack-deps:wheezy" shape="ellipse"];
  "sha256:97a5a9f1d399c6095f248f89fd6b6f55f7d1d54d9f2f3c823c5b07eb0ecc25df" [label="local://context" shape="ellipse"];
  "sha256:f7e15a2945e9943f74cac024d6656e9341c9b20d33f7f1b5fd0bf677f0480552" [label="copy{src=/ldb, dest=/rocksdb/tools/ldb}" shape="note"];
  "sha256:47b16dcf302be1291884ecac3ec4f8abb4a62bd4e0e0ce90239a35e7845782c8" [label="sha256:47b16dcf302be1291884ecac3ec4f8abb4a62bd4e0e0ce90239a35e7845782c8" shape="plaintext"];
  "sha256:547078c45b95acacd8409feedabd2902f7a63812c8c59530b850123717d55e9a" -> "sha256:f7e15a2945e9943f74cac024d6656e9341c9b20d33f7f1b5fd0bf677f0480552" [label=""];
  "sha256:97a5a9f1d399c6095f248f89fd6b6f55f7d1d54d9f2f3c823c5b07eb0ecc25df" -> "sha256:f7e15a2945e9943f74cac024d6656e9341c9b20d33f7f1b5fd0bf677f0480552" [label=""];
  "sha256:f7e15a2945e9943f74cac024d6656e9341c9b20d33f7f1b5fd0bf677f0480552" -> "sha256:47b16dcf302be1291884ecac3ec4f8abb4a62bd4e0e0ce90239a35e7845782c8" [label=""];
}

