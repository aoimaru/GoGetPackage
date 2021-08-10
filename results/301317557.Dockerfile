[app/sources/301317557.Dockerfile]
digraph {
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" [label="docker-image://docker.io/library/python:2.7" shape="ellipse"];
  "sha256:8491240185a08d1a838cc86ea9783ca6b4d63ab3376669017ae1de697aed2efe" [label="local://context" shape="ellipse"];
  "sha256:f8feda637da35d965bacf6809c5d2a29837ffdb4b3352e7142d0e1d013ea259d" [label="copy{src=/log_file.py, dest=/log_file.py}" shape="note"];
  "sha256:564ad9aa423150e3a149a61100d3ad21f5c57300befca27b81efeff48c1b29d9" [label="sha256:564ad9aa423150e3a149a61100d3ad21f5c57300befca27b81efeff48c1b29d9" shape="plaintext"];
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" -> "sha256:f8feda637da35d965bacf6809c5d2a29837ffdb4b3352e7142d0e1d013ea259d" [label=""];
  "sha256:8491240185a08d1a838cc86ea9783ca6b4d63ab3376669017ae1de697aed2efe" -> "sha256:f8feda637da35d965bacf6809c5d2a29837ffdb4b3352e7142d0e1d013ea259d" [label=""];
  "sha256:f8feda637da35d965bacf6809c5d2a29837ffdb4b3352e7142d0e1d013ea259d" -> "sha256:564ad9aa423150e3a149a61100d3ad21f5c57300befca27b81efeff48c1b29d9" [label=""];
}

