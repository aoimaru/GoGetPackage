[app/sources/248002243.Dockerfile]
digraph {
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" [label="docker-image://docker.io/library/python:2.7" shape="ellipse"];
  "sha256:c5255a75f8b3e4692dad478a926de396542f85d85f32e6ce1ccb0dba845857d8" [label="https://github.com/sqlmapproject/sqlmap/archive/1.1.2.tar.gz" shape="ellipse"];
  "sha256:8339b5ed6bb6d34901b3f9bd3f3a3a102f951b2a551f019c976c8ddcc4887119" [label="copy{src=/1.1.2.tar.gz, dest=/opt/sqlmap.tar.gz}" shape="note"];
  "sha256:3656d6567e146988305e9b1eca280a9bbf49138a7530d061959ba57883114e06" [label="/bin/sh -c tar xzvf /opt/sqlmap.tar.gz -C /opt" shape="box"];
  "sha256:5001271160936cbbec51035cc10db77f362ba434603ac264fe4642ba1d7bf7d2" [label="mkdir{path=/opt/sqlmap-1.1.2}" shape="note"];
  "sha256:a40aa6a0388617f0f3b7bf247937b98371ad1bfaae4692c357a67a665757a4cf" [label="sha256:a40aa6a0388617f0f3b7bf247937b98371ad1bfaae4692c357a67a665757a4cf" shape="plaintext"];
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" -> "sha256:8339b5ed6bb6d34901b3f9bd3f3a3a102f951b2a551f019c976c8ddcc4887119" [label=""];
  "sha256:c5255a75f8b3e4692dad478a926de396542f85d85f32e6ce1ccb0dba845857d8" -> "sha256:8339b5ed6bb6d34901b3f9bd3f3a3a102f951b2a551f019c976c8ddcc4887119" [label=""];
  "sha256:8339b5ed6bb6d34901b3f9bd3f3a3a102f951b2a551f019c976c8ddcc4887119" -> "sha256:3656d6567e146988305e9b1eca280a9bbf49138a7530d061959ba57883114e06" [label=""];
  "sha256:3656d6567e146988305e9b1eca280a9bbf49138a7530d061959ba57883114e06" -> "sha256:5001271160936cbbec51035cc10db77f362ba434603ac264fe4642ba1d7bf7d2" [label=""];
  "sha256:5001271160936cbbec51035cc10db77f362ba434603ac264fe4642ba1d7bf7d2" -> "sha256:a40aa6a0388617f0f3b7bf247937b98371ad1bfaae4692c357a67a665757a4cf" [label=""];
}

