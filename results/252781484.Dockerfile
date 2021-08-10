[app/sources/252781484.Dockerfile]
digraph {
  "sha256:fa835d22392f32b21b5f5a8913129209bdff187022bfe841687e9e833f80de6e" [label="docker-image://docker.io/banno/druid-hadoop-base:latest" shape="ellipse"];
  "sha256:00a89662739c11cebf1f3c4e8bc88b21893e9b4217f1ebdb5b8004e4876f4503" [label="/bin/sh -c /opt/druid/bin/pull-deps.sh '[\"io.druid.extensions:druid-hdfs-storage\"]'" shape="box"];
  "sha256:487b9f083016b82c6ae7fea771eae13c7cf58fef1be71bba5ca596514b2b9108" [label="sha256:487b9f083016b82c6ae7fea771eae13c7cf58fef1be71bba5ca596514b2b9108" shape="plaintext"];
  "sha256:fa835d22392f32b21b5f5a8913129209bdff187022bfe841687e9e833f80de6e" -> "sha256:00a89662739c11cebf1f3c4e8bc88b21893e9b4217f1ebdb5b8004e4876f4503" [label=""];
  "sha256:00a89662739c11cebf1f3c4e8bc88b21893e9b4217f1ebdb5b8004e4876f4503" -> "sha256:487b9f083016b82c6ae7fea771eae13c7cf58fef1be71bba5ca596514b2b9108" [label=""];
}

